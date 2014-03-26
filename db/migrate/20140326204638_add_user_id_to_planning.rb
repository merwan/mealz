class AddUserIdToPlanning < ActiveRecord::Migration
  def change
    add_column :plannings, :user_id, :integer
  end
end
