class DashboardController < ApplicationController
  def index
    @prev_date = Time.zone.now - 1.day
    @current_date = Time.zone.now
    @next_date = Time.zone.now + 1.day

    @prev_day = Date::DAYNAMES[@prev_date.wday]
    @current_day = Date::DAYNAMES[@current_date.wday]
    @next_day = Date::DAYNAMES[@next_date.wday]
  end
end
