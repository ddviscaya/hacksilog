class HomeController < ApplicationController

  def index
  	"hello"
  end

  def interests
    respond_to do |format|
      format.html { render :interests }
    end
  end

  def social
    respond_to do |format|
      format.html { render :social }
    end
  end
end