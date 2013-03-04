package lsms

class Customer extends PersonInfo{

	String email;
	Date date;
	CustomPackage customPackage;
	
	static hasMany = [customPackage:CustomPackage]
	
    static constraints = {
		email(blank:false)
		date(blank:false)
		customPackage(blank:false)
    }
	
	static searchable = true
	
	String toString(){
	"${info}"
	}
}
