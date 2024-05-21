class Api::V1::ScoresController < ApplicationController
  def index
    scores = Score.all
    render json: scores
  end

  def create
    score = Score.new(score_params)

    if score.save
      render json: score
    else
      render json: { message: 'Validation Error', errors: score.errors }, status: 422
    end
  end

  private

  def score_params
    params.require(:score).permit(:name, :time)
  end
end
