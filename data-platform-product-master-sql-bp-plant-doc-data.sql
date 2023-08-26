CREATE TABLE `data_platform_product_master_bp_plant_doc_data`
(
  `Product`                        varchar(40) NOT NULL,
  `BusinessPartner`                int(12) NOT NULL,
  `Plant`                          varchar(4) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMProductMasterBpPlantDocData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMProductMasterBpPlantDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)
    CONSTRAINT `DPFMProductMasterBpPlantDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
