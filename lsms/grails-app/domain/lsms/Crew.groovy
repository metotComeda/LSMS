package lsms

class Crew extends PersonInfo{
	
	Job job;
	
	enum Job {
		CLERK, STORE_MANAGER, INVENTORY_MAINTAINER
	}
	
    static constraints = {
		job(blank:false)
    }
	
	static searchable = true
}
