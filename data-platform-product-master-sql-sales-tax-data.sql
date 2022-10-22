CREATE TABLE `data_platform_product_master_sales_tax_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(10) NOT NULL,        -- 新規追加
    `Country`                        varchar(3) NOT NULL,
    `TaxCategory`                    varchar(4) NOT NULL,
    `TaxClassification`              varchar(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Country`, `TaxCategory`),

    CONSTRAINT `DataPlatformProductMasterSalesTaxData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterSalesTaxDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
