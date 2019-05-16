package com.billing.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.billing.model.BillingModelEntity;

@Repository
public interface BillingRepository extends JpaRepository<BillingModelEntity, String> {

}
