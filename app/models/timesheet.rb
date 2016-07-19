class Timesheet < ApplicationRecord
  def outgoing_time
    Duration.new(self.outgoing - Time.new(2000, 1, 1))
  end

  def rest_time
    Duration.new(self.rest - Time.new(2000, 1, 1))
  end

  def binding_time
    # 拘束時間
    binding_sec = self.leave_work - self.at_work
    Duration.new(binding_sec)
  end

  def normal_working_time
    # 時間内労働時間

  end

  def overtime
    # 残業
    Duration.new(self.binding_time - 8.hours)
  end

  def latenight_overtime
    # 深夜残業
  end

  def actual_working_time
    # 実働時間
    Duration.new(binding_time - self.rest_time - self.outgoing_time)
  end
    
end
