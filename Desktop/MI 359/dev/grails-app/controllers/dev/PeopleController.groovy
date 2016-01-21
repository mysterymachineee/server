package dev

class PeopleController {

    def index() {
        [name: 'Devan']
    }
    def info() {
        [fullname: "Devan Jenkins", gender: "Male", year: "Junior", age: "21", major: "Media and Information"]
    }
}
