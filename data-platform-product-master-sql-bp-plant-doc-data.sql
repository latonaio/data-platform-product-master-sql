CREATE TABLE `data_platform_product_master_bp_plant_doc_data` -- 新規追加
(
  `Product`                        varchar(40) NOT NULL,      -- 新規追加
  `BusinessPartner`                int(12) NOT NULL,          -- 新規追加
  `Plant`                          varchar(4) NOT NULL,       -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `FileExtension`                  varchar(3) DEFAULT NULL,   -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,      -- 新規追加
  `FilePath`                       varchar(1000) DEFAULT NULL, -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
  
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformProductMasterBpPlantDocData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterBpPlantDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)
    CONSTRAINT `DataPlatformOrdersGeneralDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
