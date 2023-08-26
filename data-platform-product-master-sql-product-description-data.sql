CREATE TABLE `data_platform_product_master_product_description_data`
(
    `Product`               varchar(40) NOT NULL,
    `Language`              varchar(2) NOT NULL,
    `ProductDescription`    varchar(200) NOT NULL,
    `CreationDate`          date NOT NULL,
    `LastChangeDate`        date NOT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `Language`),

    CONSTRAINT `DPFMProductMasterProductDescriptionData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMProductMasterProductDescriptionDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
