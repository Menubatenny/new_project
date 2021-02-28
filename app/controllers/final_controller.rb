class FinalController < ApplicationController
  def index
    @agents = Agent.all
  end

  def show
    @details = Detail.all
  end
end
