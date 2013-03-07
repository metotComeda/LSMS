package lsms

class CustomPackage{

	Resources resources
	Integer customQuantity
	String packageName
	Double price

    static constraints = {
		packageName(blank:false)
		price()
    }
}
