package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.CountryTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryTypeRepository extends JpaRepository<CountryTypeEntity, Integer> {
}
