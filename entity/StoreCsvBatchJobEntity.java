package com.seveneleven.rishost.ageverification.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "store_csv_batch_job_entity")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class StoreCsvBatchJobEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "store_csv_batch_job_id")
    int storeCsvBatchJobId;

    @NotNull
    @Column(name = "run_date_time")
    LocalDateTime runDateTime;
}
