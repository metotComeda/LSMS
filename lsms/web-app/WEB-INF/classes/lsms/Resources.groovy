package lsms

class Resources {
	
	String Detergent;
	String FabCon;
	int DetergentCount;
	int FabConCount;
	
	static belongsTo = [Inventory]
	
    static constraints = {
		detergent(blank:false)
		detergentCount(blank:false)
		fabCon(blank:false)
		fabConCount(blank:false)
    }
}
