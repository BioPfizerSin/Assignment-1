package iu1.ass.task1;

public class CreditCardProcessor implements PaymentProcessor{
	
	public boolean process() {
		// process payment
		System.out.println("Yep. This is Credit Card Payment");
		
		return true;
		}

}
