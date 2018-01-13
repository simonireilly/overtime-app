@user = User.create!(email: 'user@test.com',
                    password: 'asdfasdf',
                    password_confirmation: 'asdfasdf',
                    first_name: 'John',
                    last_name: 'Snow',
                    phone: '07522285748')

puts '-- One user created'

AdminUser.create!(email: 'admin@test.com',
                 password: 'asdfasdf',
                 password_confirmation: 'asdfasdf',
                 first_name: 'Admin',
                 last_name: 'Name',
                 phone: '07522285748')

puts '-- One admin_user created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @user.id, overtime_request: 2.5 )
end
puts '-- 100 posts have been created'

[6,13,20].each do |number_of|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today() - number_of.days))
end
puts '-- 3  have been created'
