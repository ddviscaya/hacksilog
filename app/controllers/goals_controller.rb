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
    start_date = params[:start_date].to_date
    end_date = params[:end_date].to_date
    if end_date < start_date
      flash[:error] = "Please check the dates"
      @categories = Category.all.order(:name)
      @goal = Goal.new
      redirect_to new_goal_path
    else
      @goal = Goal.create(goal_params)
      days = (end_date - start_date).to_i
      days.times do |day|
        DailyTask.create(
          name: params[:task],
          goal_id: @goal.id,
          user_id: @goal.user_id,
          start_date: start_date + day
        )
      end
      flash[:notice] = "Congratulations, Beautiful! You're now one step closer to achieving your goals."
      redirect_to goals_path
    end
  end

  private

  def goal_params
    par = params.permit(:name, :category_id, :user_id, :start_date, :end_date)
    par.merge({ "user_id" => User.last.id })
  end
end
