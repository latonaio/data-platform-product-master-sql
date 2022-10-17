CREATE TABLE `data_platform_product_master_mrp_area_data`
(
    `Product`                          varchar(40) NOT NULL,
    `BusinessPartner`                  int(10) NOT NULL,          -- 新規追加
    `Plant`                            varchar(4) NOT NULL,
    `MRPArea`                          varchar(10) NOT NULL,
    `MRPType`                          varchar(2) DEFAULT NULL,
    `MRPResponsible`                   varchar(3) DEFAULT NULL,
    `MRPGroup`                         varchar(4) DEFAULT NULL,
    `ReorderThresholdQuantity`         varchar(13) DEFAULT NULL,
    `PlanningTimeFence`                int(3) DEFAULT NULL,
    `LotSizeRoundingQuantity`          varchar(13) DEFAULT NULL,
    `MinimumLotSizeQuantity`           varchar(13) DEFAULT NULL,
    `MaximumLotSizeQuantity`           varchar(13) DEFAULT NULL,
    `MaximumStockQuantity`             varchar(13) DEFAULT NULL,
    `DfltStorageLocationExtProcmt`     varchar(4) DEFAULT NULL,
    `MRPPlanningCalendar`              varchar(3) DEFAULT NULL,
    `SafetyStockQuantity`              varchar(13) DEFAULT NULL,
    `SafetyDuration`                   int(2) DEFAULT NULL,
    `FixedLotSizeQuantity`             varchar(13) DEFAULT NULL,
    `PlannedDeliveryDurationInDays`    int(3) DEFAULT NULL,
    `StorageLocation`                  varchar(4) DEFAULT NULL,
    `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `MRPArea`),
    CONSTRAINT `DataPlatformProductMasterMRPAreaData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
