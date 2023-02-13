CREATE TABLE `data_platform_product_master_bp_plant_data`
(
    `Product`                                   varchar(40) NOT NULL,
    `BusinessPartner`                           int(12) NOT NULL,
    `Plant`                                     varchar(4) NOT NULL,
    `AvailabilityCheckType`                     varchar(2) NOT NULL,
    `MRPType`                                   varchar(2) NOT NULL,
    `MRPController`                             varchar(3) NOT NULL,
    `ReorderThresholdQuantity`                  float(15) DEFAULT NULL,
    `PlanningTimeFence`                         int(3) DEFAULT NULL,
    `MRPPlanningCalendar`                       varchar(3) DEFAULT NULL,
    `SafetyStockQuantityInBaseUnit`             float(15) DEFAULT NULL,
    `SafetyDuration`                            int(3) DEFAULT NULL,
    `MaximumStockQuantityInBaseUnit`            float(15) DEFAULT NULL,
    `MinimumDeliveryQuantityInBaseUnit`         float(15) DEFAULT NULL,
    `MinimumDeliveryLotSizeQuantityInBaseUnit`  float(15) DEFAULT NULL,
    `StandardDeliveryLotSizeQuantityInBaseUnit` float(15) DEFAULT NULL,
    `DeliveryLotSizeRoundingQuantityInBaseUnit` float(15) DEFAULT NULL,
    `MaximumDeliveryLotSizeQuantityInBaseUnit`  float(15) DEFAULT NULL,
    `MaximumDeliveryQuantityInBaseUnit`         float(15) DEFAULT NULL,
    `DeliveryLotSizeIsFixed`                    tinyint(1) DEFAULT NULL,
    `StandardDeliveryDurationInDays`            int(3) DEFAULT NULL,
    `IsBatchManagementRequired`                 tinyint(1) DEFAULT NULL,
    `BatchManagementPolicy`                     varchar(4) DEFAULT NULL,
    `InventoryUnit`                             varchar(3) DEFAULT NULL,
    `ProfitCenter`                              varchar(10) DEFAULT NULL,
    `IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterBPPlantDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterBPPlantDataInventoryUnit_fk` FOREIGN KEY (`InventoryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
