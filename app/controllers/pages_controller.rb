class PagesController < ApplicationController
  def game
  	@competitor = Competitor.new
  end
end
