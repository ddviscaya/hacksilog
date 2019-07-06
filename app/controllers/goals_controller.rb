class GoalsController < ApplicationController
  protect_from_forgery
  def index
    @prev_date = Time.zone.now - 1.day
    @current_date = Time.zone.now
    @next_date = Time.zone.now + 1.day

    @prev_day = Date::DAYNAMES[@prev_date.wday]
    @current_day = Date::DAYNAMES[@current_date.wday]
    @next_day = Date::DAYNAMES[@next_date.wday]
    @goals = User.last.goals
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @prev_date = Time.zone.now - 1.day
    @current_date = Time.zone.now
    @next_date = Time.zone.now + 1.day

    @prev_day = Date::DAYNAMES[@prev_date.wday]
    @current_day = Date::DAYNAMES[@current_date.wday]
    @next_day = Date::DAYNAMES[@next_date.wday]
    @categories = Category.all.order(:name)
    @goal = Goal.new
  end

  def create
    binding.pry
    @goal = Goal.create(goal_params)
    redirect_to goals_path
  end

  private

  def goal_params
    par = params.permit(:name, :category_id, :user_id, :start_date, :end_date, :done)
    par.merge({ "user_id" => User.last.id })
  end
end
