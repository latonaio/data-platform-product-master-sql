CREATE TABLE `data_platform_product_master_accounting_data` -- 名称変更
(
    `Product`               varchar(40) NOT NULL,
    `BusinessPartner`       int(10) NOT NULL,        -- 新規追加
    `Plant`                 varchar(4) NOT NULL,     -- 名称変更
    `ValuationClass`        varchar(4) DEFAULT NULL,
    `CostingPolicy`         varchar(1) DEFAULT NULL, -- 新規追加
    `PriceUnitQty`          varchar(5) DEFAULT NULL,
    `StandardPrice`         varchar(11) DEFAULT NULL,
    `MovingAveragePrice`    varchar(11) DEFAULT NULL,
    `PriceLastChangeDate`   varchar(80) DEFAULT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterAccountingData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
