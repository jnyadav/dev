package com.seveneleven.rishost.ageverification.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "city_type")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CityTypeEntity {
    @Id
    @Column(name = "city_id")
    private int cityId;

    @Column(name = "city_name")
    private String cityName;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name= "county_id")
    private CountyTypeEntity countyTypeEntity;

    //one to many relationship with CityRestrictionRule
    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "city_id")
    private List<CityRestrictionRuleEntity> cityRestrictionRuleEntities;

}
