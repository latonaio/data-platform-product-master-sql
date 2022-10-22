CREATE TABLE `data_platform_product_master_general_pdf_data`      -- 新規追加
(
  `Product`                        varchar(40) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,          -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,               -- 新規追加
  `DocID`                          varchar(100) NOT NULL,         -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL,     -- 新規追加

    PRIMARY KEY (`Product`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformProductMasterGeneralPDFData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterGeneralPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
