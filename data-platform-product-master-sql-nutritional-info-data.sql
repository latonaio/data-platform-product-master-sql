CREATE TABLE `data_platform_product_master_nutritional_info_data`
(
    `Product`                 varchar(40) NOT NULL,
    `BusinessPartener`        int(12) NOT NULL,
    `Nutrient`                varchar(5) NOT NULL,
    `NutrientContent`         float(10) DEFAULT NULL,
    `NutrientContentUnit`     varchar(3) DEFAULT NULL,
    `CreationDate`            date NOT NULL,
    `LastChangeDate`          date NOT NULL,
    `IsMarkedForDeletion`     tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartener`, `Nutrient`),

    CONSTRAINT `DPFMProductMasterNutritionalInfoData_fk` FOREIGN KEY (`Product`, `BusinessPartener`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartener`),
    CONSTRAINT `DPFMProductMasterNutritionalInfoDataNutrientContentUnit_fk` FOREIGN KEY (`NutrientContentUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
