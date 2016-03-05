package assignment3

class Recipe {
//allows multiple flavours

    static hasMany = {
        [flavors: String]
        [ingredients: Ingredients]
    }

    static constraints = {
        //error checking for variables
        name blank:false , unique:true
        type blank:false
        link blank:false, url:true
        flavours blank:false
        minutes blank:false , min:0, max:59
        hours blank:false
        ingredients nullable: true
        instructions nullable: true
    }

    //variable types
    String name
    String type
    String link
    String flavours
    String instructions
    Ingredients ingredients
    Integer minutes
    Integer hours


}
