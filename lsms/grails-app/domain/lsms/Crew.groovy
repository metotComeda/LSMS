package lsms

class Crew extends PersonInfo{

	Date date;
	Job job;
	
	enum Job {
		CLERK, STORE_MANAGER, INVENTORY_MAINTAINER
	}
	
    static constraints = {
		job(blank:false)
		date(blank:false)
    }
	
	static searchable = true
	
	String toString(){
	"${info}"
	}
}
