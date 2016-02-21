package assignment3

class Recipe {

    static hasMany = [flavors: String]

    static constraints = {
        name blank:false , unique:true
        type blank:false
        link blank:false, url:true
        flavours blank:false
        minutes blank:false , min:0, max:59
        hours blank:false
    }

    String name
    String type
    String link
    String flavours
    Integer minutes
    Integer hours
}
