CREATE TABLE `data_platform_product_master_mrp_area_data`
(
    `Product`                          varchar(40) NOT NULL,
    `BusinessPartner`                  int(12) NOT NULL,
    `Plant`                            varchar(4) NOT NULL,
    `MRPArea`                          varchar(10) NOT NULL,
    `MRPType`                          varchar(2) DEFAULT NULL,
    `MRPResponsible`                   varchar(3) DEFAULT NULL,
    `MRPGroup`                         varchar(4) DEFAULT NULL,
    `ReorderThresholdQuantity`         float(15) DEFAULT NULL,
    `PlanningTimeFence`                int(3) DEFAULT NULL,
    `LotSizeRoundingQuantity`          float(15) DEFAULT NULL,
    `MinimumLotSizeQuantity`           float(15) DEFAULT NULL,
    `MaximumLotSizeQuantity`           float(15) DEFAULT NULL,
    `MaximumStockQuantity`             float(15) DEFAULT NULL,
    `DfltStorageLocationExtProcmt`     varchar(4) DEFAULT NULL,
    `MRPPlanningCalendar`              varchar(3) DEFAULT NULL,
    `SafetyStockQuantity`              float(15) DEFAULT NULL,
    `SafetyDuration`                   int(2) DEFAULT NULL,
    `FixedLotSizeQuantity`             float(15) DEFAULT NULL,
    `PlannedDeliveryDurationInDays`    int(3) DEFAULT NULL,
    `StorageLocation`                  varchar(4) DEFAULT NULL,
    `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `MRPArea`),

    CONSTRAINT `DataPlatformProductMasterMRPAreaData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterMRPAreaDataDfltStorageLocationExtProcmt_fk` FOREIGN KEY (`DfltStorageLocationExtProcmt`) REFERENCES `data_platform_plant_storage_location_data` (`StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterMRPAreaDataStorageLocation_fk` FOREIGN KEY (`StorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`StorageLocation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
