package iu1.ass.task1;
import org.springframework.context.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class MainProgrm {

	public static void main(String args[]) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		BillingService billing = (BillingService)context.getBean("billingService");
		billing.completePayment();
		
	}
}
