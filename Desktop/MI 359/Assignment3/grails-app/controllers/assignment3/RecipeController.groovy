package assignment3

import grails.plugin.springsecurity.annotation.Secured

class RecipeController {
    static hasMany = [flavors: String]

    def index() {
        def recipe = Recipe.list()
        [recipe:recipe]

    }
    def createRecipe() {

        def recipe = new Recipe(params);
        if (recipe.save()) {
            redirect(action: "index")
        }
        else{
            render(view:"newRecipeForm",model:[recipe:recipe])
        }
    }

    def newRecipeForm (){

    }

    def deleteRecipe(){
        def p = Recipe.get(params.int('id'));
        p.delete()
        redirect(action:"index")
    }
}





