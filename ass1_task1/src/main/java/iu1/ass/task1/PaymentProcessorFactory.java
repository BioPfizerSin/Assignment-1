package iu1.ass.task1;

public class PaymentProcessorFactory {
	
	private final GooglePayProcessor gpayProcessor = new GooglePayProcessor();
	private final CreditCardProcessor cardProcessor = new CreditCardProcessor ();
	
	public PaymentProcessor getPaymentProcessor(String mode) {
		
		if ("gpay".equalsIgnoreCase(mode)) {
			
		return gpayProcessor;
		
		} else if ("credit_card".equalsIgnoreCase(mode)) {
			
		return cardProcessor ;
		
		}
		return null;
	
	}


}
