package com.seveneleven.rishost.ageverification.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
@Table(name = "country_type")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CountryTypeEntity {
    @Id
    @Column(name = "country_id")
    private int countryId;

    @Column(name = "country_name")
    @NotNull
    private String countryName;

    @Column(name = "country_code")
    @NotNull
    private String countryCode;

    //one to many relationship with state
    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="country_id")
    private List<StateTypeEntity> state;
}