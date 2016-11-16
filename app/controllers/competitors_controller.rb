class CompetitorsController < ApplicationController
  def index
  	@competitors = Competitor.all.order(score: :desc).limit(10)
  end

  def create
  	email = params[:competitor][:email]
  	score = params[:competitor][:score].to_i
  	competitor = Competitor.find_by_email(email)

  	if competitor
  		competitor.update(competitor_params) if competitor.score < score
  	else
  		Competitor.create(competitor_params)
  	end

  	redirect_to competitors_path
  end

  private 
  	def competitor_params
  		params.require(:competitor).permit(:email, :score)
  	end
end
