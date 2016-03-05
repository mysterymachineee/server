package assignment3

class IngrediantController {


    def index() {
        def i = Ingrediants.getAll()
        [i:Ingrediants.list()]
    }

    def create() {
        def i = new Ingrediants([name:params.name])
        params.ingrediant.each {
            i.addToIngrediants(Recipe.get(it as Long))
            redirect(action: "index")
        }
    }

    def newIngrediantForm(){
    }
}
