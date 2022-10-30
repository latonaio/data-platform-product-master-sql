CREATE TABLE `data_platform_product_master_sales_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(12) NOT NULL,
    `Sellable`                       tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`),

    CONSTRAINT `DataPlatformProductMasterSalesData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
