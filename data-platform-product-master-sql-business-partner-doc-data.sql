CREATE TABLE `data_platform_product_master_business_partner_doc_data`
(
  `Product`                        varchar(40) NOT NULL,
  `BusinessPartner`                int(12) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DPFMProductMasterBPDocData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DPFMProductMasterBPDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMProductMasterBPDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
