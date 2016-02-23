package assignment3

import grails.plugin.springsecurity.annotation.Secured

class RecipeController {
    static hasMany = [flavors: String]

    //creates empty list at start of application
    def index() {
        def recipe = Recipe.list()
        [recipe:recipe]

    }

    //creates recipe in index from newRecipeForm
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

    //deletes user when called upon in admin.gsp
    @Secured('ROLE_ADMIN')
    def deleteUser(){
        def p = Assignment3.User.get(params.int('id'));
        p.delete()
        redirect(action:'admin')
    }

    //deletes recipe from id passed in index
    def deleteRecipe(){
        def p = Recipe.get(params.int('id'));
        p.delete()
        redirect(action:"index")
    }

    //creates user for admin only
    @Secured('ROLE_ADMIN')
    def createUser() {
        def userRole = Assignment3.Role.findByAuthority("ROLE_USER")

        def user = new Assignment3.User(params.name, params.password).save()
        Assignment3.UserRole.create user, userRole
        redirect(action:"admin")
    }
}





