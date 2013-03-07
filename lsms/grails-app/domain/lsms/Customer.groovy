package lsms

class Customer extends PersonInfo{

	String email;
	CustomPackage customPackage
	Integer quantity
	boolean doneTransaction
	
    static constraints = {
		email(blank:false)
		customPackage(blank:false)
		quantity()
		doneTransaction()
    }
	
	static searchable = true
}
