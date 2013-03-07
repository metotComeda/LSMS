package lsms

class Sales {

	static hasMany = [customer:Customer]

    static constraints = {
    }
	
	double getDaily() {
		double result = 0;
		customer.each()
		result = it.customer.quantity * it.customPackage.price
	}
	
	double getWeekly() {
		double result = 0;
		customer.each()
		result = it.customer.quantity * it.customPackage.price * 7
	}
	
	double getMonthly() {
		double result = 0;
		customer.each()
		result = it.customer.quantity * it.customPackage.price * 30
	}
}