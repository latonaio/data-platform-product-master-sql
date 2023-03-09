CREATE TABLE `data_platform_product_master_allergen_data`
(
    `Product`                   varchar(40) NOT NULL,
    `BusinessPartner`           int(12) NOT NULL,
    `Allergen`                  varchar(60) NOT NULL,
    `AllergenIsContained`       tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Allergen`),

    CONSTRAINT `DataPlatformProductMasterAllergenData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterDataAllergen_fk` FOREIGN KEY (`Allergen`) REFERENCES `data_platform_allergen_allergen_data` (`Allergen`)


) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
