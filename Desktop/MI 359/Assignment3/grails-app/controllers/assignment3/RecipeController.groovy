package assignment3

import grails.plugin.springsecurity.annotation.Secured

class RecipeController {
    static hasMany = [flavors: String]

    //creates empty list at start of application
    def index() {
        def recipe = Recipe.list()
        [recipes:recipe]

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

    def edit (){

    }

    def update (){
        Recipe r = Recipe.get(params.recipeId);

        r.save()

        if (r.hasErrors()) {
            render(view:"edit",model:[recipe:r])
        }
        else {
            redirect(action:"index")
        }
        redirect(action:"index")
    }

    def newRecipeForm (){
        def user = User.list()
        [users:user]
    }

    @Secured('ROLE_ADMIN')
    def admin (){

    }

    //deletes user when called upon in admin
    @Secured('ROLE_ADMIN')
    def deleteUser(){
        def p = User.get(params.int('id'));
        p.delete()
        redirect(action:'admin')
    }

    //deletes recipe from id passed in index
    def deleteRecipe(){
        def user  = User.get(params.int('id'));
        user.delete()
        redirect(action:"index")
    }

    //creates user for admin only
    @Secured('ROLE_ADMIN')
    def createUser() {
        def userRole = Role.findByAuthority("ROLE_USER")
        def user = new User(params.name, params.password).save()
        UserRole.create user, userRole
        redirect(action:"admin")
    }
}





