CREATE TABLE `data_platform_product_master_production_data`
(
    `Product`                                            varchar(40) NOT NULL,
    `BusinessPartner`                                    int(12) NOT NULL,
    `Plant`                                              varchar(4) NOT NULL,
    `ProductionStorageLocation`                          varchar(4) NOT NULL,
    `ProductProcessingDuration`                          float(13) NOT NULL,
    `ProductProcessingDurationUnit`                      varchar(3) NOT NULL,
    `ProductProductionQuantityUnit`                      varchar(3) NOT NULL,
    `MinimumProductionQuantityInBaseUnit`                float(15) NOT NULL,
    `MinimumProductionLotSizeQuantityInBaseUnit`         float(15) NOT NULL,
    `StandardProductionQuantityInBaseUnit`               float(15) NOT NULL,
    `StandardProductionLotSizeQuantityInBaseUnit`        float(15) NOT NULL,
    `MaximumProductionQuantityInBaseUnit`                float(15) NOT NULL,
    `MaximumProductionLotSizeQuantityInBaseUnit`         float(15) NOT NULL,
    `ProductionLotSizeRoundingQuantityInBaseUnit`        float(15) DEFAULT NULL,
    `MinimumProductionQuantityInProductionUnit`          float(15) NOT NULL,
    `MinimumProductionLotSizeQuantityInProductionUnit`   float(15) NOT NULL,
    `StandardProductionQuantityInProductionUnit`         float(15) NOT NULL,
    `StandardProductionLotSizeQuantityInProductionUnit`  float(15) NOT NULL,
    `MaximumProductionQuantityInProductionUnit`          float(15) NOT NULL,
    `MaximumProductionLotSizeQuantityInProductionUnit`   float(15) NOT NULL,
    `ProductionLotSizeRoundingQuantityInProductionUnit`  float(15) DEFAULT NULL,
    `ProductionLotSizeIsFixed`                           tinyint(1) DEFAULT NULL,
    `ProductIsBatchManagedInProductionPlant`             tinyint(1) DEFAULT NULL,
    `ProductIsMarkedForBackflush`                        tinyint(1) DEFAULT NULL,
    `ProductionSchedulingProfile`                        varchar(6) DEFAULT NULL,
    `CreationDate`                                       date NOT NULL,
    `LastChangeDate`                                     date NOT NULL,
    `IsMarkedForDeletion`                                tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterProductionData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterProductionDataProductionStorageLocation_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `ProductionStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterProductionDataProductProcessingDurationUnit_fk` FOREIGN KEY (`ProductProcessingDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformProductMasterProductionDataProductProductionQuantityUnit_fk` FOREIGN KEY (`ProductProductionQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
