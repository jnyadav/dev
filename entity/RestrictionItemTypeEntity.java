package com.seveneleven.rishost.ageverification.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Data
@Entity
@Table(name = "restriction_item_type")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RestrictionItemTypeEntity {
    @Id
    @Column(name = "restriction_item_id")
    private int restrictionItemId;

    @NotNull
    @Column(name = "restriction_item_name")
    private String restrictionItemName;

    @NotNull
    @Column(name = "restriction_item_code")
    private String restrictionItemCode;

    @Column(name = "exportable")
    private Boolean exportable;
}
