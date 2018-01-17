class Employee < User
  def self.model_name
    return super if self == User
    User.model_name
  end
end