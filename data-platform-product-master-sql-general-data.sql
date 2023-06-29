CREATE TABLE `data_platform_product_master_general_data`
(
    `Product`                       varchar(40) NOT NULL,
    `ProductType`                   varchar(4) NOT NULL,
    `BaseUnit`                      varchar(3) NOT NULL,
    `ValidityStartDate`             date NOT NULL,
    `ValidityEndDate`               date NOT NULL,
    `ItemCategory`                  varchar(4) NOT NULL,
    `ProductGroup`                  varchar(9) DEFAULT NULL,
    `GrossWeight`                   float(15) DEFAULT NULL,
    `NetWeight`                     float(15) DEFAULT NULL,
    `WeightUnit`                    varchar(3) DEFAULT NULL,
    `InternalCapacityQuantity`      float(15) DEFAULT NULL,
    `InternalCapacityQuantityUnit`  varchar(3) DEFAULT NULL,
    `SizeOrDimensionText`           varchar(100) DEFAULT NULL,
    `ProductStandardID`             varchar(18) DEFAULT NULL,
	`IndustryStandardName`          varchar(18) DEFAULT NULL,
    `CountryOfOrigin`               varchar(3) DEFAULT NULL,
    `CountryOfOriginLanguage`       varchar(2) DEFAULT NULL,
    `LocalRegionOfOrigin`           varchar(3) DEFAULT NULL,
    `LocalSubRegionOfOrigin`        varchar(3) DEFAULT NULL,
    `BarcodeType`                   varchar(20) DEFAULT NULL,
    `ProductAccountAssignmentGroup` varchar(2) DEFAULT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`)

    CONSTRAINT `DataPlatformProductMasterGeneralDataProductType_fk` FOREIGN KEY (`ProductType`) REFERENCES `data_platform_product_type_product_type_data` (`ProductType`),
    CONSTRAINT `DataPlatformProductMasterGeneralDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformProductMasterGeneralDataProductGroup_fk` FOREIGN KEY (`ProductGroup`) REFERENCES `data_platform_product_group_product_group_data` (`ProductGroup`),
    CONSTRAINT `DataPlatformProductMasterGeneralDataWeightUnit_fk` FOREIGN KEY (`WeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformProductMasterGeneralDataInternalCapacityQuantityUnit_fk` FOREIGN KEY (`InternalCapacityQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformProductMasterGeneralDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`)
    CONSTRAINT `DataPlatformProductMasterGeneralDataCountryOfOriginLanguage_fk` FOREIGN KEY (`CountryOfOriginLanguage`) REFERENCES `data_platform_language_language_data` (`Language`)
    CONSTRAINT `DataPlatformProductMasterGeneralDataLocalRegionOfOrigin_fk` FOREIGN KEY (`LocalRegionOfOrigin`, `CountryOfOrigin`) REFERENCES `data_platform_local_region_local_region_data` (`LocalRegion`, `Country`)
    CONSTRAINT `DataPlatformProductMasterGeneralDataLocalSubRegionOfOrigin_fk` FOREIGN KEY (`LocalSubRegionOfOrigin`, `LocalRegionOfOrigin`, `CountryOfOrigin`) REFERENCES `data_platform_local_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
