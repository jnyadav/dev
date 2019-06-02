package com.billing.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.billing.entity.MonthlyCharge;

@Repository
public interface MonthlyChargeRepository extends CrudRepository<MonthlyCharge, Long> {

}
