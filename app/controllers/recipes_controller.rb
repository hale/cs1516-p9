class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(params[:recipe])
		if @recipe.save
			redirect_to recipes_path
		end
	end
end
