class AddDefaultValueToApprovalFromUser < ActiveRecord::Migration
  def change
  	change_column_default(:users, :approval, false)
  end
end
