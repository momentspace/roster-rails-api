class CreateTimesheets < ActiveRecord::Migration[5.0]
  def change
    create_table :timesheets do |t|
      t.integer :roster_id
      t.time :at_work
      t.time :leave_work
      t.time :outgoing
      t.integer :atwork_kind
      t.integer :work_kind
      t.time :rest_time

      t.timestamps
    end
  end
end
