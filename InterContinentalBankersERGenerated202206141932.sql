USE [master] 
GO

	-- Handle Database Creation
	DROP DATABASE IF EXISTS InterContinentalBankers
	GO


	CREATE DATABASE [InterContinentalBankers]
	GO


	USE [InterContinentalBankers]
	GO
	
	
	-- Handle Schemas Creation
	DROP SCHEMA IF EXISTS [Banking]
	GO

	DROP SCHEMA IF EXISTS [Entities]
	GO

	DROP SCHEMA IF EXISTS [Geography]
	GO

	DROP SCHEMA IF EXISTS [Employee]
	GO

	CREATE SCHEMA [Banking]
	GO

	CREATE SCHEMA [Person]
	GO

	CREATE SCHEMA [Geography]
	GO

	CREATE SCHEMA [Employee]
	GO

	
	
	-- Handle Entities (Tables) Creation
	CREATE TABLE Employee.AccountManagers (
	  AccountManagerID          int IDENTITY NOT NULL, 
	  EmployeeID                int NOT NULL, 
	  AccountManagerPhoneNumber nvarchar(25) NOT NULL, 
	  AccountManagerCellPhone   nvarchar(255) NOT NULL, 
	  AccountManagerEmail       nvarchar(255) NULL, 
	  DateInserted              datetime2(7) NOT NULL, 
	  CONSTRAINT AccountManager_PK 
		PRIMARY KEY (AccountManagerID));
	
	
	CREATE TABLE Banking.Accounts (
	  AccountID        int IDENTITY NOT NULL, 
	  AccountTypeID    int NOT NULL, 
	  AcccountNumber   int DEFAULT 000000000000001 NOT NULL, 
	  RoutingNumber    int NOT NULL UNIQUE, 
	  BranchID         int NOT NULL, 
	  EntityID         int NOT NULL, 
	  AccountManagerID int NOT NULL, 
	  CurrencyID       int NOT NULL, 
	  ProductID        int NOT NULL, 
	  CreationDate     datetime2(7) NOT NULL, 
	  TransactionID    int NOT NULL, 
	  AccountStatusID  int NOT NULL, 
	  DateInserted     datetime2(0) NOT NULL, 
	  CONSTRAINT Account_PK 
		PRIMARY KEY CLUSTERED (AccountID));
	
	
	CREATE TABLE Banking.Accounts_BankEntities (
	  AccountsAccountID    int NOT NULL, 
	  BankEntitiesEntityID int NOT NULL, 
	  PRIMARY KEY (AccountsAccountID, 
	  BankEntitiesEntityID));
	
	
	CREATE TABLE Banking.AccountStatus (
	  AccountStatusID          int IDENTITY NOT NULL, 
	  AccountStatusCode        char(3) DEFAULT 'OPN' NOT NULL, 
	  AccountStatusDescription nvarchar(255) DEFAULT 'Open' NOT NULL, 
	  DateInserted             datetime2(7) NOT NULL, 
	  CONSTRAINT AccountStatus_PK 
		PRIMARY KEY (AccountStatusID));
	
	
	CREATE TABLE Banking.AccountTypes (
	  AccountTypeID          int IDENTITY NOT NULL, 
	  AccountType            char(3) DEFAULT 'PRS' NOT NULL, 
	  AccountTypeDescription varchar(35) DEFAULT 'Personal Single Account' NOT NULL, 
	  DateInserted           datetime2(0) NOT NULL, 
	  CONSTRAINT AccountType_PK 
		PRIMARY KEY CLUSTERED (AccountTypeID));
	
	
	CREATE TABLE Geography.Addresses (
	  AddressID    int IDENTITY NOT NULL, 
	  AddressLine1 char(3) DEFAULT 'PHO' NOT NULL, 
	  AddressLine2 nvarchar(255) DEFAULT 'Telephone' NULL, 
	  CityID       int NOT NULL, 
	  PostalCode   int NOT NULL, 
	  DateInserted datetime2(7) NOT NULL, 
	  CONSTRAINT Address_PK 
		PRIMARY KEY (AddressID));
	
	
	CREATE TABLE Person.BankEntities (
	  EntityID     int IDENTITY NOT NULL, 
	  EntityTypeID int NOT NULL, 
	  FirstName    nvarchar(35) NOT NULL, 
	  LastName     nvarchar(50) NOT NULL, 
	  AddressID    int NOT NULL, 
	  GenderID     int NOT NULL, 
	  CellPhone    nvarchar(25) NOT NULL, 
	  Email        nvarchar(255) NULL, 
	  DateInserted datetime2(7) NOT NULL, 
	  CONSTRAINT BankEntity_PK 
		PRIMARY KEY (EntityID));
	
	
	CREATE TABLE Banking.Branches (
	  BranchID                      int IDENTITY NOT NULL, 
	  BranchCode                    char(5) NOT NULL, 
	  AddressId                     int NOT NULL, 
	  BranchName                    nvarchar(255) NOT NULL, 
	  BranchPhoneNumber             nvarchar(25) NOT NULL, 
	  BranchManageID                int NOT NULL, 
	  BranchManagersBranchManagerID int NOT NULL, 
	  DateInserted                  datetime2(7) NOT NULL, 
	  CONSTRAINT Branches_PK 
		PRIMARY KEY (BranchID));
	
	
	CREATE TABLE Employee.BranchManagers (
	  BranchManagerID          int IDENTITY NOT NULL, 
	  EmployeeID               int NOT NULL, 
	  BranchManagePhoneNumber  nvarchar(25) NOT NULL, 
	  BranchManageCellPhone    nvarchar(25) NOT NULL, 
	  BranchManageManagerEmail nvarchar(255) NULL, 
	  DateInserted             datetime2(7) NOT NULL, 
	  CONSTRAINT BranchManager_PK 
		PRIMARY KEY (BranchManagerID));
	
	
	CREATE TABLE Banking.Channels (
	  ChannelID    int IDENTITY NOT NULL, 
	  ChannelCode  char(3) DEFAULT 'INT' NOT NULL, 
	  ChannelName  nvarchar(55) DEFAULT 'Internet' NOT NULL, 
	  DateInserted datetime2(0) NOT NULL, 
	  CONSTRAINT Channels_PK 
		PRIMARY KEY (ChannelID));
	
	
	CREATE TABLE Banking.Channels_Products (
	  ChannelsChannelID int NOT NULL, 
	  ProductsProductID int NOT NULL, 
	  PRIMARY KEY (ChannelsChannelID, 
	  ProductsProductID));
	
	
	CREATE TABLE Geography.Cities (
	  CityID          int IDENTITY NOT NULL, 
	  CityName        nvarchar(55) NOT NULL, 
	  StateProvinceID int NOT NULL, 
	  DateInserted    datetime2(7) NOT NULL, 
	  CONSTRAINT Cities_PK 
		PRIMARY KEY (CityID));
	
	
	CREATE TABLE Geography.Countries (
	  CountryID      int IDENTITY NOT NULL, 
	  CountryName    nvarchar(150) NOT NULL, 
	  OfficialName   nvarchar(200) NOT NULL, 
	  ISOAlpha3Code  char(3) DEFAULT 'PRT' NULL, 
	  ISOAlpha2Code  char(2) DEFAULT 'AO' NULL, 
	  ISONumericCode int NULL, 
	  Continent      nvarchar(50) NOT NULL, 
	  Region         nvarchar(50) NOT NULL, 
	  SubRegion      nvarchar(50) NOT NULL, 
	  DateInserted   datetime2(7) NOT NULL, 
	  CONSTRAINT Countries_PK 
		PRIMARY KEY (CountryID));
	
	
	CREATE TABLE Banking.Currencies (
	  CurrencyID     int IDENTITY NOT NULL, 
	  Currency       varchar(255) NOT NULL, 
	  CurrencyCode   char(3) NOT NULL, 
	  CurrencyEntity varchar(255) NOT NULL, 
	  DateInserted   datetime2(7) NOT NULL, 
	  CONSTRAINT Currency_PK 
		PRIMARY KEY (CurrencyID));
	
	
	CREATE TABLE Employee.Departments (
	  DepartmentID   int IDENTITY NOT NULL, 
	  DepartmentCode char(3) DEFAULT 'MKT' NOT NULL, 
	  DepartmentName nvarchar(255) DEFAULT 'Marketing' NOT NULL, 
	  DateInserted   datetime2(7) NOT NULL, 
	  CONSTRAINT Departments_PK 
		PRIMARY KEY (DepartmentID));
	
	
	CREATE TABLE Employee.Employees (
	  EmployeeID           int IDENTITY NOT NULL, 
	  FirstName            nvarchar(35) NOT NULL, 
	  LastName             nvarchar(50) NOT NULL, 
	  HiredDate            datetime2(0) NOT NULL, 
	  DepartmentID         int NOT NULL, 
	  RoleID               int NOT NULL, 
	  RecordInceptionDate  datetime2(0) NOT NULL, 
	  RecordExpirationDate datetime2(0) DEFAULT '9999-12-31 23:59:59' NOT NULL, 
	  GenderID             int NOT NULL, 
	  BranchID             int NOT NULL, 
	  DateInserted         datetime2(0) NOT NULL, 
	  CONSTRAINT Employee_PK 
		PRIMARY KEY (EmployeeID));
	
	
	CREATE TABLE Person.EntityTypes (
	  EntityTypeID          int IDENTITY NOT NULL, 
	  EntityTypeCode        char(3) DEFAULT 'CUS' NOT NULL, 
	  EntityTypeDescription nvarchar(255) DEFAULT 'Customer' NOT NULL, 
	  DateInserted          datetime2(7) NOT NULL, 
	  CONSTRAINT EntityType_PK 
		PRIMARY KEY (EntityTypeID));
	
	
	CREATE TABLE Person.Genders (
	  GenderID          int IDENTITY NOT NULL, 
	  GenderCode        char(1) DEFAULT 'M' NOT NULL, 
	  GenderDescription nvarchar(255) DEFAULT 'Male' NOT NULL, 
	  DateInserted      datetime2(7) NOT NULL, 
	  CONSTRAINT GendersID_PK 
		PRIMARY KEY (GenderID));
	
	
	CREATE TABLE Banking.Products (
	  ProductID    int IDENTITY NOT NULL, 
	  ProductCode  char(3) DEFAULT 'CHK' NOT NULL, 
	  ProductName  varchar(255) DEFAULT 'Checking Account' NOT NULL, 
	  DateInserted datetime2(7) NOT NULL, 
	  CONSTRAINT Product_PK 
		PRIMARY KEY (ProductID));
	
	
	CREATE TABLE Employee.Roles (
	  RoleID          int IDENTITY NOT NULL, 
	  RoleCode        char(3) DEFAULT 'CLK' NOT NULL, 
	  RoleDescription nvarchar(255) DEFAULT 'Bank Clerk' NOT NULL, 
	  DateInserted    datetime2(7) NOT NULL, 
	  CONSTRAINT Role_PK 
		PRIMARY KEY (RoleID));
	
	
	CREATE TABLE Geography.StateProvinces (
	  StateProvinceID   int IDENTITY NOT NULL, 
	  StateProvinceCode char(5) DEFAULT 'FL' NOT NULL, 
	  StateProvinceName nvarchar(55) NOT NULL, 
	  CountryID         int NOT NULL, 
	  DateInserted      datetime2(7) NOT NULL, 
	  CONSTRAINT StateProvinceID_PK 
		PRIMARY KEY (StateProvinceID));
	
	
	CREATE TABLE Banking.Transactions (
	  TransactionID               int IDENTITY NOT NULL, 
	  TransactionTypeID           int NOT NULL, 
	  TransactionPostedDate       datetime2(7) NOT NULL, 
	  TransactionEffectiveDate    datetime2(7) NOT NULL, 
	  TransactionCancellationDate datetime2(7) NULL, 
	  TransactionAmount           money DEFAULT 1000 NULL, 
	  TransactionStatusID         int NOT NULL, 
	  DateInserted                datetime2(0) NOT NULL, 
	  CONSTRAINT Transaction_PK 
		PRIMARY KEY CLUSTERED (TransactionID));
	EXEC sp_addextendedproperty 
	  @NAME = N'MS_Description', @VALUE = N'Depending upon the transaction, this field may or may not have an amount. When a transaction does not have an amount, it is called a non-dollar transaction.', 
	  @LEVEL0TYPE = N'Schema', @LEVEL0NAME = N'Banking', 
	  @LEVEL1TYPE = N'Table', @LEVEL1NAME = N'Transactions', 
	  @LEVEL2TYPE = N'Column', @LEVEL2NAME = N'TransactionAmount';
	
	
	CREATE TABLE Banking.TransactionStatus (
	  TransactionStatusID          int IDENTITY NOT NULL, 
	  TransactionStatusDescription nvarchar(255) NOT NULL, 
	  TransactionStatusCode        char(3) NOT NULL, 
	  DateInserted                 datetime2(7) NOT NULL, 
	  CONSTRAINT TransactionStatus_PK 
		PRIMARY KEY (TransactionStatusID));
	
	
	CREATE TABLE Banking.TransactionTypes (
	  TransactionTypeID          int IDENTITY NOT NULL, 
	  TransactionType            char(3) DEFAULT 'DPS' NOT NULL, 
	  TransactionTypeDescription nvarchar(255) DEFAULT 'Money Deposit' NOT NULL, 
	  DateInserted               datetime2(7) NOT NULL, 
	  CONSTRAINT TransactioType_PK 
		PRIMARY KEY (TransactionTypeID));
	
	CREATE INDEX Account 
	  ON Banking.Accounts (AccountID, AcccountNumber);
	
	CREATE UNIQUE INDEX Accounts_AcccountNumber 
	  ON Banking.Accounts (AcccountNumber);
	
	
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts126862 FOREIGN KEY (AccountTypeID) REFERENCES Banking.AccountTypes (AccountTypeID);
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts510828 FOREIGN KEY (CurrencyID) REFERENCES Banking.Currencies (CurrencyID);
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts346037 FOREIGN KEY (ProductID) REFERENCES Banking.Products (ProductID);
	ALTER TABLE Person.BankEntities ADD CONSTRAINT FKBankEntiti601000 FOREIGN KEY (EntityTypeID) REFERENCES Person.EntityTypes (EntityTypeID);
	ALTER TABLE Person.BankEntities ADD CONSTRAINT FKBankEntiti717309 FOREIGN KEY (AddressID) REFERENCES Geography.Addresses (AddressID);
	ALTER TABLE Geography.Cities ADD CONSTRAINT FKCities329753 FOREIGN KEY (StateProvinceID) REFERENCES Geography.StateProvinces (StateProvinceID);
	ALTER TABLE Geography.StateProvinces ADD CONSTRAINT FKStateProvi903269 FOREIGN KEY (CountryID) REFERENCES Geography.Countries (CountryID);
	ALTER TABLE Banking.Channels_Products ADD CONSTRAINT FKChannels_P501025 FOREIGN KEY (ChannelsChannelID) REFERENCES Banking.Channels (ChannelID);
	ALTER TABLE Banking.Channels_Products ADD CONSTRAINT FKChannels_P523196 FOREIGN KEY (ProductsProductID) REFERENCES Banking.Products (ProductID);
	ALTER TABLE Banking.Accounts_BankEntities ADD CONSTRAINT FKAccounts_B708768 FOREIGN KEY (AccountsAccountID) REFERENCES Banking.Accounts (AccountID);
	ALTER TABLE Banking.Accounts_BankEntities ADD CONSTRAINT FKAccounts_B379641 FOREIGN KEY (BankEntitiesEntityID) REFERENCES Person.BankEntities (EntityID);
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts794738 FOREIGN KEY (BranchID) REFERENCES Banking.Branches (BranchID);
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts624173 FOREIGN KEY (TransactionID) REFERENCES Banking.Transactions (TransactionID);
	ALTER TABLE Banking.Transactions ADD CONSTRAINT FKTransactio702343 FOREIGN KEY (TransactionTypeID) REFERENCES Banking.TransactionTypes (TransactionTypeID);
	ALTER TABLE Banking.Transactions ADD CONSTRAINT FKTransactio204131 FOREIGN KEY (TransactionStatusID) REFERENCES Banking.TransactionStatus (TransactionStatusID);
	ALTER TABLE Employee.Employees ADD CONSTRAINT FKEmployees596317 FOREIGN KEY (DepartmentID) REFERENCES Employee.Departments (DepartmentID);
	ALTER TABLE Employee.Employees ADD CONSTRAINT FKEmployees758326 FOREIGN KEY (GenderID) REFERENCES Person.Genders (GenderID);
	ALTER TABLE Person.BankEntities ADD CONSTRAINT FKBankEntiti620587 FOREIGN KEY (GenderID) REFERENCES Person.Genders (GenderID);
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts266391 FOREIGN KEY (AccountStatusID) REFERENCES Banking.AccountStatus (AccountStatusID);
	ALTER TABLE Employee.Employees ADD CONSTRAINT FKEmployees832817 FOREIGN KEY (RoleID) REFERENCES Employee.Roles (RoleID);
	ALTER TABLE Banking.Accounts ADD CONSTRAINT FKAccounts217450 FOREIGN KEY (AccountManagerID) REFERENCES Employee.AccountManagers (AccountManagerID);
	ALTER TABLE Employee.AccountManagers ADD CONSTRAINT FKAccountMan989347 FOREIGN KEY (EmployeeID) REFERENCES Employee.Employees (EmployeeID);
	ALTER TABLE Geography.Addresses ADD CONSTRAINT FKAddresses654863 FOREIGN KEY (CityID) REFERENCES Geography.Cities (CityID);
	ALTER TABLE Banking.Branches ADD CONSTRAINT FKBranches836804 FOREIGN KEY (AddressId) REFERENCES Geography.Addresses (AddressID);
	ALTER TABLE Employee.BranchManagers ADD CONSTRAINT FKBranchMana722846 FOREIGN KEY (EmployeeID) REFERENCES Employee.Employees (EmployeeID);
	ALTER TABLE Banking.Branches ADD CONSTRAINT FKBranches90543 FOREIGN KEY (BranchManagersBranchManagerID) REFERENCES Employee.BranchManagers (BranchManagerID);



	