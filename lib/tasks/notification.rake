namespace :notification do
  desc 'Sends sms notification to employees asking them to log if they had overtime or not'
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log in to the overtime management dashboard to
request or confirm overtime for last week application-overtime.herokuapp.com"
      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

  desc 'Sends email notification to manager (admin users) each day, to inform of pending overtime requests'
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
