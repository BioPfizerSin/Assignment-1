package iu1.ass.task1;

public class BillingService {
	
	
	//Enhance the class by using getter setter/constructor
	
	
	private PaymentProcessor paymentProcessor;
	
	
	public BillingService(PaymentProcessor paymentProcessor) {
		super();
		this.paymentProcessor = paymentProcessor;
	}

	public boolean completePayment() {
	return paymentProcessor.process();
	
	}
	
	public PaymentProcessor getPaymentProcessor() {
		return paymentProcessor;
	}

	public void setPaymentProcessor(PaymentProcessor paymentProcessor) {
		this.paymentProcessor = paymentProcessor;
	}

}
