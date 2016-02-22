import Assignment3.User
import Assignment3.Role
import Assignment3.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Assignment3.Role('ROLE_ADMIN').save()
        def userRole = new Assignment3.Role('ROLE_USER').save()



        def admin = new Assignment3.User('admin', '1').save()
        Assignment3.UserRole.create admin, adminRole

        def user = new Assignment3.User('user','1').save()
        Assignment3.UserRole.create user, userRole


        Assignment3.UserRole.withSession {
            it.flush()
            it.clear()
        }

        assert Assignment3.User.count() == 2
        assert Assignment3.Role.count() == 2
        assert Assignment3.UserRole.count() == 2
    }
    def destroy = {
    }
}
