package lab4

class PersonController {

    def index() {
        def people = Person.list()
        [people:people]

    }
    def newPersonForm(){}

    def createPerson () {
        def p = new Person(params);
        p.save();
        redirect(action:"index")
    }
}
