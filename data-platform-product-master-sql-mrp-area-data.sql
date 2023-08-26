CREATE TABLE `data_platform_product_master_mrp_area_data`
(
    `Product`                                   varchar(40) NOT NULL,
    `BusinessPartner`                           int(12) NOT NULL,
    `Plant`                                     varchar(4) NOT NULL,
    `MRPArea`                                   varchar(10) NOT NULL,
    `MRPType`                                   varchar(2) NOT NULL,
    `MRPController`                             varchar(3) NOT NULL,
    `StorageLocationForMRP`                     varchar(4) NOT NULL,
    `ReorderThresholdQuantityInBaseUnit`        float(15) DEFAULT NULL,
    `PlanningTimeFenceInDays`                   int(3) DEFAULT NULL,
    `MRPPlanningCalendar`                       varchar(3) DEFAULT NULL,
    `SafetyStockQuantityInBaseUnit`             float(15) DEFAULT NULL,
    `SafetyDuration`                            float(13) DEFAULT NULL,
    `SafetyDurationUnit`                        varchar(3) DEFAULT NULL,
    `MaximumStockQuantityInBaseUnit`            float(15) DEFAULT NULL,
    `MinimumDeliveryQuantityInBaseUnit`         float(15) DEFAULT NULL,
    `MinimumDeliveryLotSizeQuantityInBaseUnit`  float(15) DEFAULT NULL,
    `StandardDeliveryQuantityInBaseUnit`        float(15) DEFAULT NULL,
    `StandardDeliveryLotSizeQuantityInBaseUnit` float(15) DEFAULT NULL,
    `MaximumDeliveryQuantityInBaseUnit`         float(15) DEFAULT NULL,
    `MaximumDeliveryLotSizeQuantityInBaseUnit`  float(15) DEFAULT NULL,
    `DeliveryLotSizeRoundingQuantityInBaseUnit` float(15) DEFAULT NULL,
    `DeliveryLotSizeIsFixed`                    tinyint(1) DEFAULT NULL,
    `StandardDeliveryDuration`                  float(13) DEFAULT NULL,
    `StandardDeliveryDurationUnit`              varchar(3) DEFAULT NULL,
    `CreationDate`                              date NOT NULL,
    `LastChangeDate`                            date NOT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `MRPArea`),

    CONSTRAINT `DPFMProductMasterMRPAreaData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMProductMasterMRPAreaDataStorageLocationForMRP_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `StorageLocationForMRP`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
