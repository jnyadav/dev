package com.seveneleven.rishost.ageverification.service;

import com.seveneleven.rishost.ageverification.entity.RestrictionItemTypeEntity;

import java.util.List;
import java.util.Optional;

public interface RestrictionItemTypeService {
    List<RestrictionItemTypeEntity> getAllRestrictionItemList();
    Optional<RestrictionItemTypeEntity> getOneRestrictionItemList(int itemId);
}
