CREATE TABLE `data_platform_product_master_bp_plant_data`
(
    `Product`                                   varchar(40) NOT NULL,
    `BusinessPartner`                           int(12) NOT NULL,
    `Plant`                                     varchar(4) NOT NULL,
    `MRPType`                                   varchar(2) NOT NULL,
    `MRPController`                             varchar(3) DEFAULT NULL,
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
    `IsBatchManagementRequired`                 tinyint(1) DEFAULT NULL,
    `BatchManagementPolicy`                     varchar(4) DEFAULT NULL,
    `ProfitCenter`                              varchar(10) DEFAULT NULL,
    `CreationDate`                              date NOT NULL,
    `LastChangeDate`                            date NOT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DPFMProductMasterBPPlantDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMProductMasterBPPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMProductMasterBPPlantDataSafetyDurationUnit_fk` FOREIGN KEY (`SafetyDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DPFMProductMasterBPPlantDataStandardDeliveryDurationUnit_fk` FOREIGN KEY (`StandardDeliveryDurationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
