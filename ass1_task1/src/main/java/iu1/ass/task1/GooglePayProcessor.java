package iu1.ass.task1;

public class GooglePayProcessor implements PaymentProcessor{
	
	public boolean process() {
		// process payment
		
		System.out.println("Yep. This is GooglePay Payment");
		return true;
		
		}

}
