class DashboardController < ApplicationController
  def index
    @prev_date = Time.zone.now - 1.day
    @current_date = Time.zone.now
    @next_date = Time.zone.now + 1.day

    @prev_day = Date::DAYNAMES[@prev_date.wday]
    @current_day = Date::DAYNAMES[@current_date.wday]
    @next_day = Date::DAYNAMES[@next_date.wday]

    @pet_name = "Corgi Butt"

    @heart_progress = 80
    @happiness_progress = 65
    @star_progress = 87
  end
end
