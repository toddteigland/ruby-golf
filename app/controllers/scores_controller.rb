  class ScoresController < ApplicationController
    before_action :set_score, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index
      @scores = current_user.scores
    end

    def new
      @score = Score.new
    end

    def create 
      @scores = Score.new(score_params)
      if @scores.save

        redirect_to scores_path
      else 
        render :new
      end
    end

    def show
      @score = Score.find(params[:id])
    end

    def edit
      @score = Score.find(params[:id])
    end

    def update
      respond_to do |format|
        if @score.update(score_params)
          format.html { redirect_to scores_path, notice: "Score was successfully edited"}
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end
    
    def destroy
      @score.destroy!
      respond_to do |format|
        format.html {redirect_to scores_path, notice: "Score was Deleted Successfully."}
      end

    end


    private
    def set_score
      @score = Score.find(params[:id])
    end
    def score_params
      params.require(:score).permit(:course, :date, :tees, :slope, :rating, :score, :user_id)
    end
  end
