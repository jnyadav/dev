package com.seveneleven.rishost.ageverification.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "state_restriction_rule")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class StateRestrictionRuleEntity {
    @Id
    @Column(name = "state_restriction_rule_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int stateRestrictionRuleId;

    @Column(name = "effective_date")
    private LocalDate effectiveDate;

    @Column(name = "age")
    private int age;

    @ManyToOne
    @JoinColumn(name= "state_id")
    private StateTypeEntity stateTypeEntity;

    @ManyToOne
    @JoinColumn(name= "restriction_item_id")
    private RestrictionItemTypeEntity restrictionItemTypeEntity;
}
