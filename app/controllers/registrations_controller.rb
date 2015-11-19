class RegistrationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @tournament = Tournament.find(params[:tournament_id])
    @registrations = @tournament.registrations
  end

  # def show
  #   @registration = Registration.find(params[:id])
  # end

  def new
    @registration = Registration.new
    @tournament = Tournament.find(params[:tournament_id])
    @teams = Team.all
  end

  def create
    @tournament = Tournament.find(params[:tournament_id])
    @tournament.registrations.create(registration_params)
    redirect_to tournament_registrations_path(@tournament)
  end

  # def edit
  #   @team = Team.find(params[:id])
  # end

  # def update
  #   @team = Team.find(params[:id])
  #   @team.update(team_params)
  #   redirect_to team_path(@team)
  # end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to tournament_registrations_path
  end

  private
  def registration_params
    params.require(:registration).permit(:team_id,
    :tournament_id)
  end
end
