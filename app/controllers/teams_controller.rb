class TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  def index
    @teams = Team.all
  end

  def show
    @memberships = @team.memberships
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    redirect_to team_path(@team)
  end

  def edit
  end

  def update
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:id]) # NHO: Don't think this line is necessary because of set_team before_action
    @team.destroy
    redirect_to teams_path
  end

  private
  def team_params
    params.require(:team).permit(:team_name,
    :team_description, :team_logo)
  end

  def set_team
    @team = Team.find(params[:id])
  end
end
