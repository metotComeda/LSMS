package lsms

class CustomPackage{

	Integer customQuantity
	String packageName
	Double price
	
	static hasMany = [resources:Resources]

    static constraints = {
		packageName(blank:false)
		customQuantity(blank:false)
		price()
    }
	
	static searchable = true
	
	String toString(){
		"${packageName}"
	}
}
