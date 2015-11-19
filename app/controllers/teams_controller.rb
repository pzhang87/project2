class TeamsController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

# JGZ - See tournament controller for comments re: @team = Team.find(params[:id])

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    authorize! :read, @team
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    redirect_to team_path(@team)
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  private
  def team_params
    params.require(:team).permit(:team_name,
    :team_description, :team_logo)
  end
end
