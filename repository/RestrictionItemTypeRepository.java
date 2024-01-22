package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.RestrictionItemTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RestrictionItemTypeRepository extends JpaRepository<RestrictionItemTypeEntity, Integer> {

    List<RestrictionItemTypeEntity> findByExportableIsTrue();
}
