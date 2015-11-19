class TournamentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # load_and_authorize_resource

# JGZ - for each method here that contains @tournament = Tournament.find(params[:id])
# you could set that in your private section at the bottom like so:
# def set_tournament
#     @tournament = Tournament.find(params[:id])
#   end
# Then you can set another befoere action at the top that places that method in
# each method you want below without having to repeat it multiple times

  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.create(tournament_params)
    redirect_to tournament_path(@tournament)
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    @tournament.update(tournament_params)
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
    :tournament_start, :tournament_end, :tournament_type, :max_teams)
  end

  def set_tournament
      @tournament = Tournament.find(params[:id])
    end

end
