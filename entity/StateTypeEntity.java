package com.seveneleven.rishost.ageverification.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "state_type")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StateTypeEntity {
    @Id
    @Column(name = "state_id")
    private int stateId;

    @Column(name = "state_code")
    private String stateCode;

    @Column(name = "state_name")
    private String stateName;

    @ManyToOne
    @JoinColumn(name= "country_id")
    private CountryTypeEntity countryTypeEntity;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "state_id")
    private List<CountyTypeEntity> countyTypeEntityList;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "state_id")
    private List<StateRestrictionRuleEntity> stateRestrictionRuleEntityList;
}
