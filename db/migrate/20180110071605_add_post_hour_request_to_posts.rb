class AddPostHourRequestToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :daily_hours, :decimal, default: 0.0
  end
end
