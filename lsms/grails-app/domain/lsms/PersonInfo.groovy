package lsms

class PersonInfo {

	String lastName;
	String firstName;
	String address;
	String contactNum;
	Date date;
	

    static constraints = {
		lastName(blank:false)
		firstName(blank:false)
		address(blank:false)
		contactNum(blank:false)
		date(blank:false)
    }
	
	static searchable = true
}
