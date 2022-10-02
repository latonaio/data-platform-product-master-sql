CREATE TABLE `data_platform_product_master_work_scheduling_data`
(
    `Product`                       varchar(40) NOT NULL,
    `BusinessPartner`               varchar(10) NOT NULL,       --新規追加
    `Plant`                         varchar(4) NOT NULL,
    `ProductionInvtryManagedLoc`    varchar(4) DEFAULT NULL,
    `ProductProcessingTime`         int(3) DEFAULT NULL,
    `ProductionSupervisor`          varchar(3) DEFAULT NULL,
    `ProductProductionQuantityUnit` varchar(3) DEFAULT NULL,
    `ProdnOrderIsBatchRequired`     varchar(1) DEFAULT NULL,
    `MatlCompIsMarkedForBackflush`  varchar(1) DEFAULT NULL,
    `ProductionSchedulingProfile`   varchar(6) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterWorkSchedulingData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
