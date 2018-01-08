class PostPolicy < ApplicationPolicy
  def update?
    # User of record
    # Admin user
    record.user_id == user.id || admin_types.include?(user.type)
  end
end
