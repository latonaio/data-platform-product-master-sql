CREATE TABLE `data_platform_product_master_bp_plant_data`
(
    `Product`                    varchar(40) NOT NULL,
    `BusinessPartner`            int(10) NOT NULL,          -- 新規追加
    `Plant`                      varchar(4) NOT NULL,
    `DefaultStorageLocation`     varchar(4) DEFAULT NULL,   -- 新規追加
    `AvailabilityCheckType`      varchar(2) DEFAULT NULL,
    `ProfitCenter`               varchar(10) DEFAULT NULL,
    `GoodsReceiptDuration`       int(3) DEFAULT NULL,
    `MRPType`                    varchar(2) DEFAULT NULL,
    `MRPResponsible`             varchar(3) DEFAULT NULL,
    `MinimumLotSizeQuantity`     varchar(13) DEFAULT NULL,
    `MaximumLotSizeQuantity`     varchar(13) DEFAULT NULL,
    `FixedLotSizeQuantity`       varchar(13) DEFAULT NULL,
    `IsBatchManagementRequired`  tinyint(1) DEFAULT NULL,
    `ProcurementType`            varchar(1) DEFAULT NULL,
    `InventoryUnit`              varchar(3) DEFAULT NULL,  -- 新規追加
    `IsMarkedForDeletion`        tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterBPPlantData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
