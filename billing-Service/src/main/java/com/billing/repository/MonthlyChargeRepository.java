package com.billing.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.billing.entity.MonthlyCharge;

@Repository
public interface MonthlyChargeRepository extends PagingAndSortingRepository<MonthlyCharge, Long> {

}
