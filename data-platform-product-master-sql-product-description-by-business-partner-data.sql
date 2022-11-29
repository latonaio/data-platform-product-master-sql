CREATE TABLE `data_platform_product_master_product_description_by_business_partner_data`
(
    `Product`               varchar(40) NOT NULL,
    `BusinessPartner`       int(12) NOT NULL,
    `Language`              varchar(2) NOT NULL,
    `ProductDescription`    varchar(200) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Language`),

    CONSTRAINT `DataPlatformProductMasterProductDescriptionByBusinessPartnerData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterProductDescriptionByBusinessPartnerDataLanguage_fk` FOREIGN KEY (`Product`, `Language`) REFERENCES `data_platform_product_master_product_description_data` (`Product`, `Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
