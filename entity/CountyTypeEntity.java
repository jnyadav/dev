package com.seveneleven.rishost.ageverification.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "county_type")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CountyTypeEntity {

    @Id
    @Column(name = "county_id")
    private int countyId;

    @Column(name = "county_name")
    private String countyName;

    @ManyToOne
    @JoinColumn(name= "state_id")
    private StateTypeEntity stateTypeEntity;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="county_Id")
    private List<CityTypeEntity> cityTypeEntityList;
}
