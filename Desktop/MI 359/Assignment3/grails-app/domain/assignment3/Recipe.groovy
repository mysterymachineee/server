package assignment3

class Recipe {
//allows multiple flavours
    static hasMany = [flavors: String]

    static constraints = {
        //error checking for variables
        name blank:false , unique:true
        type blank:false
        link blank:false, url:true
        flavours blank:false
        minutes blank:false , min:0, max:59
        hours blank:false
    }

    //variable types
    String name
    String type
    String link
    String flavours
    Integer minutes
    Integer hours
}
