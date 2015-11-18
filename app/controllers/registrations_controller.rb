class RegistrationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @tournament = Tournament.find(params[:tournament_id])
    @registrations = @tournament.registrations
  end

  def show
    @registration = Registration.find(params[:id])
  end

  def new
    @registration = Registration.new
    @tournament = Tournament.find(params[:tournament_id])
    @teams = Team.all
  end

  def create

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
