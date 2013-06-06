package fwhack

class Parent {
    String name
    String address1
    String address2
    int phoneNumber
    String emailAddress
    boolean canWeContactForAbsence = true

    static constraints = {
        name(blank: false)
        phoneNumber(blank: false)
        emailAddress(email: true)
    }
}
