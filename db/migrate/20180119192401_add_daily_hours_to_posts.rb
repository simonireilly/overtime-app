class AddDailyHoursToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :daily_hours, :daily_hours
  end
end
