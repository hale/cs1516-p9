require 'spec_helper'

describe RecipesController do

	describe "#new" do
		it "should be successful" do
			get :new
			response.should be_success
		end

		it "should create a recipe object" do
			assigns(:recipe).should_not_be_nil
		end
	end

describe "#create" do
	it "should create a recipe" do
		post :create, "recipe" => {"title"=> "hot drink",
			"description" => "drink for a cold day",
			"instructions" => "pour boiling water over coffee grounds"}
		assigns(:recipe).should_not_be_nil
		assigns(:recipe).title.should=="hot drink"
	end
	
	it "should redirect to the recipe list page" do
		response.should redirect_to_recipes_path
	end
end

describe "#index" do
	it "should be successful" do
		get :index
		response.should_be_success
	end
end

end #end of spec file
