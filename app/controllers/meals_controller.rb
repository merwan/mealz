class MealsController < ApplicationController
  before_action :load_recipes, only: [:new, :create]

  def new
    @meal = Meal.new(planning_id: params[:planning_id])
  end

  def create
    @meal = Meal.new(meal_params)

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal.planning, notice: 'Meal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @meal }
      else
        format.html { render action: 'new' }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:happens_at, :planning_id, :recipe_id)
  end

  def load_recipes
    @recipes = Recipe.all.collect { |r| [r.title, r.id] }
  end
end
