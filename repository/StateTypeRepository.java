package com.seveneleven.rishost.ageverification.repository;

import com.seveneleven.rishost.ageverification.entity.StateTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface StateTypeRepository extends JpaRepository<StateTypeEntity, Integer> {

    List<StateTypeEntity> findByCountryTypeEntity_CountryId(int countryId);
    
    @Query(value = "select st.state_id, st.state_code, st.state_name, st.country_id from state_type st where st.state_name in :stateNameSet OR st.state_code in :stateCodeSet AND st.country_id =:countryId ", nativeQuery= true)
    List<StateTypeEntity> findStateListByNameOrCode(@Param("stateNameSet") Set<String> stateNameSet, @Param("stateCodeSet") Set<String> stateCodeSet, @Param("countryId")int countryId);

}
