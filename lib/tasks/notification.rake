namespace :notification do
  desc 'Sends sms notification to employees asking them to log if they had overtime or not'
  task sms: :environment do
    if Time.now.sunday?

    end
    # 1. Schedule to run Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip admin users
    # 4. Send a link that has instructions, and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
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
