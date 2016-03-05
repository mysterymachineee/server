package assignment3

class IngredientController {


    def index() {
        def ingredient = Ingredients.getAll()
        [ingredients: ingredient]
    }

    def create() {
        def i = new Ingredients([name:params.name])
        params.ingredient.each {
            i.addToIngredients(Recipe.get(it as Long))
            if (i.save()){redirect(action: "index")
            }
            else{
                render(view:"create",model:[ingredients:i])
            }
        }
    }

    def newIngredientForm(){
    }
}
