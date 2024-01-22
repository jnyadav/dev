package com.seveneleven.rishost.ageverification.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "county_restriction_rule")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CountyRestrictionRuleEntity {
    @Id
    @Column(name = "county_restriction_rule_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int countyRestrictionRuleId;

    @Column(name = "effective_date")
    private LocalDate effectiveDate;

    @Column(name = "age")
    private int age;

    @ManyToOne
    @JoinColumn(name= "county_id")
    private CountyTypeEntity countyTypeEntity;

    @ManyToOne
    @JoinColumn(name= "restriction_item_id")
    private RestrictionItemTypeEntity restrictionItemTypeEntity;
}