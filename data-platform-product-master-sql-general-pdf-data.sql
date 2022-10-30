CREATE TABLE `data_platform_product_master_general_pdf_data`
(
  `Product`                        varchar(40) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,

    PRIMARY KEY (`Product`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformProductMasterGeneralPDFData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterGeneralPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
