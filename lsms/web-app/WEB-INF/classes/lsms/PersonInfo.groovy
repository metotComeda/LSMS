package lsms

class PersonInfo {

	String personId;
	String lastName;
	String firstName;
	String address;
	String contactNum;
	
	static belongsTo = [Crew, Customer]

    static constraints = {
		personId(blank:false,unique:true)
		lastName(blank:false)
		firstName(blank:false)
		address(blank:false)
		contactNum(blank:false)
    }
	
	static searchable = true
	
	String toString(){
	"${personId}"
	}
}
