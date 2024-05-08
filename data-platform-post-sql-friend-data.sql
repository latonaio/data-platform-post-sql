CREATE TABLE `data_platform_post_friend_data`
(
  `Post`                          int(20) NOT NULL,
  `Friend`                        int(12) NOT NULL,
  `CreationDate`                  date NOT NULL,
  `CreationTime`                  time NOT NULL,
  `LastChangeDate`                date NOT NULL,
  `LastChangeTime`                time NOT NULL,
  `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Post`, `Friend`),

    CONSTRAINT `DPFMPostFriendData_fk` FOREIGN KEY (`Post`) REFERENCES `data_platform_post_header_data` (`Post`),
    CONSTRAINT `DPFMPostFriendDataFriend_fk` FOREIGN KEY (`Friend`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
