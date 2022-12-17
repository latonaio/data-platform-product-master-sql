CREATE TABLE `data_platform_product_master_bp_plant_data`
(
    `Product`                    varchar(40) NOT NULL,
    `BusinessPartner`            int(12) NOT NULL,
    `Plant`                      varchar(4) NOT NULL,
    `Issuable`                   tinyint(1) DEFAULT NULL,
    `Receivable`                 tinyint(1) DEFAULT NULL,
    `IssuingDeliveryUnit`        varchar(3) DEFAULT NULL,
    `ReceivingDeliveryUnit`      varchar(3) DEFAULT NULL,
    `IssuingStorageLocation`     varchar(4) DEFAULT NULL,
    `ReceivingStorageLocation`   varchar(4) DEFAULT NULL,
    `AvailabilityCheckType`      varchar(2) DEFAULT NULL,
    `ProfitCenter`               varchar(10) DEFAULT NULL,
    `MRPType`                    varchar(2) DEFAULT NULL,
    `MRPController`             varchar(3) DEFAULT NULL,
    `MinimumLotSizeQuantity`     varchar(13) DEFAULT NULL,
    `MaximumLotSizeQuantity`     varchar(13) DEFAULT NULL,
    `FixedLotSizeQuantity`       varchar(13) DEFAULT NULL,
    `IsBatchManagementRequired`  tinyint(1) DEFAULT NULL,
    `BatchManagementPolicy`      varchar(4) DEFAULT NULL,
    `ProcurementType`            varchar(1) DEFAULT NULL,
    `InventoryUnit`              varchar(3) DEFAULT NULL,
    `IsMarkedForDeletion`        tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterBPPlantDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterIssuingDeliveryUnit_fk` FOREIGN KEY (`IssuingDeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformProductMasterReceivingDeliveryUnit_fk` FOREIGN KEY (`ReceivingDeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),    
    CONSTRAINT `DataPlatformProductMasterBPPlantDataIssuingStorageLocation_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `IssuingStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataReceivingStorageLocation_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `ReceivingStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataInventoryUnit_fk` FOREIGN KEY (`InventoryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
