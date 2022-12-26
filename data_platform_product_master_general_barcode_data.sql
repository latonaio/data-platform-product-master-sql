CREATE TABLE `data_platform_product_master_general_barcode_data`
(
  `Product`                        varchar(40) NOT NULL,
  `BarcodeType`                    varchar(20) NOT NULL,
  `BarcodeVersionID`               int(4) NOT NULL,
  `BarcodeNumber`                  int(13) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,

    PRIMARY KEY (`Product`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformProductMasterGeneralDocData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterGeneralDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
