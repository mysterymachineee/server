class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/index"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
