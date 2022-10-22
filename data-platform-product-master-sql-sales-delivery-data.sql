CREATE TABLE `data_platform_product_master_sales_delivery_data`  -- 名称変更
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(10) NOT NULL,           -- 新規追加
    `ProductSalesOrg`                varchar(4) NOT NULL,
    `ProductDistributionChnl`        varchar(2) NOT NULL,
    `AccountDetnProductGroup`        varchar(2) DEFAULT NULL,    -- 新規追加
    `SalesDeliveryUnit`              varchar(80) DEFAULT NULL,   -- 名称変更
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `ProductSalesOrg`, `ProductDistributionChnl`),

    CONSTRAINT `DataPlatformProductMasterSalesDeliveryData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterSalesDeliveryDataProductDistributionChnl_fk` FOREIGN KEY (`ProductDistributionChnl`) REFERENCES `data_platform_distribution_channel_distribution_channel_data` (`DistributionChannel`),
    CONSTRAINT `DataPlatformProductMasterSalesDeliveryDataSalesDeliveryUnit_fk` FOREIGN KEY (`SalesDeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
