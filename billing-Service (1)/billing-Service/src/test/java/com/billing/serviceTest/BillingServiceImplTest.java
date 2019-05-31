package com.billing.serviceTest;



import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import com.apartment.user.entity.UserEntity;
import com.apartment.user.model.User;
import com.billing.BillingServiceApplicationTests;
import com.billing.entity.AppartmentBilling;
import com.billing.entity.MonthlyCharge;
import com.billing.model.BillingPojo;
import com.billing.repository.AppartmentBillingRepository;
import com.billing.repository.MonthlyChargeRepository;
import com.billing.service.BillingService;
import com.billing.service.BillingServiceImpl;
import com.billing.testUtility.TestHelper;

public class BillingServiceImplTest extends BillingServiceApplicationTests{
	
	@Mock
	AppartmentBillingRepository appartmentBillingRepository;
	
	@Mock 
	MonthlyChargeRepository monthlyChargeRepository;
	
	@InjectMocks
	private BillingServiceImpl billingServiceImpl;
	

	   @Before
	   public void setUp() throws Exception {
	                   MockitoAnnotations.initMocks(this);
	   }
	   
	   @Test
	   public void testMonthlyCharge(){
		   MonthlyCharge monthlyCharge=TestHelper.getBeanObj();
		   BillingService billingServiceImpl1 = Mockito.mock(BillingServiceImpl.class);
		   Mockito.doNothing().when(billingServiceImpl1).addMonthlyCharge(monthlyCharge);
		   billingServiceImpl1.addMonthlyCharge(monthlyCharge);
	   }
	   
	   @Test
		public void testGetAllMonthlyCharges(){
			List<MonthlyCharge> monthlyEntity=TestHelper.getAllMonthlyCharge();
			Mockito.when(monthlyChargeRepository.findAll()).thenReturn(monthlyEntity);
			List<MonthlyCharge> details1=billingServiceImpl.getAllMonthlyCharges();
			assertEquals("02-Feb-2019", details1.get(0).getEffectiveDate());
			
		}
	   /*@Test
	    public void testgenerateBill(){
		   AppartmentBilling appartmentBilling=TestHelper.getAppBilling();
	 		Mockito.when(appartmentBillingRepository.save(Mockito.any(AppartmentBilling.class))).thenReturn(appartmentBilling);
	 		BillingPojo billingPojo=TestHelper.getAppBilling1();
	 		BillingPojo details1=billingServiceImpl.generateBill(billingPojo);
	 		assertEquals("suryacitm@gmail.com", details1.getUserEmail());
	  		
	  	}*/
	   
	   @Test
	   public void generateBill(){
		   BillingPojo billingPojo=new BillingPojo();
		   billingPojo.setApptId(1L);
		   billingPojo.setNoOfUnits(10L);
		   billingPojo.setLastBillGentrnDate("20-Feb-2019");
		   billingPojo.setApptRegistrationDate("02-Jan-2018");
		  
		   billingServiceImpl.generateBill(billingPojo);
		   	   
	   }
	   
	   
	

}
