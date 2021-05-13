BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Account 1','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2021-05-14','Non-refrigerated','Delivery Item 1','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-05-26','Non-refrigerated','Delivery Item 4','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2021-05-31','Frozen','Delivery Item 2','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2021-05-30','Refrigerated','Delivery Item 3','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-05-14T20:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(2,'2021-05-25T20:30:00.000+0000','Requested','2');
COMMIT;
