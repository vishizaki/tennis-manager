class MatchesController < ApplicationController

  def new
    @match = Match.new
    @students = User.all.where(is_a_coach: false)
  end

  def create
    opponent = User.find(params[:match][:opponent_id])
    match = Match.new(
      court_id: 1,
      date: match_params
      )
    match.opponent = opponent
    match.current_player = current_user
    if match.save
      redirect_to new_match_path
    else
      render :new
    end
  end

  private

  def match_params
    params.require(:match).permit(params[:date])
  end
end
