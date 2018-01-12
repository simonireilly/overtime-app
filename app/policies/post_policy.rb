class PostPolicy < ApplicationPolicy
  def update?
    return true if post_approved? && admin?
    return true if user_or_admin && !post_approved?
  end

  def approve?
    admin?
  end

  def destroy?
    return false if post_approved? || post_rejected?
    return true if post_submitted
  end

  private

  def user_or_admin
    record.user_id == user.id || admin?
  end

  def admin?
    admin_types.include?(user.type)
  end

  def post_submitted
    record.submitted?
  end

  def post_approved?
    record.approved?
  end

  def post_rejected?
    record.rejected?
  end

end
