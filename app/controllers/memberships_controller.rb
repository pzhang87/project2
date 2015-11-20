class MembershipsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_membership, only: [:show, :destroy]
  def index
    @memberships = Membership.all
  end

  def show
  end

  def new
    @team = Team.find_by(id: params[:team_id])
    @membership = Membership.new
  end

  def create
    @team = Team.find(params[:team_id])
    @membership = @team.memberships.create(membership_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(:team_id)
    @membership.destroy
    redirect_to team_path(@team)
  end

  private
  def membership_params
    params.require(:membership).permit(:team_id,
    :user_id)
  end

  def set_membership
    @membership = Membership.find(params[:id])
  end
end
