create database InventoryManagement;

create table inventoryLogin (registeredEmailId varchar(100), password varchar(50));

create table inventoryRegister(companyName varchar(250), emailAddress varchar(100),
password varchar(50), phoneNumber int(25));

create table inventoryClient (clientId varchar(250), firstName varchar(250), lastName varchar(250),
updatedDate varchar(50), updatedTime varchar(50),primary key (clientId));

create table inventoryNormalClient(clientId varchar(250), dateOfBirth varchar(50), age int(5), gender varchar(25),
emailId varchar(100), phoneNumber varchar(25), telephoneNumber varchar(25), address varchar(500), city varchar(100),
pincode varchar(50), country varchar(50), foreign key(clientId) references inventoryClient(clientId));

create table inventoryCompanyClient(clientId varchar(250), companyName varchar(250), dateOfBirth varchar(50), age int(5),
gender varchar(25),emailId varchar(100), phoneNumber varchar(25), telephoneNumber varchar(25), 
address varchar(500), city varchar(100),pincode varchar(50), country varchar(50), 
foreign key(clientId) references inventoryClient(clientId));

create table inventoryCustomer (customerId varchar(250), firstName varchar(250), lastName varchar(250),
updatedDate varchar(50), updatedTime varchar(50),primary key (customerId));

create table inventoryNormalCustomer(customerId varchar(250), dateOfBirth varchar(50), age int(5), gender varchar(25),
emailId varchar(100), phoneNumber varchar(25), telephoneNumber varchar(25), address varchar(500), city varchar(100),
pincode varchar(50), country varchar(50), foreign key(customerId) references inventoryCustomer(customerId));

create table inventoryCompanyCustomer(customerId varchar(250), companyName varchar(250), dateOfBirth varchar(50), age int(5),
gender varchar(25),emailId varchar(100), phoneNumber varchar(25), telephoneNumber varchar(25), 
address varchar(500), city varchar(100),pincode varchar(50), country varchar(50), 
foreign key(customerId) references inventoryCustomer(customerId));

create table inventoryEmployee(employeeId varchar(250), firstName varchar(250), lastName varchar(250),
updatedDate varchar(50), updatedTime varchar(50),primary key (employeeId));

create table inventorySalesTeam(employeeId varchar(250), motherName varchar(250), fatherName varchar(250),
dateOfBirth varchar(50), age int(5), gender varchar(25),emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
areaOfInterest varchar(250), martialStatus varchar(250),
foreign key(employeeId) references inventoryEmployee(employeeId));

create table inventoryProcurementTeam(employeeId varchar(250), motherName varchar(250), fatherName varchar(250),
dateOfBirth varchar(50), age int(5), gender varchar(25),emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
areaOfInterest varchar(250), martialStatus varchar(250),
foreign key(employeeId) references inventoryEmployee(employeeId));

create table inventoryFinanceTeam(employeeId varchar(250), motherName varchar(250), fatherName varchar(250),
dateOfBirth varchar(50), age int(5), gender varchar(25),emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
areaOfInterest varchar(250), martialStatus varchar(250),
foreign key(employeeId) references inventoryEmployee(employeeId));

create table inventoryTechnicianTeam(employeeId varchar(250), motherName varchar(250), fatherName varchar(250),
dateOfBirth varchar(50), age int(5), gender varchar(25),emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
areaOfInterest varchar(250), martialStatus varchar(250),
foreign key(employeeId) references inventoryEmployee(employeeId));

create table inventoryManagement(managementId varchar(250), firstName varchar(250), lastName varchar(250),
updatedDate varchar(50), updatedTime varchar(50),primary key (managementId));

create table inventoryDirector(managementId varchar(250),dateOfBirth varchar(50), age int(5), gender varchar(25),
emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
specialization varchar(250), martialStatus varchar(250),
foreign key(managementId) references inventoryManagement(managementId));

create table inventoryManagingDirector(managementId varchar(250),dateOfBirth varchar(50), age int(5), gender varchar(25),
emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
specialization varchar(250), martialStatus varchar(250),
foreign key(managementId) references inventoryManagement(managementId));

create table inventoryManager(managementId varchar(250),dateOfBirth varchar(50), age int(5), gender varchar(25),
emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
specialization varchar(250), martialStatus varchar(250),
foreign key(managementId) references inventoryManagement(managementId));

create table inventoryGeneralManager(managementId varchar(250),dateOfBirth varchar(50), age int(5), gender varchar(25),
emailId varchar(100), phoneNumber varchar(25),address varchar(500),
city varchar(100),pincode varchar(50), country varchar(50), educationQualification varchar(250),
specialization varchar(250), martialStatus varchar(250),
foreign key(managementId) references inventoryManagement(managementId));

create table inventoryCatalog(catalogId varchar(250), catalogTypes varchar(250),
updatedDate varchar(50), updatedTime varchar(50),primary key (catalogId));

create table inventoryDetailLaptop(catalogId varchar(250), laptopBrandName varchar(250), laptopModel varchar(250),
screenSize varchar(250), os varchar(250), dvdPlayer varchar(250), processor varchar(250), ram varchar(250),
hardDisk varchar(250), preInstalledSoftware varchar(250), battery varchar(250), audio varchar(250),
webCamera varchar(250), price varchar(250), serialNumber varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));

create table inventoryDetailsDesktop(catalogId varchar(250), desktopBrandName varchar(250), desktopModelName varchar(250),
monitorScreenSize varchar(250), os varchar(250), cpuWithDVDPlayer varchar(250),
processor varchar(250), ram varchar(250),
hardDisk varchar(250), preInstalledSoftware varchar(250), battery varchar(250), audio varchar(250),
webCamera varchar(250), price varchar(250), serialNumber varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));

create table inventoryDetailsTablet(catalogId varchar(250), tabletBrandName varchar(250), dimension varchar(250),
weight varchar(250), displayType varchar(250), screenSize varchar(250), resolution varchar(250), chipset varchar(250),
internalMemory varchar(250), externalMemory varchar(250), ram varchar(250), backCamera varchar(250), 
rearCamera varchar(250), color varchar(250), model varchar(250), serialNumber varchar(250),	audioJack varchar(250),
battery varchar(250), infraredPort varchar(250), price varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));

create table inventoryDetailsServer(catalogId varchar(250), serverBrandName varchar(250), serverScalability varchar(250),
cpu varchar(250), maxTurboSpeed varchar(250), chipsetType varchar(250), processor varchar(250), ram varchar(250),
cachePerProcessor varchar(250), maxSupportSize varchar(250), interfaceType varchar(250), hardDisk varchar(250),
network varchar(250), monitor varchar(250), graphics varchar(250), dimension varchar(250), printer varchar(250),
connectivitySlot varchar(250), os varchar(250), price varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));

create table inventoryReport(reportId varchar(250), reportTypes varchar(250),
updatedDate varchar(50), updatedTime varchar(50),primary key (reportId));

create table inventoryTechnicianReportOnCatalog(reportId varchar(250), report varchar(250),
foreign key(reportId) references inventoryReport(reportId));

create table inventoryClientReport(reportId varchar(250), report varchar(250),
foreign key(reportId) references inventoryReport(reportId));

create table inventoryCustomerReport(reportId varchar(250), report varchar(250),
foreign key(reportId) references inventoryReport(reportId));

create table inventoryReportOnTechnicianByManagement(reportId varchar(250), report varchar(250),
foreign key(reportId) references inventoryReport(reportId));

create table inventoryNeedToBeService(catalogId varchar(250), catalogTypes varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));

create table inventorySpair(catalogId varchar(250), catalogTypes varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));


create table inventoryScrap(catalogId varchar(250), parts varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));


create table inventoryReadyForSale(catalogId varchar(250), catalogTypes varchar(250),
foreign key (catalogId) references inventoryCatalog(catalogId));

