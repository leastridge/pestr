class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      redirect_to @team, notice: "Your team has been created."
    else
      flash[:alert] = "Your team was not created."
      render action: "new"
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
