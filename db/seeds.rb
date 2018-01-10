@user = User.create(email: 'user@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
            first_name: 'John', last_name: 'Snow')

puts '-- One user created'

AdminUser.create(email: 'admin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
                    first_name: 'Admin', last_name: 'Name')

puts '-- One admin_user created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5 )
end

puts '-- 100 posts have been created'
