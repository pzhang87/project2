class TournamentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]
  def index
    @tournaments = Tournament.all
  end

  def show

  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.create(tournament_params)
    redirect_to tournament_path(@tournament)
  end

  def edit

  end

  def update
    @tournament.update!(tournament_params)
    redirect_to tournament_path(@tournament)
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    redirect_to tournaments_path
  end

  private
  def tournament_params
    params.require(:tournament).permit(:tournament_name,
    :tournament_start, :tournament_end, :tournament_type, :max_teams,
    :tournament_description, :tournament_banner)
  end

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end
end
