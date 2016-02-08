package assignment3

class RecipeController {
    static hasMany = [flavors: String]

    def index() {
        def recipe = Recipe.list()
        [recipe:recipe]

    }
    def createRecipe() {

        def p = new Recipe(params);
        p.save();
        redirect(action:"index")
    }

    def newRecipeForm (){
        [type : ["Main Course","Dessert","Side Dish"], flavours : ["Salty","Sweet","Sour","Bitter","Umami"]]
    }
}





