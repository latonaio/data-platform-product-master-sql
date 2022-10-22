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
    `BatchManagementPolicy`      varchar(4) DEFAULT NULL,  -- 新規追加
    `ProcurementType`            varchar(1) DEFAULT NULL,
    `InventoryUnit`              varchar(3) DEFAULT NULL,  -- 新規追加
    `IsMarkedForDeletion`        tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterBPPlantDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataDefaultStorageLocation_fk` FOREIGN KEY (`DefaultStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataInventoryUnit_fk` FOREIGN KEY (`InventoryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
