Feature: user creates a recipe
	Scenario: User adds a recipe
		Given I go to the new recipe page
		And I fill in "Title" with "hot drink"
		And I fill in "Description" with "drink for cold day"
		And I fill in "Instruction" with "pour boiling water over coffee grounds"
		When I press "Create Recipe"
		Then I should be on the recipes page
		And I should see "hot drink"
