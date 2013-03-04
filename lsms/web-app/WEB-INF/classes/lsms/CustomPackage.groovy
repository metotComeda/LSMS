package lsms

class CustomPackage {

	String packageId;
	Resources resources;
	Double price;
	
	static belongsTo = [Customer]
	static hasMany = [resources:Resources]

    static constraints = {
		packageId(blank:false, unique:true)
		resources(blank:false)
		price(blank:false)
    }
	
	String toString(){
	"${packageId} ${price}"
	}
}
