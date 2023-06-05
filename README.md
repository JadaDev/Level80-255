
# Level 80 to 255 Installation Guide

This guide provides instructions for installing the Level 80 to 255 script, which allows players to increase the maximum level range from 80 to 255 on your World of Warcraft server. Please note that this installation process involves modifying your database and requires caution. Follow the steps below to install the script successfully:

## Prerequisites

-   A compatible World of Warcraft server setup.
-   Access to the database where your server stores its data.

## Installation Steps

1.  Download the Level 80 to 255 package.
2.  Locate the "Level80to255.sql" file within the downloaded package. This file contains the necessary SQL script.
3.  Run the "Level80to255.sql" script on your database. This script will make the necessary modifications to extend the maximum level range to 255. Please exercise caution when making changes to your database and ensure you have a backup.

## Backup (Recommended)

To safeguard your database before running the installation script, it is highly recommended to create a backup. You can create a backup by running the "Create_backup.sql" script provided in the Level 80 to 255 package.

**Note:** The backup process is crucial to ensure that you have a restore point in case of any unexpected issues or data corruption.

## Database Error Fixing

If you encounter any database errors related to the maximum level, you can resolve them by changing the "maxlevel" value in both the database and the corresponding C++ files to 255. This adjustment will align the database and server settings to support the extended level range.

## Credits

JadaDev for creating this custom SQL script.

## Disclaimer

**Warning:** It is essential to exercise caution and take appropriate measures to protect your database before making any changes. While this installation guide provides instructions for a safe installation process, the author (JadaDev) cannot be held responsible for any damage or data loss that may occur during the installation process. Remember to use the "Create_backup.sql" script to create a backup before proceeding.

Once the installation is complete, players can enjoy the increased maximum level range of 255 on their World of Warcraft server.

If you have any questions or encounter any issues during the installation process, please refer to the documentation provided with the Level 80 to 255 package or seek assistance from the developer community.
