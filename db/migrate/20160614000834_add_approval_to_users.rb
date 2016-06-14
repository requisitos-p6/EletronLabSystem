class AddApprovalToUsers < ActiveRecord::Migration
  def change
    change_column_default(:users, :approval, false)
  end
end
