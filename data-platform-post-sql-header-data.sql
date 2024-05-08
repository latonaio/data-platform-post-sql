CREATE TABLE `data_platform_post_header_data`
(
  `Post`                          int(20) NOT NULL,
  `PostType`                      varchar(3) NOT NULL,
  `PostOwner`                     int(12) NOT NULL,
  `SiteOwnerBusinessPartnerRole`  varchar(40) NOT NULL,
  `Description`                   varchar(60) NOT NULL,
  `LongText`                      varchar(1000) NOT NULL,
  `Site`                          int(16) NOT NULL,
  `Tag1`                          varchar(40) DEFAULT NULL,
  `Tag2`                          varchar(40) DEFAULT NULL,
  `Tag3`                          varchar(40) DEFAULT NULL,
  `Tag4`                          varchar(40) DEFAULT NULL,
  `CreationDate`                  date NOT NULL,
  `CreationTime`                  time NOT NULL,
  `LastChangeDate`                date NOT NULL,
  `LastChangeTime`                time NOT NULL,
  `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Post`),

    CONSTRAINT `DPFMPostHeaderDataPostOwner_fk` FOREIGN KEY (`PostOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPostHeaderDataSiteOwnerBPRole_fk` FOREIGN KEY (`SiteOwnerBusinessPartnerRole`) REFERENCES `data_platform_bp_role_bp_role_data` (`BusinessPartnerRole`),
    CONSTRAINT `DPFMPostHeaderDataSite_fk` FOREIGN KEY (`Site`) REFERENCES `data_platform_site_header_data` (`Site`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
