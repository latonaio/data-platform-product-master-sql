CREATE TABLE `data_platform_product_master_accounting_data`
(
    `Product`               varchar(40) NOT NULL,
    `BusinessPartner`       int(12) NOT NULL,
    `Plant`                 varchar(4) NOT NULL,
    `ValuationClass`        varchar(4) DEFAULT NULL,
    `CostingPolicy`         varchar(1) DEFAULT NULL,
    `PriceUnitQty`          varchar(5) DEFAULT NULL,
    `StandardPrice`         float(13) DEFAULT NULL,
    `MovingAveragePrice`    float(13) DEFAULT NULL,
    `PriceLastChangeDate`   date DEFAULT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterAccountingData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
