package com.seveneleven.rishost.ageverification.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "store_csv_rule_entity")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class StoreCsvRuleEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "store_csv_rule_id")
    int storeCsvRuleId;

    @NotNull
    @Column(name = "store_number")
    int storeNumber;

    @NotNull
    @Column(name = "restriction_age")
    int restrictionAge;

    @NotNull
    @Column(name = "effective_Date")
    LocalDate effectiveDate;

    @NotNull
    @Column(name = "restriction_item_id")
    int restrictionItemId;

    @Column(name = "geography_type")
    String geographyType;

    @ManyToOne
    @JoinColumn(name= "store_csv_batch_job_id")
    StoreCsvBatchJobEntity storeCsvBatchJobEntity;
}
