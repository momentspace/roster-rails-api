class RenameColumnRestTimeToTimesheets < ActiveRecord::Migration[5.0]
  def change
    rename_column :timesheets, :rest_time, :rest
  end
end
