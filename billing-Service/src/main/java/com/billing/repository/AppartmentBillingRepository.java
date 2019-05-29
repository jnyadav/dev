package com.billing.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.billing.entity.AppartmentBilling;

public interface AppartmentBillingRepository extends CrudRepository<AppartmentBilling, Long> {

	@Query("SELECT ab FROM AppartmentBilling ab WHERE ab.apptId = ?1")
	List<AppartmentBilling> findByApptId(Long apptId);

}
