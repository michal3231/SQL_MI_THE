prompt PL/SQL Developer import file
prompt Created on יום חמישי 23 מאי 2024 by Tehila Benezra
set feedback off
set define off
prompt Creating PURCHASE...
create table PURCHASE
(
  purchase_id    NUMBER(3) not null,
  purchase_date  DATE not null,
  dellivery_date DATE not null
)
;
alter table PURCHASE
  add primary key (PURCHASE_ID);

prompt Creating PURCHASE_CLIENT...
create table PURCHASE_CLIENT
(
  client_id   NUMBER(3) not null,
  purchase_id NUMBER(3) not null
)
;
alter table PURCHASE_CLIENT
  add primary key (CLIENT_ID, PURCHASE_ID);
alter table PURCHASE_CLIENT
  add foreign key (CLIENT_ID)
  references CLIENT (CLIENT_ID);
alter table PURCHASE_CLIENT
  add foreign key (PURCHASE_ID)
  references PURCHASE (PURCHASE_ID);

prompt Creating PURCHASE_PRODUCT...
create table PURCHASE_PRODUCT
(
  product_id  NUMBER(3) not null,
  purchase_id NUMBER(3) not null
)
;
alter table PURCHASE_PRODUCT
  add primary key (PRODUCT_ID, PURCHASE_ID);
alter table PURCHASE_PRODUCT
  add foreign key (PRODUCT_ID)
  references PRODUCTS (PRODUCT_ID);
alter table PURCHASE_PRODUCT
  add foreign key (PURCHASE_ID)
  references PURCHASE (PURCHASE_ID);

prompt Creating WORKER...
create table WORKER
(
  worker_name        VARCHAR2(15) not null,
  worker_id          NUMBER(3) not null,
  start_of_work_date DATE not null
)
;
alter table WORKER
  add primary key (WORKER_ID);

prompt Creating PURCHASE_WORKER...
create table PURCHASE_WORKER
(
  worker_id   NUMBER(3) not null,
  purchase_id NUMBER(3) not null
)
;
alter table PURCHASE_WORKER
  add primary key (WORKER_ID, PURCHASE_ID);
alter table PURCHASE_WORKER
  add foreign key (WORKER_ID)
  references WORKER (WORKER_ID);
alter table PURCHASE_WORKER
  add foreign key (PURCHASE_ID)
  references PURCHASE (PURCHASE_ID);

prompt Creating SUPPLIER...
create table SUPPLIER
(
  supplier_id   NUMBER(3) not null,
  supplier_name VARCHAR2(15) not null,
  region        VARCHAR2(15) not null
)
;
alter table SUPPLIER
  add primary key (SUPPLIER_ID);

prompt Disabling triggers for PURCHASE...
alter table PURCHASE disable all triggers;
prompt Disabling triggers for PURCHASE_CLIENT...
alter table PURCHASE_CLIENT disable all triggers;
prompt Disabling triggers for PURCHASE_PRODUCT...
alter table PURCHASE_PRODUCT disable all triggers;
prompt Disabling triggers for WORKER...
alter table WORKER disable all triggers;
prompt Disabling triggers for PURCHASE_WORKER...
alter table PURCHASE_WORKER disable all triggers;
prompt Disabling triggers for SUPPLIER...
alter table SUPPLIER disable all triggers;
prompt Disabling foreign key constraints for PURCHASE_CLIENT...
alter table PURCHASE_CLIENT disable constraint SYS_C007054;
alter table PURCHASE_CLIENT disable constraint SYS_C007055;
prompt Disabling foreign key constraints for PURCHASE_PRODUCT...
alter table PURCHASE_PRODUCT disable constraint SYS_C007094;
alter table PURCHASE_PRODUCT disable constraint SYS_C007095;
prompt Disabling foreign key constraints for PURCHASE_WORKER...
alter table PURCHASE_WORKER disable constraint SYS_C007104;
alter table PURCHASE_WORKER disable constraint SYS_C007105;
prompt Deleting SUPPLIER...
delete from SUPPLIER;
commit;
prompt Deleting PURCHASE_WORKER...
delete from PURCHASE_WORKER;
commit;
prompt Deleting WORKER...
delete from WORKER;
commit;
prompt Deleting PURCHASE_PRODUCT...
delete from PURCHASE_PRODUCT;
commit;
prompt Deleting PURCHASE_CLIENT...
delete from PURCHASE_CLIENT;
commit;
prompt Deleting PURCHASE...
delete from PURCHASE;
commit;
prompt Loading PURCHASE...
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (604, to_date('27-03-2025', 'dd-mm-yyyy'), to_date('16-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (319, to_date('08-02-2025', 'dd-mm-yyyy'), to_date('02-05-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (348, to_date('28-03-2025', 'dd-mm-yyyy'), to_date('27-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (179, to_date('15-08-2025', 'dd-mm-yyyy'), to_date('14-08-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (388, to_date('23-12-2026', 'dd-mm-yyyy'), to_date('07-05-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (863, to_date('24-07-2025', 'dd-mm-yyyy'), to_date('14-03-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (116, to_date('21-05-2029', 'dd-mm-yyyy'), to_date('23-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (814, to_date('22-07-2029', 'dd-mm-yyyy'), to_date('05-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (474, to_date('04-01-2024', 'dd-mm-yyyy'), to_date('01-06-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (436, to_date('02-08-2028', 'dd-mm-yyyy'), to_date('21-10-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (339, to_date('11-09-2025', 'dd-mm-yyyy'), to_date('17-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (464, to_date('19-11-2028', 'dd-mm-yyyy'), to_date('06-02-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (676, to_date('29-05-2025', 'dd-mm-yyyy'), to_date('20-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (395, to_date('04-01-2027', 'dd-mm-yyyy'), to_date('22-03-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (183, to_date('27-02-2027', 'dd-mm-yyyy'), to_date('28-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (677, to_date('21-08-2024', 'dd-mm-yyyy'), to_date('09-04-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (611, to_date('18-06-2026', 'dd-mm-yyyy'), to_date('03-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (123, to_date('28-02-2030', 'dd-mm-yyyy'), to_date('06-10-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (852, to_date('22-05-2025', 'dd-mm-yyyy'), to_date('17-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (157, to_date('24-01-2027', 'dd-mm-yyyy'), to_date('03-07-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (843, to_date('17-10-2029', 'dd-mm-yyyy'), to_date('14-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (555, to_date('05-12-2024', 'dd-mm-yyyy'), to_date('21-03-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (208, to_date('09-12-2025', 'dd-mm-yyyy'), to_date('18-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (145, to_date('11-01-2025', 'dd-mm-yyyy'), to_date('29-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (778, to_date('25-02-2026', 'dd-mm-yyyy'), to_date('26-10-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (162, to_date('20-05-2024', 'dd-mm-yyyy'), to_date('26-03-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (377, to_date('04-10-2025', 'dd-mm-yyyy'), to_date('11-08-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (956, to_date('26-12-2030', 'dd-mm-yyyy'), to_date('07-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (911, to_date('14-01-2030', 'dd-mm-yyyy'), to_date('06-06-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (811, to_date('11-04-2028', 'dd-mm-yyyy'), to_date('05-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (605, to_date('08-06-2030', 'dd-mm-yyyy'), to_date('26-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (982, to_date('14-03-2030', 'dd-mm-yyyy'), to_date('19-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (993, to_date('21-03-2027', 'dd-mm-yyyy'), to_date('13-11-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (965, to_date('10-05-2024', 'dd-mm-yyyy'), to_date('08-09-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (847, to_date('21-06-2028', 'dd-mm-yyyy'), to_date('14-12-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (178, to_date('20-06-2028', 'dd-mm-yyyy'), to_date('29-11-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (976, to_date('13-04-2027', 'dd-mm-yyyy'), to_date('15-05-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (590, to_date('06-05-2025', 'dd-mm-yyyy'), to_date('05-06-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (638, to_date('22-07-2028', 'dd-mm-yyyy'), to_date('28-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (294, to_date('09-07-2027', 'dd-mm-yyyy'), to_date('03-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (307, to_date('19-11-2024', 'dd-mm-yyyy'), to_date('13-05-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (172, to_date('28-03-2026', 'dd-mm-yyyy'), to_date('22-06-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (207, to_date('12-04-2027', 'dd-mm-yyyy'), to_date('30-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (725, to_date('29-03-2027', 'dd-mm-yyyy'), to_date('07-11-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (702, to_date('31-08-2030', 'dd-mm-yyyy'), to_date('10-04-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (987, to_date('08-08-2028', 'dd-mm-yyyy'), to_date('28-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (189, to_date('21-07-2024', 'dd-mm-yyyy'), to_date('01-10-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (352, to_date('17-03-2028', 'dd-mm-yyyy'), to_date('16-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (851, to_date('26-08-2024', 'dd-mm-yyyy'), to_date('19-05-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (358, to_date('07-04-2024', 'dd-mm-yyyy'), to_date('10-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (648, to_date('02-03-2029', 'dd-mm-yyyy'), to_date('14-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (364, to_date('20-10-2026', 'dd-mm-yyyy'), to_date('29-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (498, to_date('05-05-2027', 'dd-mm-yyyy'), to_date('08-06-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (789, to_date('27-10-2025', 'dd-mm-yyyy'), to_date('13-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (554, to_date('18-12-2026', 'dd-mm-yyyy'), to_date('30-09-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (266, to_date('29-12-2028', 'dd-mm-yyyy'), to_date('25-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (130, to_date('26-03-2025', 'dd-mm-yyyy'), to_date('23-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (461, to_date('12-09-2030', 'dd-mm-yyyy'), to_date('21-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (878, to_date('07-04-2024', 'dd-mm-yyyy'), to_date('19-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (653, to_date('04-01-2029', 'dd-mm-yyyy'), to_date('31-05-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (508, to_date('03-12-2029', 'dd-mm-yyyy'), to_date('24-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (949, to_date('30-03-2030', 'dd-mm-yyyy'), to_date('14-04-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (968, to_date('08-09-2030', 'dd-mm-yyyy'), to_date('06-10-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (896, to_date('21-08-2024', 'dd-mm-yyyy'), to_date('12-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (444, to_date('17-07-2029', 'dd-mm-yyyy'), to_date('09-10-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (849, to_date('21-01-2024', 'dd-mm-yyyy'), to_date('23-06-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (833, to_date('15-02-2028', 'dd-mm-yyyy'), to_date('20-07-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (290, to_date('27-10-2027', 'dd-mm-yyyy'), to_date('15-06-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (516, to_date('08-03-2026', 'dd-mm-yyyy'), to_date('06-04-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (614, to_date('09-04-2024', 'dd-mm-yyyy'), to_date('31-03-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (805, to_date('23-06-2025', 'dd-mm-yyyy'), to_date('22-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (220, to_date('04-01-2025', 'dd-mm-yyyy'), to_date('08-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (724, to_date('25-09-2025', 'dd-mm-yyyy'), to_date('03-05-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (933, to_date('16-06-2028', 'dd-mm-yyyy'), to_date('04-02-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (801, to_date('02-07-2028', 'dd-mm-yyyy'), to_date('04-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (793, to_date('11-10-2030', 'dd-mm-yyyy'), to_date('21-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (795, to_date('18-08-2029', 'dd-mm-yyyy'), to_date('24-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (631, to_date('04-01-2025', 'dd-mm-yyyy'), to_date('29-01-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (366, to_date('14-09-2027', 'dd-mm-yyyy'), to_date('01-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (439, to_date('18-11-2030', 'dd-mm-yyyy'), to_date('01-04-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (809, to_date('05-12-2024', 'dd-mm-yyyy'), to_date('31-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (186, to_date('04-02-2030', 'dd-mm-yyyy'), to_date('06-09-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (650, to_date('14-02-2030', 'dd-mm-yyyy'), to_date('20-09-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (547, to_date('06-03-2028', 'dd-mm-yyyy'), to_date('28-03-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (504, to_date('14-10-2028', 'dd-mm-yyyy'), to_date('22-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (762, to_date('11-11-2024', 'dd-mm-yyyy'), to_date('13-04-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (821, to_date('05-07-2024', 'dd-mm-yyyy'), to_date('19-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (640, to_date('19-10-2030', 'dd-mm-yyyy'), to_date('16-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (600, to_date('15-08-2026', 'dd-mm-yyyy'), to_date('25-06-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (610, to_date('06-01-2028', 'dd-mm-yyyy'), to_date('02-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (258, to_date('14-09-2030', 'dd-mm-yyyy'), to_date('28-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (839, to_date('24-06-2030', 'dd-mm-yyyy'), to_date('23-08-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (527, to_date('20-07-2028', 'dd-mm-yyyy'), to_date('17-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (184, to_date('09-08-2027', 'dd-mm-yyyy'), to_date('28-06-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (257, to_date('15-04-2028', 'dd-mm-yyyy'), to_date('08-10-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (672, to_date('03-03-2026', 'dd-mm-yyyy'), to_date('03-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (935, to_date('13-05-2024', 'dd-mm-yyyy'), to_date('06-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (467, to_date('16-04-2024', 'dd-mm-yyyy'), to_date('30-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (393, to_date('06-04-2025', 'dd-mm-yyyy'), to_date('11-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (767, to_date('05-07-2030', 'dd-mm-yyyy'), to_date('30-08-2024', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (685, to_date('03-07-2030', 'dd-mm-yyyy'), to_date('21-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (728, to_date('23-02-2025', 'dd-mm-yyyy'), to_date('24-08-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (261, to_date('12-12-2027', 'dd-mm-yyyy'), to_date('11-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (460, to_date('19-07-2028', 'dd-mm-yyyy'), to_date('22-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (825, to_date('14-05-2026', 'dd-mm-yyyy'), to_date('01-09-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (705, to_date('15-07-2027', 'dd-mm-yyyy'), to_date('07-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (808, to_date('30-05-2030', 'dd-mm-yyyy'), to_date('03-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (478, to_date('14-09-2024', 'dd-mm-yyyy'), to_date('10-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (582, to_date('22-12-2030', 'dd-mm-yyyy'), to_date('10-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (885, to_date('07-01-2030', 'dd-mm-yyyy'), to_date('23-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (427, to_date('02-08-2026', 'dd-mm-yyyy'), to_date('04-06-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (782, to_date('29-12-2024', 'dd-mm-yyyy'), to_date('16-07-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (382, to_date('15-03-2028', 'dd-mm-yyyy'), to_date('14-08-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (587, to_date('25-02-2030', 'dd-mm-yyyy'), to_date('01-02-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (699, to_date('10-12-2026', 'dd-mm-yyyy'), to_date('19-09-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (556, to_date('22-11-2028', 'dd-mm-yyyy'), to_date('05-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (494, to_date('19-03-2024', 'dd-mm-yyyy'), to_date('31-10-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (837, to_date('19-08-2024', 'dd-mm-yyyy'), to_date('30-06-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (983, to_date('10-07-2028', 'dd-mm-yyyy'), to_date('16-11-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (454, to_date('01-05-2026', 'dd-mm-yyyy'), to_date('15-08-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (295, to_date('06-11-2029', 'dd-mm-yyyy'), to_date('30-12-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (948, to_date('10-07-2027', 'dd-mm-yyyy'), to_date('09-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (385, to_date('30-06-2028', 'dd-mm-yyyy'), to_date('14-10-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (522, to_date('28-03-2030', 'dd-mm-yyyy'), to_date('09-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (409, to_date('24-12-2029', 'dd-mm-yyyy'), to_date('15-11-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (376, to_date('15-04-2028', 'dd-mm-yyyy'), to_date('14-12-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (264, to_date('01-12-2028', 'dd-mm-yyyy'), to_date('16-03-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (749, to_date('13-03-2026', 'dd-mm-yyyy'), to_date('06-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (893, to_date('05-08-2029', 'dd-mm-yyyy'), to_date('16-06-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (649, to_date('11-03-2025', 'dd-mm-yyyy'), to_date('23-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (412, to_date('20-02-2024', 'dd-mm-yyyy'), to_date('03-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (141, to_date('07-02-2030', 'dd-mm-yyyy'), to_date('13-10-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (637, to_date('19-02-2024', 'dd-mm-yyyy'), to_date('27-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (799, to_date('24-02-2024', 'dd-mm-yyyy'), to_date('18-06-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (137, to_date('26-03-2027', 'dd-mm-yyyy'), to_date('15-10-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (239, to_date('22-09-2025', 'dd-mm-yyyy'), to_date('22-08-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (780, to_date('28-01-2030', 'dd-mm-yyyy'), to_date('27-07-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (149, to_date('21-01-2029', 'dd-mm-yyyy'), to_date('20-09-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (941, to_date('19-02-2028', 'dd-mm-yyyy'), to_date('20-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (570, to_date('26-02-2029', 'dd-mm-yyyy'), to_date('10-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (296, to_date('08-12-2030', 'dd-mm-yyyy'), to_date('01-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (629, to_date('11-06-2025', 'dd-mm-yyyy'), to_date('03-07-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (691, to_date('19-02-2029', 'dd-mm-yyyy'), to_date('15-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (397, to_date('22-10-2029', 'dd-mm-yyyy'), to_date('20-02-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (817, to_date('21-08-2025', 'dd-mm-yyyy'), to_date('11-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (758, to_date('05-08-2027', 'dd-mm-yyyy'), to_date('29-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (874, to_date('11-01-2030', 'dd-mm-yyyy'), to_date('29-12-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (177, to_date('27-11-2029', 'dd-mm-yyyy'), to_date('06-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (868, to_date('25-08-2027', 'dd-mm-yyyy'), to_date('06-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (110, to_date('17-01-2025', 'dd-mm-yyyy'), to_date('20-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (175, to_date('05-01-2029', 'dd-mm-yyyy'), to_date('18-04-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (422, to_date('05-10-2024', 'dd-mm-yyyy'), to_date('22-11-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (625, to_date('16-04-2024', 'dd-mm-yyyy'), to_date('04-06-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (963, to_date('27-03-2027', 'dd-mm-yyyy'), to_date('30-11-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (740, to_date('20-06-2029', 'dd-mm-yyyy'), to_date('08-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (523, to_date('01-11-2025', 'dd-mm-yyyy'), to_date('04-10-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (776, to_date('10-10-2026', 'dd-mm-yyyy'), to_date('05-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (855, to_date('17-06-2026', 'dd-mm-yyyy'), to_date('09-06-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (857, to_date('08-08-2030', 'dd-mm-yyyy'), to_date('02-11-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (410, to_date('24-12-2026', 'dd-mm-yyyy'), to_date('24-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (297, to_date('18-03-2025', 'dd-mm-yyyy'), to_date('29-06-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (564, to_date('27-06-2025', 'dd-mm-yyyy'), to_date('16-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (323, to_date('10-06-2027', 'dd-mm-yyyy'), to_date('22-07-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (573, to_date('02-02-2029', 'dd-mm-yyyy'), to_date('18-11-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (344, to_date('27-10-2030', 'dd-mm-yyyy'), to_date('22-05-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (111, to_date('16-01-2024', 'dd-mm-yyyy'), to_date('28-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (652, to_date('01-10-2028', 'dd-mm-yyyy'), to_date('17-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (201, to_date('23-06-2029', 'dd-mm-yyyy'), to_date('09-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (877, to_date('25-10-2025', 'dd-mm-yyyy'), to_date('29-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (932, to_date('27-09-2028', 'dd-mm-yyyy'), to_date('26-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (218, to_date('28-07-2026', 'dd-mm-yyyy'), to_date('04-11-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (219, to_date('18-08-2028', 'dd-mm-yyyy'), to_date('23-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (539, to_date('31-10-2024', 'dd-mm-yyyy'), to_date('08-11-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (727, to_date('19-05-2029', 'dd-mm-yyyy'), to_date('20-07-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (531, to_date('14-12-2024', 'dd-mm-yyyy'), to_date('16-10-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (197, to_date('25-02-2026', 'dd-mm-yyyy'), to_date('23-06-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (430, to_date('30-12-2028', 'dd-mm-yyyy'), to_date('28-08-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (456, to_date('04-12-2025', 'dd-mm-yyyy'), to_date('06-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (190, to_date('16-01-2025', 'dd-mm-yyyy'), to_date('15-10-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (337, to_date('02-05-2024', 'dd-mm-yyyy'), to_date('11-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (400, to_date('06-07-2028', 'dd-mm-yyyy'), to_date('13-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (205, to_date('25-11-2026', 'dd-mm-yyyy'), to_date('31-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (288, to_date('13-01-2024', 'dd-mm-yyyy'), to_date('26-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (310, to_date('14-09-2026', 'dd-mm-yyyy'), to_date('04-02-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (742, to_date('29-01-2025', 'dd-mm-yyyy'), to_date('03-05-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (813, to_date('10-06-2028', 'dd-mm-yyyy'), to_date('05-02-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (918, to_date('16-03-2028', 'dd-mm-yyyy'), to_date('06-04-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (404, to_date('02-11-2030', 'dd-mm-yyyy'), to_date('03-06-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (748, to_date('01-12-2024', 'dd-mm-yyyy'), to_date('07-04-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (381, to_date('28-02-2024', 'dd-mm-yyyy'), to_date('15-02-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (543, to_date('28-08-2030', 'dd-mm-yyyy'), to_date('26-08-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (589, to_date('04-10-2028', 'dd-mm-yyyy'), to_date('26-05-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (443, to_date('21-01-2026', 'dd-mm-yyyy'), to_date('22-01-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (255, to_date('27-05-2025', 'dd-mm-yyyy'), to_date('02-03-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (670, to_date('01-02-2024', 'dd-mm-yyyy'), to_date('30-11-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (603, to_date('04-11-2029', 'dd-mm-yyyy'), to_date('08-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (551, to_date('21-11-2025', 'dd-mm-yyyy'), to_date('14-02-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (229, to_date('15-06-2026', 'dd-mm-yyyy'), to_date('25-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (815, to_date('28-03-2025', 'dd-mm-yyyy'), to_date('28-12-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (711, to_date('29-01-2030', 'dd-mm-yyyy'), to_date('13-04-2024', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (269, to_date('17-11-2027', 'dd-mm-yyyy'), to_date('08-02-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (591, to_date('14-11-2028', 'dd-mm-yyyy'), to_date('13-04-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (254, to_date('21-06-2025', 'dd-mm-yyyy'), to_date('19-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (929, to_date('17-11-2029', 'dd-mm-yyyy'), to_date('09-05-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (618, to_date('12-12-2025', 'dd-mm-yyyy'), to_date('25-03-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (788, to_date('22-09-2026', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (226, to_date('10-06-2030', 'dd-mm-yyyy'), to_date('10-09-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (971, to_date('28-10-2027', 'dd-mm-yyyy'), to_date('14-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (867, to_date('02-11-2024', 'dd-mm-yyyy'), to_date('16-03-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (350, to_date('12-04-2029', 'dd-mm-yyyy'), to_date('26-10-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (526, to_date('14-01-2024', 'dd-mm-yyyy'), to_date('03-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (741, to_date('28-03-2026', 'dd-mm-yyyy'), to_date('17-08-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (950, to_date('31-07-2027', 'dd-mm-yyyy'), to_date('08-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (881, to_date('25-12-2027', 'dd-mm-yyyy'), to_date('08-10-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (124, to_date('28-06-2026', 'dd-mm-yyyy'), to_date('31-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (644, to_date('06-02-2029', 'dd-mm-yyyy'), to_date('27-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (368, to_date('01-04-2028', 'dd-mm-yyyy'), to_date('26-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (280, to_date('28-04-2027', 'dd-mm-yyyy'), to_date('14-01-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (155, to_date('24-12-2027', 'dd-mm-yyyy'), to_date('30-10-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (916, to_date('14-07-2025', 'dd-mm-yyyy'), to_date('18-10-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (930, to_date('02-10-2025', 'dd-mm-yyyy'), to_date('17-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (777, to_date('24-01-2029', 'dd-mm-yyyy'), to_date('13-02-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (442, to_date('11-05-2028', 'dd-mm-yyyy'), to_date('25-05-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (969, to_date('16-07-2030', 'dd-mm-yyyy'), to_date('11-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (506, to_date('15-11-2028', 'dd-mm-yyyy'), to_date('31-05-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (734, to_date('15-05-2029', 'dd-mm-yyyy'), to_date('24-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (171, to_date('20-02-2026', 'dd-mm-yyyy'), to_date('19-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (118, to_date('15-02-2025', 'dd-mm-yyyy'), to_date('29-11-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (479, to_date('16-09-2029', 'dd-mm-yyyy'), to_date('06-02-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (407, to_date('11-03-2024', 'dd-mm-yyyy'), to_date('31-05-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (645, to_date('08-02-2028', 'dd-mm-yyyy'), to_date('20-02-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (246, to_date('28-05-2026', 'dd-mm-yyyy'), to_date('29-04-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (580, to_date('23-05-2027', 'dd-mm-yyyy'), to_date('28-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (844, to_date('01-06-2026', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (129, to_date('05-12-2027', 'dd-mm-yyyy'), to_date('09-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (720, to_date('08-06-2027', 'dd-mm-yyyy'), to_date('05-02-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (925, to_date('06-06-2026', 'dd-mm-yyyy'), to_date('06-02-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (818, to_date('09-01-2028', 'dd-mm-yyyy'), to_date('03-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (891, to_date('11-04-2030', 'dd-mm-yyyy'), to_date('11-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (101, to_date('17-10-2030', 'dd-mm-yyyy'), to_date('24-09-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (302, to_date('03-11-2027', 'dd-mm-yyyy'), to_date('14-11-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (332, to_date('09-10-2025', 'dd-mm-yyyy'), to_date('08-11-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (519, to_date('25-07-2029', 'dd-mm-yyyy'), to_date('15-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (380, to_date('17-01-2028', 'dd-mm-yyyy'), to_date('02-09-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (306, to_date('14-02-2026', 'dd-mm-yyyy'), to_date('06-11-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (515, to_date('20-08-2030', 'dd-mm-yyyy'), to_date('26-04-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (369, to_date('21-02-2025', 'dd-mm-yyyy'), to_date('10-09-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (892, to_date('19-03-2026', 'dd-mm-yyyy'), to_date('01-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (566, to_date('15-03-2025', 'dd-mm-yyyy'), to_date('25-05-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (390, to_date('15-11-2024', 'dd-mm-yyyy'), to_date('05-06-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (598, to_date('06-04-2029', 'dd-mm-yyyy'), to_date('05-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (117, to_date('29-08-2029', 'dd-mm-yyyy'), to_date('07-11-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (533, to_date('05-07-2025', 'dd-mm-yyyy'), to_date('02-08-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (535, to_date('27-07-2025', 'dd-mm-yyyy'), to_date('09-11-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (206, to_date('25-03-2024', 'dd-mm-yyyy'), to_date('04-06-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (505, to_date('24-04-2030', 'dd-mm-yyyy'), to_date('08-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (944, to_date('17-07-2024', 'dd-mm-yyyy'), to_date('22-06-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (169, to_date('08-01-2028', 'dd-mm-yyyy'), to_date('29-09-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (990, to_date('09-01-2030', 'dd-mm-yyyy'), to_date('04-01-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (770, to_date('29-10-2028', 'dd-mm-yyyy'), to_date('06-08-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (912, to_date('28-11-2027', 'dd-mm-yyyy'), to_date('04-02-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (899, to_date('27-07-2024', 'dd-mm-yyyy'), to_date('20-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (810, to_date('16-03-2030', 'dd-mm-yyyy'), to_date('12-11-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (624, to_date('25-04-2027', 'dd-mm-yyyy'), to_date('31-05-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (667, to_date('04-10-2027', 'dd-mm-yyyy'), to_date('24-12-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (173, to_date('14-11-2026', 'dd-mm-yyyy'), to_date('16-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (514, to_date('29-06-2027', 'dd-mm-yyyy'), to_date('22-08-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (466, to_date('14-02-2026', 'dd-mm-yyyy'), to_date('31-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (658, to_date('04-06-2026', 'dd-mm-yyyy'), to_date('11-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (832, to_date('20-11-2024', 'dd-mm-yyyy'), to_date('18-08-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (939, to_date('18-12-2029', 'dd-mm-yyyy'), to_date('05-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (717, to_date('04-04-2025', 'dd-mm-yyyy'), to_date('24-02-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (105, to_date('09-08-2026', 'dd-mm-yyyy'), to_date('25-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (321, to_date('08-08-2029', 'dd-mm-yyyy'), to_date('06-03-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (633, to_date('29-12-2027', 'dd-mm-yyyy'), to_date('28-10-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (729, to_date('22-02-2027', 'dd-mm-yyyy'), to_date('26-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (700, to_date('27-05-2028', 'dd-mm-yyyy'), to_date('06-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (154, to_date('07-07-2027', 'dd-mm-yyyy'), to_date('03-11-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (946, to_date('17-08-2028', 'dd-mm-yyyy'), to_date('07-01-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (666, to_date('30-07-2030', 'dd-mm-yyyy'), to_date('02-12-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (991, to_date('09-10-2027', 'dd-mm-yyyy'), to_date('07-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (247, to_date('27-07-2028', 'dd-mm-yyyy'), to_date('24-04-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (827, to_date('27-10-2029', 'dd-mm-yyyy'), to_date('03-06-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (225, to_date('14-02-2024', 'dd-mm-yyyy'), to_date('15-07-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (534, to_date('16-07-2029', 'dd-mm-yyyy'), to_date('17-06-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (260, to_date('10-12-2024', 'dd-mm-yyyy'), to_date('06-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (903, to_date('10-07-2025', 'dd-mm-yyyy'), to_date('20-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (938, to_date('07-11-2030', 'dd-mm-yyyy'), to_date('16-10-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (662, to_date('14-10-2025', 'dd-mm-yyyy'), to_date('14-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (627, to_date('25-06-2024', 'dd-mm-yyyy'), to_date('04-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (796, to_date('15-03-2025', 'dd-mm-yyyy'), to_date('28-06-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (544, to_date('07-12-2029', 'dd-mm-yyyy'), to_date('04-12-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (797, to_date('26-07-2030', 'dd-mm-yyyy'), to_date('21-02-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (765, to_date('05-04-2026', 'dd-mm-yyyy'), to_date('08-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (664, to_date('03-03-2026', 'dd-mm-yyyy'), to_date('10-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (790, to_date('21-01-2028', 'dd-mm-yyyy'), to_date('06-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (865, to_date('23-06-2030', 'dd-mm-yyyy'), to_date('22-02-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (730, to_date('21-06-2029', 'dd-mm-yyyy'), to_date('23-11-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (235, to_date('16-01-2026', 'dd-mm-yyyy'), to_date('15-10-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (324, to_date('03-11-2028', 'dd-mm-yyyy'), to_date('22-04-2029', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (606, to_date('22-07-2027', 'dd-mm-yyyy'), to_date('12-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (673, to_date('18-02-2028', 'dd-mm-yyyy'), to_date('31-10-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (182, to_date('01-09-2024', 'dd-mm-yyyy'), to_date('18-03-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (739, to_date('01-03-2024', 'dd-mm-yyyy'), to_date('12-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (304, to_date('24-07-2026', 'dd-mm-yyyy'), to_date('18-12-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (998, to_date('03-03-2027', 'dd-mm-yyyy'), to_date('09-10-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (655, to_date('12-10-2027', 'dd-mm-yyyy'), to_date('29-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (492, to_date('06-01-2030', 'dd-mm-yyyy'), to_date('22-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (828, to_date('05-05-2026', 'dd-mm-yyyy'), to_date('15-11-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (872, to_date('03-05-2029', 'dd-mm-yyyy'), to_date('29-11-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (824, to_date('25-02-2025', 'dd-mm-yyyy'), to_date('11-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (146, to_date('20-01-2025', 'dd-mm-yyyy'), to_date('10-11-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (919, to_date('28-01-2027', 'dd-mm-yyyy'), to_date('27-07-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (602, to_date('22-12-2030', 'dd-mm-yyyy'), to_date('16-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (571, to_date('09-09-2025', 'dd-mm-yyyy'), to_date('19-10-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (771, to_date('13-11-2024', 'dd-mm-yyyy'), to_date('24-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (340, to_date('01-11-2025', 'dd-mm-yyyy'), to_date('02-08-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (181, to_date('28-03-2030', 'dd-mm-yyyy'), to_date('30-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (854, to_date('25-08-2024', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (542, to_date('30-10-2028', 'dd-mm-yyyy'), to_date('28-07-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (663, to_date('25-11-2030', 'dd-mm-yyyy'), to_date('18-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (913, to_date('08-06-2024', 'dd-mm-yyyy'), to_date('28-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (905, to_date('08-01-2024', 'dd-mm-yyyy'), to_date('30-12-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (387, to_date('01-01-2029', 'dd-mm-yyyy'), to_date('12-02-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (158, to_date('25-06-2029', 'dd-mm-yyyy'), to_date('03-02-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (986, to_date('29-03-2028', 'dd-mm-yyyy'), to_date('28-02-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (265, to_date('26-06-2024', 'dd-mm-yyyy'), to_date('11-07-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (546, to_date('06-10-2029', 'dd-mm-yyyy'), to_date('28-12-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (707, to_date('16-01-2024', 'dd-mm-yyyy'), to_date('10-03-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (906, to_date('05-05-2025', 'dd-mm-yyyy'), to_date('02-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (768, to_date('25-06-2029', 'dd-mm-yyyy'), to_date('30-05-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (540, to_date('18-07-2030', 'dd-mm-yyyy'), to_date('23-05-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (609, to_date('12-12-2026', 'dd-mm-yyyy'), to_date('22-12-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (209, to_date('21-03-2024', 'dd-mm-yyyy'), to_date('15-10-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (715, to_date('12-11-2026', 'dd-mm-yyyy'), to_date('13-07-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (485, to_date('28-03-2026', 'dd-mm-yyyy'), to_date('06-09-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (371, to_date('24-06-2024', 'dd-mm-yyyy'), to_date('15-05-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (639, to_date('01-08-2027', 'dd-mm-yyyy'), to_date('22-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (253, to_date('30-07-2026', 'dd-mm-yyyy'), to_date('06-02-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (530, to_date('21-03-2025', 'dd-mm-yyyy'), to_date('26-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (584, to_date('02-07-2026', 'dd-mm-yyyy'), to_date('03-05-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (417, to_date('24-12-2027', 'dd-mm-yyyy'), to_date('29-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (864, to_date('08-04-2028', 'dd-mm-yyyy'), to_date('23-03-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (697, to_date('14-06-2025', 'dd-mm-yyyy'), to_date('09-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (528, to_date('05-04-2026', 'dd-mm-yyyy'), to_date('02-06-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (470, to_date('26-06-2030', 'dd-mm-yyyy'), to_date('10-12-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (626, to_date('27-04-2030', 'dd-mm-yyyy'), to_date('14-01-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (884, to_date('08-08-2026', 'dd-mm-yyyy'), to_date('01-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (634, to_date('17-10-2025', 'dd-mm-yyyy'), to_date('14-08-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (834, to_date('24-05-2025', 'dd-mm-yyyy'), to_date('04-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (308, to_date('27-01-2024', 'dd-mm-yyyy'), to_date('26-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (379, to_date('06-01-2030', 'dd-mm-yyyy'), to_date('08-10-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (636, to_date('25-06-2028', 'dd-mm-yyyy'), to_date('11-05-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (999, to_date('15-06-2024', 'dd-mm-yyyy'), to_date('21-04-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (894, to_date('10-02-2024', 'dd-mm-yyyy'), to_date('22-04-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (882, to_date('21-05-2028', 'dd-mm-yyyy'), to_date('03-11-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (343, to_date('27-07-2026', 'dd-mm-yyyy'), to_date('28-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (274, to_date('19-10-2027', 'dd-mm-yyyy'), to_date('15-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (284, to_date('19-01-2026', 'dd-mm-yyyy'), to_date('14-07-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (755, to_date('13-10-2027', 'dd-mm-yyyy'), to_date('24-07-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (977, to_date('07-09-2027', 'dd-mm-yyyy'), to_date('08-02-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (736, to_date('04-03-2027', 'dd-mm-yyyy'), to_date('27-02-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (907, to_date('17-09-2029', 'dd-mm-yyyy'), to_date('10-05-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (500, to_date('17-03-2024', 'dd-mm-yyyy'), to_date('04-01-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (572, to_date('10-12-2026', 'dd-mm-yyyy'), to_date('18-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (335, to_date('04-10-2026', 'dd-mm-yyyy'), to_date('28-07-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (841, to_date('11-10-2027', 'dd-mm-yyyy'), to_date('13-02-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (674, to_date('07-07-2030', 'dd-mm-yyyy'), to_date('06-04-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (413, to_date('09-09-2026', 'dd-mm-yyyy'), to_date('25-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (954, to_date('14-03-2026', 'dd-mm-yyyy'), to_date('21-08-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (168, to_date('09-09-2028', 'dd-mm-yyyy'), to_date('01-08-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (651, to_date('26-08-2030', 'dd-mm-yyyy'), to_date('03-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (426, to_date('08-12-2029', 'dd-mm-yyyy'), to_date('02-08-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (160, to_date('12-02-2024', 'dd-mm-yyyy'), to_date('02-11-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (131, to_date('08-04-2026', 'dd-mm-yyyy'), to_date('06-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (268, to_date('12-06-2025', 'dd-mm-yyyy'), to_date('15-05-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (803, to_date('17-11-2024', 'dd-mm-yyyy'), to_date('11-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (970, to_date('18-05-2027', 'dd-mm-yyyy'), to_date('02-06-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (469, to_date('22-10-2025', 'dd-mm-yyyy'), to_date('19-09-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (305, to_date('18-12-2027', 'dd-mm-yyyy'), to_date('25-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (180, to_date('03-04-2025', 'dd-mm-yyyy'), to_date('02-02-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (753, to_date('08-08-2030', 'dd-mm-yyyy'), to_date('20-03-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (126, to_date('11-04-2025', 'dd-mm-yyyy'), to_date('03-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (448, to_date('03-09-2029', 'dd-mm-yyyy'), to_date('31-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (128, to_date('07-09-2029', 'dd-mm-yyyy'), to_date('06-10-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (104, to_date('26-06-2029', 'dd-mm-yyyy'), to_date('01-01-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (721, to_date('25-03-2025', 'dd-mm-yyyy'), to_date('05-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (423, to_date('14-04-2027', 'dd-mm-yyyy'), to_date('15-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (270, to_date('29-01-2025', 'dd-mm-yyyy'), to_date('16-05-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (613, to_date('04-05-2029', 'dd-mm-yyyy'), to_date('21-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (228, to_date('03-03-2024', 'dd-mm-yyyy'), to_date('01-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (349, to_date('30-04-2025', 'dd-mm-yyyy'), to_date('22-03-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (365, to_date('22-07-2030', 'dd-mm-yyyy'), to_date('17-06-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (277, to_date('28-11-2027', 'dd-mm-yyyy'), to_date('31-10-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (457, to_date('25-12-2030', 'dd-mm-yyyy'), to_date('12-04-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (862, to_date('16-04-2028', 'dd-mm-yyyy'), to_date('10-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (125, to_date('22-05-2026', 'dd-mm-yyyy'), to_date('03-09-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (517, to_date('04-01-2029', 'dd-mm-yyyy'), to_date('07-06-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (244, to_date('15-02-2025', 'dd-mm-yyyy'), to_date('14-10-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (518, to_date('05-04-2026', 'dd-mm-yyyy'), to_date('21-10-2029', 'dd-mm-yyyy'));
commit;
prompt 400 records committed...
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (238, to_date('23-06-2028', 'dd-mm-yyyy'), to_date('11-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (746, to_date('21-02-2028', 'dd-mm-yyyy'), to_date('26-06-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (563, to_date('15-11-2029', 'dd-mm-yyyy'), to_date('26-06-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (445, to_date('24-04-2026', 'dd-mm-yyyy'), to_date('21-05-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (769, to_date('23-07-2026', 'dd-mm-yyyy'), to_date('01-11-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (831, to_date('29-12-2024', 'dd-mm-yyyy'), to_date('23-05-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (951, to_date('08-01-2029', 'dd-mm-yyyy'), to_date('16-04-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (537, to_date('17-09-2024', 'dd-mm-yyyy'), to_date('10-08-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (785, to_date('27-02-2024', 'dd-mm-yyyy'), to_date('16-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (121, to_date('31-08-2027', 'dd-mm-yyyy'), to_date('19-02-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (552, to_date('14-02-2030', 'dd-mm-yyyy'), to_date('03-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (798, to_date('14-05-2030', 'dd-mm-yyyy'), to_date('13-08-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (953, to_date('16-11-2028', 'dd-mm-yyyy'), to_date('22-08-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (414, to_date('03-12-2029', 'dd-mm-yyyy'), to_date('22-12-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (120, to_date('12-04-2029', 'dd-mm-yyyy'), to_date('08-12-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (133, to_date('05-08-2027', 'dd-mm-yyyy'), to_date('03-11-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (334, to_date('24-02-2025', 'dd-mm-yyyy'), to_date('25-04-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (415, to_date('22-06-2025', 'dd-mm-yyyy'), to_date('19-01-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (754, to_date('08-11-2024', 'dd-mm-yyyy'), to_date('10-08-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (227, to_date('15-06-2028', 'dd-mm-yyyy'), to_date('23-09-2027', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (763, to_date('24-04-2024', 'dd-mm-yyyy'), to_date('02-02-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (320, to_date('23-08-2028', 'dd-mm-yyyy'), to_date('03-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (623, to_date('28-10-2028', 'dd-mm-yyyy'), to_date('22-12-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (287, to_date('31-07-2025', 'dd-mm-yyyy'), to_date('31-07-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (812, to_date('02-06-2029', 'dd-mm-yyyy'), to_date('27-11-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (106, to_date('17-06-2024', 'dd-mm-yyyy'), to_date('31-03-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (588, to_date('09-06-2029', 'dd-mm-yyyy'), to_date('26-02-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (693, to_date('16-08-2027', 'dd-mm-yyyy'), to_date('29-01-2024', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (973, to_date('07-06-2029', 'dd-mm-yyyy'), to_date('12-11-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (314, to_date('11-06-2025', 'dd-mm-yyyy'), to_date('04-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (792, to_date('28-10-2027', 'dd-mm-yyyy'), to_date('17-04-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (779, to_date('01-06-2029', 'dd-mm-yyyy'), to_date('16-08-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (622, to_date('20-02-2026', 'dd-mm-yyyy'), to_date('13-06-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (732, to_date('04-10-2027', 'dd-mm-yyyy'), to_date('09-09-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (401, to_date('28-01-2029', 'dd-mm-yyyy'), to_date('11-12-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (140, to_date('03-02-2026', 'dd-mm-yyyy'), to_date('27-12-2025', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (241, to_date('14-10-2026', 'dd-mm-yyyy'), to_date('26-09-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (558, to_date('30-09-2027', 'dd-mm-yyyy'), to_date('29-07-2029', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (712, to_date('12-03-2030', 'dd-mm-yyyy'), to_date('16-12-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (166, to_date('24-09-2024', 'dd-mm-yyyy'), to_date('05-12-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (752, to_date('07-07-2025', 'dd-mm-yyyy'), to_date('14-01-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (641, to_date('28-02-2028', 'dd-mm-yyyy'), to_date('25-02-2030', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (822, to_date('31-07-2024', 'dd-mm-yyyy'), to_date('28-01-2026', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (509, to_date('12-04-2027', 'dd-mm-yyyy'), to_date('16-06-2028', 'dd-mm-yyyy'));
insert into PURCHASE (purchase_id, purchase_date, dellivery_date)
values (281, to_date('18-10-2025', 'dd-mm-yyyy'), to_date('13-05-2024', 'dd-mm-yyyy'));
commit;
prompt 445 records loaded
prompt Loading PURCHASE_CLIENT...
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (1, 677);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (1, 852);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (2, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (3, 814);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (5, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (9, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (9, 605);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (9, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (13, 814);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (19, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (22, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (23, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (24, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (24, 811);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (26, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (26, 814);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (27, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (28, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (28, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (29, 863);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (35, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (36, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (36, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (37, 863);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (45, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (48, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (49, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (50, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (52, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (54, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (57, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (58, 852);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (61, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (62, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (65, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (67, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (67, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (68, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (70, 811);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (70, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (74, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (75, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (75, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (81, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (84, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (89, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (92, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (94, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (95, 863);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (95, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (98, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (98, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (99, 811);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (101, 101);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (101, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (104, 104);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (105, 105);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (106, 106);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (106, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (107, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (108, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (109, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (109, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (110, 110);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (110, 863);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (111, 111);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (112, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (114, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (115, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (116, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (117, 117);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (117, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (118, 118);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (119, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (120, 120);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (120, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (120, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (121, 121);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (123, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (124, 124);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (125, 125);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (126, 126);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (127, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (128, 128);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (128, 852);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (129, 129);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (130, 130);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (131, 131);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (133, 133);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (133, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (137, 137);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (139, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (139, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (140, 140);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (141, 141);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (144, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (145, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (145, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (146, 146);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (148, 348);
commit;
prompt 100 records committed...
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (148, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (149, 149);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (151, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (154, 154);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (154, 852);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (155, 155);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (156, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (156, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (157, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (157, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (158, 158);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (160, 160);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (161, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (161, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (162, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (162, 956);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (164, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (166, 166);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (168, 168);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (169, 169);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (171, 171);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (172, 172);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (173, 173);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (175, 175);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (176, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (177, 177);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (177, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (178, 178);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (179, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (180, 180);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (181, 181);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (182, 182);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (183, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (183, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (184, 184);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (185, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (185, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (186, 186);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (187, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (188, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (188, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (188, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (189, 189);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (190, 190);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (195, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (195, 811);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (195, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (197, 197);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (200, 605);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (201, 101);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (201, 201);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (201, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (202, 778);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (203, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (203, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (204, 104);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (204, 956);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (205, 105);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (205, 205);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (206, 106);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (206, 206);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (207, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (207, 207);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (207, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (208, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (209, 209);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (209, 778);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (210, 110);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (211, 111);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (212, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (212, 863);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (213, 605);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (216, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (216, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (216, 778);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (217, 117);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (218, 118);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (218, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (218, 218);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (219, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (219, 219);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (219, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (220, 120);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (220, 220);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (220, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (221, 121);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (221, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (223, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (223, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (223, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (224, 124);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (225, 125);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (225, 225);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (226, 126);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (226, 226);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (226, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (227, 227);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (228, 128);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (228, 228);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (229, 129);
commit;
prompt 200 records committed...
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (229, 229);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (230, 130);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (231, 131);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (231, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (232, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (232, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (233, 133);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (235, 235);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (236, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (237, 137);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (238, 238);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (239, 239);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (239, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (240, 140);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (241, 141);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (241, 241);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (244, 244);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (245, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (245, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (245, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (246, 146);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (246, 246);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (247, 247);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (248, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (249, 149);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (251, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (253, 253);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (253, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (254, 154);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (254, 254);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (254, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (255, 155);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (255, 255);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (257, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (257, 257);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (258, 158);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (258, 258);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (259, 778);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (260, 160);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (260, 260);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (261, 261);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (262, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (264, 264);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (264, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (264, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (265, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (265, 265);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (266, 166);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (266, 266);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (268, 168);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (268, 268);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (269, 169);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (269, 269);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (270, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (270, 270);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (271, 171);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (271, 852);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (272, 172);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (272, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (273, 173);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (274, 274);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (274, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (274, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (275, 175);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (276, 852);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (277, 177);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (277, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (277, 277);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (277, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (277, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (278, 178);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (279, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (280, 180);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (280, 280);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (281, 181);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (281, 281);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (282, 182);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (283, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (283, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (284, 184);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (284, 284);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (285, 605);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (286, 186);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (287, 287);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (288, 288);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (288, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (289, 189);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (290, 190);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (290, 290);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (291, 863);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (293, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (294, 294);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (295, 295);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (295, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (296, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (296, 296);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (297, 197);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (297, 297);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (298, 778);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (300, 605);
commit;
prompt 300 records committed...
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (300, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (301, 201);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (302, 302);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (302, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (304, 304);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (305, 205);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (305, 305);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (306, 206);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (306, 306);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (307, 207);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (307, 307);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (308, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (308, 308);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (308, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (309, 209);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (309, 555);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (310, 310);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (310, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (310, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (314, 314);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (315, 956);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (316, 116);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (318, 218);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (319, 219);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (319, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (320, 220);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (320, 320);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (321, 321);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (323, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (323, 323);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (324, 324);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (325, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (325, 225);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (325, 811);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (326, 226);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (327, 227);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (328, 228);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (329, 229);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (330, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (331, 677);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (332, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (332, 332);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (334, 334);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (335, 235);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (335, 335);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (336, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (337, 337);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (338, 238);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (339, 239);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (339, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (340, 340);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (341, 241);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (343, 343);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (344, 244);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (344, 344);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (344, 956);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (345, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (346, 246);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (347, 247);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (348, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (348, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (349, 349);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (350, 350);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (350, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (352, 352);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (353, 253);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (354, 254);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (355, 255);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (355, 555);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (357, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (357, 257);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (358, 258);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (358, 358);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (359, 339);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (359, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (359, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (360, 260);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (361, 261);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (362, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (363, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (364, 264);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (364, 364);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (364, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (365, 265);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (365, 365);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (366, 266);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (366, 366);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (368, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (368, 268);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (368, 368);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (368, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (369, 269);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (369, 369);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (370, 270);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (370, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (371, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (371, 371);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (371, 778);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (372, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (372, 436);
commit;
prompt 400 records committed...
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (373, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (374, 274);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (374, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (374, 474);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (376, 376);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (377, 277);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (377, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (377, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (379, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (379, 179);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (379, 379);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (380, 280);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (380, 380);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (381, 281);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (381, 381);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (382, 382);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (383, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (384, 284);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (385, 385);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (386, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (387, 287);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (387, 387);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (387, 956);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (388, 288);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (388, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (389, 319);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (390, 290);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (390, 390);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (390, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (393, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (393, 393);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (394, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (394, 294);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (395, 295);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (395, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (396, 296);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (396, 395);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (396, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (397, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (397, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (397, 297);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (397, 397);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (400, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (400, 400);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (400, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (405, 305);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (405, 605);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (423, 123);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (423, 323);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (423, 423);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (462, 162);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (487, 387);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (489, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (492, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (492, 814);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (501, 401);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (501, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (504, 404);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (504, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (512, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (512, 412);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (513, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (513, 413);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (536, 436);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (544, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (544, 444);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (551, 388);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (551, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (555, 555);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (592, 492);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (608, 208);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (611, 611);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (611, 811);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (615, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (685, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (704, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (704, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (727, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (728, 676);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (730, 377);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (764, 464);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (791, 157);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (830, 604);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (868, 183);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (896, 145);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (896, 843);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (920, 605);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (928, 911);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (955, 555);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (975, 348);
insert into PURCHASE_CLIENT (client_id, purchase_id)
values (998, 183);
commit;
prompt 491 records loaded
prompt Loading PURCHASE_PRODUCT...
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (101, 101);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (101, 162);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (104, 104);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (105, 105);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (107, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (109, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (109, 811);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (109, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (110, 110);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (111, 111);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (116, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (116, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (116, 339);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (117, 117);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (118, 118);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (120, 120);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (121, 121);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (123, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (123, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (124, 124);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (126, 126);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (128, 128);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (129, 129);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (130, 130);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (131, 131);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (133, 133);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (139, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (140, 140);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (141, 141);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (145, 145);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (157, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (159, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (164, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (166, 166);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (166, 388);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (167, 388);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (171, 171);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (172, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (172, 172);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (177, 177);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (178, 178);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (182, 145);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (182, 182);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (183, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (183, 208);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (184, 184);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (199, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (201, 201);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (203, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (205, 205);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (205, 604);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (207, 207);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (209, 209);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (213, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (218, 218);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (220, 220);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (226, 226);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (227, 227);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (228, 228);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (229, 229);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (229, 811);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (229, 852);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (230, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (235, 235);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (239, 239);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (240, 474);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (241, 241);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (243, 604);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (244, 244);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (247, 247);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (253, 253);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (257, 257);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (264, 264);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (264, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (266, 266);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (271, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (274, 274);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (277, 277);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (283, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (284, 284);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (288, 288);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (291, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (295, 295);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (296, 296);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (302, 302);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (304, 304);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (305, 305);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (305, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (307, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (307, 307);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (310, 310);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (310, 388);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (312, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (314, 314);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (317, 162);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (318, 348);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (320, 320);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (320, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (320, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (321, 321);
commit;
prompt 100 records committed...
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (323, 323);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (324, 324);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (331, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (332, 332);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (333, 464);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (335, 335);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (339, 339);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (339, 604);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (340, 340);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (340, 778);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (343, 343);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (343, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (344, 344);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (348, 348);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (357, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (357, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (364, 364);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (366, 366);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (371, 371);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (377, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (377, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (382, 382);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (384, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (388, 388);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (395, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (395, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (399, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (400, 400);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (401, 401);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (403, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (404, 404);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (407, 407);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (409, 409);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (410, 410);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (410, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (412, 412);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (413, 179);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (413, 413);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (414, 414);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (415, 415);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (417, 417);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (417, 555);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (418, 179);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (423, 423);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (426, 426);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (427, 427);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (427, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (430, 430);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (430, 604);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (436, 436);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (439, 439);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (442, 442);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (443, 443);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (444, 444);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (444, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (445, 445);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (448, 448);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (448, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (456, 456);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (457, 457);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (463, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (464, 464);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (466, 466);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (467, 467);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (474, 474);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (478, 478);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (482, 319);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (482, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (492, 492);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (500, 500);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (504, 504);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (505, 505);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (507, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (509, 509);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (513, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (514, 514);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (515, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (515, 515);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (516, 183);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (516, 516);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (517, 517);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (518, 518);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (523, 523);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (524, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (524, 555);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (526, 526);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (527, 527);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (528, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (528, 528);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (528, 604);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (530, 530);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (531, 531);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (533, 533);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (535, 474);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (535, 535);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (539, 539);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (539, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (540, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (540, 540);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (541, 436);
commit;
prompt 200 records committed...
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (542, 542);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (543, 543);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (544, 348);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (544, 544);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (547, 547);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (556, 556);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (557, 474);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (557, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (559, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (563, 563);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (564, 564);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (566, 566);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (571, 571);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (572, 572);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (577, 145);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (582, 582);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (583, 319);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (584, 584);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (588, 588);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (588, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (591, 591);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (600, 600);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (602, 602);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (603, 603);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (604, 348);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (604, 604);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (605, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (605, 811);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (606, 606);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (606, 811);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (606, 911);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (607, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (609, 609);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (610, 610);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (611, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (611, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (613, 613);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (613, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (614, 614);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (616, 339);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (618, 618);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (622, 388);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (622, 622);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (623, 623);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (624, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (624, 624);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (625, 625);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (626, 626);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (627, 627);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (628, 852);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (628, 911);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (629, 629);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (630, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (630, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (630, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (631, 631);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (633, 633);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (633, 911);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (634, 634);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (636, 636);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (637, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (637, 464);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (637, 637);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (637, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (638, 638);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (639, 639);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (640, 640);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (641, 641);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (644, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (644, 644);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (645, 645);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (648, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (648, 648);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (651, 651);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (653, 653);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (655, 655);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (656, 388);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (658, 658);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (662, 662);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (663, 663);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (664, 664);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (665, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (666, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (666, 666);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (667, 667);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (670, 670);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (671, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (672, 672);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (673, 673);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (674, 674);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (675, 179);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (676, 676);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (677, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (682, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (684, 436);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (685, 685);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (691, 691);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (694, 778);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (694, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (699, 699);
commit;
prompt 300 records committed...
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (700, 700);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (702, 702);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (704, 911);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (705, 676);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (705, 705);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (709, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (711, 711);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (712, 712);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (715, 715);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (717, 717);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (720, 720);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (721, 721);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (723, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (724, 724);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (725, 725);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (727, 727);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (728, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (728, 728);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (729, 729);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (730, 730);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (732, 732);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (734, 734);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (736, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (736, 736);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (739, 739);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (739, 852);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (740, 740);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (741, 741);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (742, 742);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (743, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (744, 162);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (746, 746);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (748, 748);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (749, 749);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (752, 752);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (753, 753);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (754, 754);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (755, 755);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (757, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (758, 758);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (759, 605);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (762, 762);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (763, 763);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (765, 765);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (767, 767);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (768, 768);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (768, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (769, 769);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (770, 770);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (771, 771);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (775, 555);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (776, 776);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (776, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (777, 777);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (778, 778);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (779, 779);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (780, 780);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (782, 782);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (785, 785);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (788, 788);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (789, 789);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (790, 790);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (791, 162);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (792, 208);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (792, 792);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (793, 793);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (795, 795);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (796, 796);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (797, 676);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (797, 797);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (799, 799);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (801, 801);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (803, 803);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (803, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (805, 805);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (808, 808);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (809, 809);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (810, 810);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (811, 811);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (812, 812);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (813, 813);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (814, 814);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (815, 815);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (816, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (817, 817);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (817, 852);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (818, 818);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (819, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (821, 821);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (822, 822);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (823, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (824, 824);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (825, 825);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (827, 162);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (827, 827);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (828, 611);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (828, 828);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (830, 157);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (831, 831);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (832, 832);
commit;
prompt 400 records committed...
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (833, 319);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (833, 833);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (834, 834);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (837, 837);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (837, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (839, 348);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (839, 839);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (841, 841);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (843, 843);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (844, 844);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (847, 179);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (847, 847);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (849, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (849, 849);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (851, 319);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (851, 851);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (852, 319);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (852, 852);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (853, 339);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (853, 555);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (854, 854);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (857, 857);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (862, 862);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (863, 208);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (863, 377);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (863, 863);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (863, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (864, 864);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (864, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (865, 865);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (867, 867);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (868, 778);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (868, 868);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (870, 395);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (870, 555);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (871, 319);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (872, 872);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (874, 874);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (877, 811);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (877, 877);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (877, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (878, 878);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (880, 123);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (880, 145);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (881, 881);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (882, 882);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (883, 956);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (884, 884);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (885, 885);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (886, 677);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (891, 891);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (892, 116);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (892, 892);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (893, 179);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (893, 893);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (894, 894);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (895, 348);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (896, 896);
insert into PURCHASE_PRODUCT (product_id, purchase_id)
values (899, 899);
commit;
prompt 459 records loaded
prompt Loading WORKER...
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wNIphurCXr', 158, to_date('22-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('puxetLwKiI', 657, to_date('16-11-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CQdRtxWwse', 794, to_date('22-02-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('fBQlCbHYDF', 640, to_date('10-08-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('VVZPsTNsdu', 131, to_date('09-02-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WenaOnSMuX', 381, to_date('03-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qHyXvQubmi', 651, to_date('28-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uRcpOpRhcl', 269, to_date('25-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tSfOPJzCuC', 172, to_date('03-02-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LbSDWHroML', 289, to_date('23-09-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XSMzHonvPn', 541, to_date('21-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yBETYoLSLE', 844, to_date('12-02-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jYbNUuafyx', 705, to_date('11-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DfaqtdNerj', 807, to_date('06-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QmWenKDtiy', 105, to_date('29-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LXlZoEKAZT', 855, to_date('22-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LEolmByKar', 744, to_date('24-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jUzleQCzVd', 280, to_date('31-08-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ziVrVEBGSU', 361, to_date('14-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vBguqBtnTO', 113, to_date('28-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LMHneGcjSs', 938, to_date('14-02-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qBDWviOnPd', 209, to_date('19-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('oTFsXBdyST', 591, to_date('19-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sGjuiFIfkw', 666, to_date('07-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OcpeYvkFoC', 355, to_date('24-07-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LeJxgaFhLR', 790, to_date('13-08-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TLwiJwTUge', 835, to_date('16-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ncrsBoTani', 616, to_date('16-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YuIQQgwssZ', 739, to_date('13-11-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RwMOElWpzo', 643, to_date('04-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RzzphUKGOv', 944, to_date('16-09-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jnguVFOEtx', 518, to_date('13-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('igFPQwpXZJ', 188, to_date('03-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RhjwTDmwKE', 136, to_date('12-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FQsmAmfyvD', 618, to_date('17-11-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SGoTzXTpMY', 494, to_date('22-11-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HcrrvVRAsK', 695, to_date('27-03-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GPhhxdywyH', 564, to_date('01-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QWoRASgRaq', 357, to_date('06-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rrUKELHOmX', 992, to_date('13-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vscBzCJjhH', 514, to_date('20-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NuLDfrVvGt', 419, to_date('05-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('URACssXXip', 367, to_date('07-04-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NFrUypuGIQ', 966, to_date('30-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BfgZhqoTRV', 509, to_date('28-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('lAmYEUUiqt', 978, to_date('08-04-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FHpIWhjFjl', 737, to_date('02-02-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vVZtBQpAGw', 799, to_date('23-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XgxfyHfeoH', 279, to_date('01-07-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('fltgPPdjum', 839, to_date('14-12-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('MEvYixIQWe', 722, to_date('08-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jYHaNSkYiy', 630, to_date('27-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rAmOYjywKP', 786, to_date('01-01-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PSXwABoVxN', 180, to_date('09-11-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SZjwqdciFI', 902, to_date('16-03-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('lGFyPlPsRG', 761, to_date('07-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ulBgmakWLA', 454, to_date('18-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IaVNNewCHE', 928, to_date('16-08-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vTqyOfmxlH', 278, to_date('21-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('cPMgPVHPpj', 323, to_date('15-08-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('VImXfpyIkT', 340, to_date('08-12-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('codRbqqYuN', 879, to_date('08-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qruxnykGWc', 575, to_date('14-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uppQBAyjVu', 512, to_date('25-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YmDIgNmBcw', 585, to_date('05-02-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HxnwyDaczK', 332, to_date('13-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GQAqQnAlBG', 256, to_date('13-11-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('iBokoIqrtK', 932, to_date('26-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PLSGuDgUCd', 955, to_date('03-12-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SCvaQeERbD', 815, to_date('25-09-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dWWIqoKpjE', 670, to_date('22-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SweqTMAFzv', 137, to_date('29-10-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HOHhFUxEHB', 574, to_date('17-06-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TVHLheyXqX', 847, to_date('12-11-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LVmTNcucSQ', 108, to_date('15-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('eLwpVykqww', 548, to_date('20-02-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NVYGusCsjP', 974, to_date('21-05-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GZKOMaScCY', 578, to_date('06-02-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PBBEGmSCOB', 614, to_date('02-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RBRnzciWaF', 254, to_date('19-06-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WAWgDvppVd', 781, to_date('13-04-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rWiNlKuDwj', 193, to_date('07-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hphoKSGmAk', 873, to_date('25-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ARHuiDAUhy', 594, to_date('13-09-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uoawxjqsNz', 552, to_date('04-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SYyJeMSWUo', 365, to_date('21-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KgZbtaNcPG', 120, to_date('27-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sygoVxtZIo', 304, to_date('03-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wemmTSPkiR', 843, to_date('04-10-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KYmRsfrGld', 664, to_date('16-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DTHJVLijsL', 487, to_date('28-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wHBIlfAkDm', 680, to_date('28-11-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZgexKJaCbi', 756, to_date('16-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('aALtGIqGdO', 816, to_date('28-11-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hEyeQGJNkO', 960, to_date('13-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZAgpomQoGE', 908, to_date('26-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DOMuCnwvjX', 593, to_date('08-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EEDecCKTMk', 252, to_date('07-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YVgHyAoHmP', 154, to_date('02-09-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NYgHjHUFRi', 961, to_date('30-01-2030', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ctfPLOkJGb', 445, to_date('28-10-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('caQXruPFmJ', 106, to_date('01-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dqJNkZSipS', 751, to_date('21-09-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QRkiQSjZFM', 171, to_date('15-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('isNugTcYpW', 673, to_date('29-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bSxSbsSiWX', 842, to_date('24-02-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yjOykJCZUx', 472, to_date('31-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CVtVQwmyri', 692, to_date('20-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ugKlvqJQql', 196, to_date('02-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HJfNUjHqLo', 793, to_date('11-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('cwAFbfbtxy', 303, to_date('15-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PUvCSORgHq', 546, to_date('17-01-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xxfJedYTul', 635, to_date('28-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PYBgSyhLaO', 129, to_date('05-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RrmFpWuYLG', 721, to_date('30-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('cWJRTXfeqn', 868, to_date('19-04-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RAwNggvDZm', 920, to_date('05-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PFSGENbAKV', 592, to_date('31-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nvHYJlEaMB', 516, to_date('15-09-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tsvNSDLayw', 661, to_date('03-05-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UnWlRDNrqm', 586, to_date('24-08-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nGBoNPasme', 124, to_date('12-08-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('fxUlOQOJbv', 503, to_date('06-04-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hTFNNKRAVg', 590, to_date('15-09-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qsrpJdGOqW', 613, to_date('15-08-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('URxfxTHvOe', 422, to_date('04-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JtnrWLzWRb', 272, to_date('06-06-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NQBmodNtGp', 572, to_date('03-11-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('AHiFqthFDk', 257, to_date('12-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WSIMDgjnMW', 678, to_date('27-02-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('oHWpEQZeSd', 802, to_date('23-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BCcCAXPqLU', 599, to_date('14-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RyyMLFfxLN', 943, to_date('15-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZXaPBIzSmb', 526, to_date('11-09-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('USzxGxVRxi', 890, to_date('28-02-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KPBxhCOdYr', 832, to_date('16-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OcbcoQkncN', 525, to_date('01-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bWhuRaSsZe', 762, to_date('23-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JOnOeRTZDB', 649, to_date('10-12-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LeSqRmgoLA', 531, to_date('07-03-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qPiBpsAZoO', 935, to_date('14-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gVPRaKQNMi', 773, to_date('27-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WobuFoMydg', 429, to_date('14-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RkgCazIijF', 353, to_date('23-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DihovFHzhK', 898, to_date('18-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bnAjqcMeqs', 259, to_date('15-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jQPrMyyAGB', 610, to_date('20-04-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EwNncaqHVP', 294, to_date('07-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('pJQjwCZhmT', 505, to_date('28-03-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ncfCeylxQK', 121, to_date('20-06-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FxStAbbPhm', 109, to_date('12-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nPECpcDjLI', 223, to_date('27-02-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dnYVGnZOdw', 862, to_date('24-01-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('umYgbqAlzH', 861, to_date('17-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KpfvCiryEX', 749, to_date('28-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hlWuHZONJp', 202, to_date('27-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('cthCWnSBrJ', 694, to_date('12-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('MziCLbIJtF', 561, to_date('17-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FbslAStfJv', 579, to_date('18-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZclTPvnJxf', 207, to_date('04-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PCRswRUGEF', 406, to_date('13-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EqAGrWFpHc', 557, to_date('01-11-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OKsowRYIIT', 836, to_date('23-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IMPMuBpyai', 688, to_date('22-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SoEJLkEctp', 359, to_date('22-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WWWzyDFvva', 442, to_date('01-10-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('iLWtmiLRUX', 963, to_date('10-05-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QtVXXryoPW', 394, to_date('24-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FzyDrDpeMW', 859, to_date('29-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bXVjOMlBkR', 457, to_date('23-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('MAWdvgvgBz', 611, to_date('23-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('weRUOGvujg', 900, to_date('06-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZFHeKyOISP', 177, to_date('19-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dJPEdpbpeB', 268, to_date('12-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nwHroRmusN', 140, to_date('09-09-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xSxBrgiPfY', 909, to_date('21-02-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WvKUmobkTj', 335, to_date('04-12-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CMhplglpHc', 218, to_date('19-03-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FyOgzRsUWd', 468, to_date('08-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('kNHnaiCLst', 959, to_date('06-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qHizOqkflh', 691, to_date('17-12-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('roNjRkxoyN', 476, to_date('01-04-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FbGIuJIwbk', 948, to_date('14-03-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vvwkzKokjj', 199, to_date('13-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TdihvSTYSW', 791, to_date('07-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZIiNddfhQg', 502, to_date('13-11-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CJqDTlWovH', 247, to_date('07-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EGJWOpjHHZ', 245, to_date('22-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RCCAnXZmgL', 852, to_date('01-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dyadIbfMPa', 939, to_date('01-01-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZiXMYPnPBJ', 837, to_date('05-01-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('elXTvkQKvQ', 250, to_date('06-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RKaBrqwKlJ', 341, to_date('02-03-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BYaqfKmnjp', 184, to_date('18-01-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dPPXTiAURg', 498, to_date('26-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sRrExnGarx', 778, to_date('15-11-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DgFVFrkicR', 127, to_date('17-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('AFvDKLFWRP', 329, to_date('16-08-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FZAFkjqExk', 746, to_date('25-04-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LFAdVGUwfm', 130, to_date('05-11-2025', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dJfUqLHOxN', 418, to_date('17-01-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('kJDRlpxqXa', 432, to_date('02-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UffJuTFzez', 621, to_date('22-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jCBInGDWhs', 173, to_date('08-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('VIzasGLQKc', 542, to_date('26-10-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('fvNbmbXBbh', 339, to_date('13-07-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CiuVTxeGaw', 264, to_date('20-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BHFaehRPYo', 153, to_date('23-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uICuuuhNQc', 865, to_date('05-02-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hQTchgrSsd', 880, to_date('20-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WycPPvKzgS', 428, to_date('05-08-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vSSPQMDlon', 237, to_date('17-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OnprdqiHdZ', 648, to_date('11-08-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xcqvtTbRYB', 267, to_date('26-04-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wYRoebsBmO', 527, to_date('25-03-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RaEIooRNTv', 797, to_date('13-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sQyHNOkOAx', 783, to_date('31-12-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('pcQXSmNsIS', 973, to_date('21-05-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ipwwHWNCEZ', 382, to_date('27-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('VAupsYeBSP', 984, to_date('25-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TqaEtIUBMr', 731, to_date('08-08-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bAeZcGhhac', 251, to_date('19-06-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ncQozySmbu', 285, to_date('10-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FwqREOEbHB', 820, to_date('24-02-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('iCZQtasDnR', 570, to_date('27-02-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TedyzyDapo', 320, to_date('25-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QUBVteCYxi', 412, to_date('07-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EnnAvFFAIu', 286, to_date('09-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('slUrpzvajE', 377, to_date('07-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rdjhpImUyL', 185, to_date('10-02-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wOrAvDTnOF', 334, to_date('17-04-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ksoatANLOr', 449, to_date('28-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RcqJyPJUSz', 671, to_date('06-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yElaUfvJYI', 450, to_date('29-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DTDWfppNQo', 213, to_date('23-04-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vjOCDGjkfA', 993, to_date('20-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gIfNdCPipr', 363, to_date('02-01-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TbYwEvKcQu', 822, to_date('13-03-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wVccRNTwaf', 321, to_date('16-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YzFGFltYSg', 302, to_date('04-08-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GmIxAvmOiU', 774, to_date('24-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ifugbOEigW', 826, to_date('18-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UHiSEAKQEF', 126, to_date('26-09-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CGzDUvMlUq', 860, to_date('16-02-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bqtCzCNjzF', 346, to_date('09-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gFytZkCDJT', 297, to_date('25-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wgPiCijuQk', 632, to_date('17-01-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nxFnRIxuvT', 660, to_date('29-06-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UAyALXiRuT', 972, to_date('12-06-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('eTzWxWfuWG', 446, to_date('07-03-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vZdERUmWwN', 147, to_date('14-03-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FqlVWSEVgk', 698, to_date('14-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('cobMEtlzQQ', 249, to_date('10-11-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KWHzBzlZvy', 848, to_date('07-08-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KpzfMjqaKu', 219, to_date('19-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GvoWmWaACM', 582, to_date('25-03-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rSVvzEDnqF', 544, to_date('16-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NiPZKkkuRm', 165, to_date('14-12-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rEycyHELTe', 471, to_date('02-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('syhqtGVqBs', 715, to_date('25-01-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PBAQKWTiAq', 627, to_date('05-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('lEaUEirSgH', 965, to_date('31-10-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sfSYMjLJVK', 674, to_date('25-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OHAsJTUllv', 523, to_date('23-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('zxOFIPMSVA', 169, to_date('09-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DKbnEPZrSe', 318, to_date('13-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xSFvWGhoxP', 248, to_date('18-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('knNnkqbBFP', 813, to_date('17-02-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('MsBVFrNdTJ', 504, to_date('21-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nKQRvnsFxC', 281, to_date('13-10-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OfzvUBtYZg', 833, to_date('26-08-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IFLwmsQXuI', 182, to_date('01-11-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XIhPdKycLs', 662, to_date('23-12-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('OBuUqsKOGo', 311, to_date('18-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WXnbuXKZMo', 934, to_date('28-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hiiubliGmA', 911, to_date('26-07-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xhsOaFYgyU', 945, to_date('14-12-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hbZflclogO', 291, to_date('25-08-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('iRssupUNvb', 139, to_date('07-11-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('cXsWgtJtdt', 804, to_date('07-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mULNrvGuRX', 324, to_date('10-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FeSxaxMVwN', 522, to_date('26-09-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('brtbDLtBbN', 577, to_date('20-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TpIcIJAzEB', 888, to_date('22-11-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PoajTFImRj', 834, to_date('21-01-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('oJKrbwdDHU', 904, to_date('24-08-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JbBqtjGIGY', 354, to_date('09-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RZcWsJweyh', 775, to_date('12-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UrxjDcmrTY', 584, to_date('13-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('efDTzAjmqD', 782, to_date('18-08-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('pWTdaxJghq', 186, to_date('01-02-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QyqvtEMruL', 748, to_date('02-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qSrLPIsTre', 179, to_date('30-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KtYlVjUlui', 144, to_date('11-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QwbWNsMkjK', 481, to_date('18-08-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mkfosAnnVr', 421, to_date('03-05-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QcuVJQeHNi', 496, to_date('30-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QKtVzADvHt', 543, to_date('16-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BmnNufUmIT', 641, to_date('29-02-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ONfRWrSGoh', 433, to_date('25-09-2028', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('haKRraOFXu', 212, to_date('04-12-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UbTbmzCieH', 747, to_date('09-05-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TtwzHfISeu', 600, to_date('19-09-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QrPrNYAEen', 598, to_date('07-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QuNOzREOhE', 736, to_date('30-03-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('PhrixWJyeh', 947, to_date('25-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tksfvpnyLE', 216, to_date('23-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TStnDAEOIV', 164, to_date('24-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GlQjQPVJYk', 700, to_date('03-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('APDPeJhzDA', 501, to_date('16-11-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('zqelSjRGSB', 970, to_date('15-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UTYumfCLJA', 441, to_date('16-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XwKgVxvqKf', 203, to_date('25-11-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IXuaLKrcSo', 741, to_date('13-10-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EnGaScHpCx', 765, to_date('10-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KDZgWCjHbS', 637, to_date('30-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dFPZEAsOGh', 407, to_date('04-12-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hYSJtwbEUg', 296, to_date('05-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rrbGzRVXku', 515, to_date('31-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZGKDkcuPxS', 913, to_date('19-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JEYChhcMsy', 489, to_date('02-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IZkPhMsUGP', 366, to_date('13-09-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XRmUknqOIZ', 478, to_date('23-06-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ALwrUHVIko', 438, to_date('23-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('firzFaNnYd', 742, to_date('23-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TKYHnoSEsL', 103, to_date('02-05-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('opBuyJeSCI', 347, to_date('03-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('eLxdBvWCxm', 520, to_date('07-04-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('VWjkcMsgYq', 292, to_date('03-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TVXIODQiov', 152, to_date('24-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HWOJTxtNRv', 596, to_date('14-11-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RLsINFKHDy', 234, to_date('30-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YQMjLrpvmv', 244, to_date('26-01-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wuuhzWzSoU', 352, to_date('29-12-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QgBpQgDmmT', 239, to_date('10-10-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SRqLgxwxxn', 682, to_date('07-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tQUtAyoMZB', 710, to_date('08-03-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xmamJDAMoI', 227, to_date('02-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IDAYkulHNy', 625, to_date('25-07-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xNvKGoxMRK', 118, to_date('26-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZDDYHIvpWf', 128, to_date('22-12-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('zbyXiuLARy', 393, to_date('10-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LhgoLbOfIV', 940, to_date('14-06-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rNkEEZdQVM', 283, to_date('01-12-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ehHASMXNdb', 288, to_date('21-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HriDdijaSb', 497, to_date('28-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WvnDFqAZrt', 539, to_date('15-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qbmUPyTRzs', 982, to_date('14-01-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CsnfFUArFg', 821, to_date('20-08-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('pdLLmFMKSH', 917, to_date('13-07-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bTyFNbjfKP', 455, to_date('12-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bstWkVLVHi', 937, to_date('03-01-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RMgyVylKJn', 358, to_date('30-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('viIsSmbMFE', 976, to_date('14-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ALWICLbgDm', 551, to_date('04-06-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GpuzYjcLME', 952, to_date('10-02-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tOCKkkvfXp', 191, to_date('18-01-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YZVMskhyNK', 401, to_date('20-09-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yNSEUcTDkn', 146, to_date('24-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jMcqyjFKLx', 510, to_date('12-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NINvtwoKhT', 994, to_date('07-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UkdxHeyamf', 434, to_date('07-04-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DJnCrirMXI', 414, to_date('22-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SjTIcxolgQ', 979, to_date('08-04-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gVWcktNcMH', 931, to_date('09-02-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IVaYFhhtHM', 392, to_date('23-07-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yOmriIhjlW', 469, to_date('21-04-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uwqDTuKhbL', 876, to_date('14-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JemHIYlftw', 941, to_date('19-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('puBwUvfjAx', 545, to_date('23-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BezaMMddgw', 877, to_date('29-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JkLxZFVuwp', 134, to_date('04-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('AoKUlbEgWa', 306, to_date('15-09-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TmOuzxqMaY', 803, to_date('19-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('aNFRotGrie', 924, to_date('14-02-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TlgBPUBuzp', 348, to_date('02-06-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('enzknTrTLf', 123, to_date('14-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('eguCZFtzRd', 205, to_date('29-11-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xaGbbpSnls', 322, to_date('19-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('BIEVgCahEU', 190, to_date('24-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CJtmfwkwER', 656, to_date('04-10-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('fllQFAcUQM', 779, to_date('06-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('fZpyYpUaXa', 603, to_date('03-06-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qkqjRlUUil', 270, to_date('25-02-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hHuAORJJvd', 726, to_date('30-03-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hMecbzuxnX', 667, to_date('25-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZqgQWrAwcs', 369, to_date('02-12-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ijCXrTjwhE', 116, to_date('16-05-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CDMNZqlztz', 409, to_date('17-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ctCfxuxrtN', 408, to_date('11-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('eWgBgBnDFw', 104, to_date('14-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RqWEhAXaIE', 684, to_date('20-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tzTnMAWJJI', 675, to_date('14-05-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('jPLBAvurfQ', 142, to_date('09-02-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ESHGmWuPaW', 513, to_date('07-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qFYpZgCyfj', 589, to_date('24-06-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('qDVbWdYvaJ', 111, to_date('31-01-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yUIQqQShIp', 642, to_date('22-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gZLwAGpmEm', 566, to_date('05-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mhLqfUyVRU', 331, to_date('29-06-2027', 'dd-mm-yyyy'));
commit;
prompt 400 records committed...
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EQyYHZuIAw', 679, to_date('22-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('JLpCIIqWcJ', 776, to_date('29-11-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dIOJYVKNgg', 729, to_date('23-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('oNgWhmaLMr', 410, to_date('24-10-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('kopRCBozNj', 629, to_date('24-10-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sqazLFeZbP', 919, to_date('27-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WIyoNdSvPJ', 242, to_date('10-07-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hlrAVFMHgc', 317, to_date('08-09-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('eWjmfjmjId', 996, to_date('18-03-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hCrCpVypWm', 681, to_date('15-11-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EHXyHCsNpj', 470, to_date('29-04-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('VcZgVKllbi', 201, to_date('19-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YFOtICGdGa', 728, to_date('23-01-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('kaXKJAzJIH', 477, to_date('27-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('lsiszKazQI', 150, to_date('13-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XhdFnsdjZc', 789, to_date('16-02-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KnuMvDhkzs', 665, to_date('19-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KlCJysTzAv', 533, to_date('17-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xdoRUunoVY', 933, to_date('25-08-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('CNNYXCcIYr', 601, to_date('31-10-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('EzuXAUkTLp', 159, to_date('30-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HRCEhpZxLA', 936, to_date('15-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('kLHprvgStz', 883, to_date('12-07-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('bzJLxzNKON', 232, to_date('03-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TjYxavemQK', 788, to_date('14-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NSqMxTtYNY', 166, to_date('07-06-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('zFqlqZcWmf', 668, to_date('31-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wQPFuNUcCp', 588, to_date('15-05-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FyJFdbDXbe', 371, to_date('06-01-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xRHfRYISnb', 863, to_date('04-12-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mnRTKwXcck', 443, to_date('31-08-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZJhduUEgru', 808, to_date('26-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nBLlWLcgWD', 183, to_date('27-04-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('KXyLVaIzdT', 801, to_date('18-08-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('wkqOVlvjRH', 336, to_date('17-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('muQGsUzfNJ', 912, to_date('12-02-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('YllkzQCwjn', 204, to_date('09-03-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DXeMVzSTmY', 387, to_date('31-03-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('FeXngcUVpB', 950, to_date('15-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uasjdPjaAm', 619, to_date('10-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NMaWfoTrAS', 398, to_date('20-01-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DLOFDqWhXw', 645, to_date('06-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('NtLOnGtSGM', 149, to_date('01-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LeCNqeWAbt', 293, to_date('27-07-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DzCoTELrfI', 135, to_date('20-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('HuBwbmUFVv', 211, to_date('14-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XmzSNdjkwC', 399, to_date('07-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gUPuTITMvP', 112, to_date('22-09-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ewzGMghkuh', 274, to_date('10-12-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('iiybbjmAho', 604, to_date('12-12-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('gXQqzZwtHF', 989, to_date('18-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('arXyKkUuJU', 758, to_date('18-05-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QfrOVyFzmi', 606, to_date('07-09-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dxvrpnMMda', 733, to_date('09-07-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sAqheuDhps', 170, to_date('02-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yVEJokyoUl', 757, to_date('03-03-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('GONWfnmJYj', 750, to_date('21-10-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('sZSpmLtkfW', 719, to_date('11-11-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('UIKbTLptjk', 792, to_date('19-08-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('aCoXaEuzlK', 874, to_date('17-06-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('yWNOkniTzx', 390, to_date('01-09-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('DBDtzFhuti', 745, to_date('17-11-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('esXPugoyXb', 241, to_date('09-11-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('LiljHwojYI', 624, to_date('14-03-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('skSgbdrQRD', 536, to_date('21-09-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('terlVmaRtH', 727, to_date('26-12-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ePrzmiqjJF', 538, to_date('07-01-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ryDFPJNxdY', 703, to_date('22-11-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('SDAHScflCx', 896, to_date('23-12-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dEdnqCRStK', 563, to_date('07-05-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('oOizagSAau', 951, to_date('23-02-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nXEUPBJQyF', 565, to_date('12-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ATgOCyXgvc', 949, to_date('05-11-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TYZlhlWMnC', 313, to_date('11-09-2027', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ZdAJvlzmJV', 402, to_date('19-01-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mLushwbwrl', 990, to_date('20-06-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TKjQGidwkB', 465, to_date('06-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('hZzGKFjAfn', 730, to_date('08-02-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('oBwpGBxKeU', 263, to_date('18-11-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('WYPvvheqbG', 519, to_date('07-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mGolgZtDvE', 732, to_date('30-12-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('IKBiXJXdiD', 308, to_date('15-08-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('nsHRXTnKck', 850, to_date('12-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('mteInjzisf', 462, to_date('24-07-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('XIKoIdOieD', 233, to_date('28-04-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('vFokUVBlmj', 277, to_date('30-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('tmkTYvstjJ', 766, to_date('23-09-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('aKtwYjsYBH', 615, to_date('31-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('xAaHEKmFfU', 867, to_date('06-04-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('pPuQvFkZAO', 983, to_date('31-05-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('dvtlmrYTsP', 325, to_date('01-12-2026', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('uuWCOQPtop', 464, to_date('01-04-2024', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('ErnATsByMD', 373, to_date('29-04-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('QClMDojYmd', 458, to_date('08-11-2025', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('AqexZbzHHf', 568, to_date('01-03-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('rJXZCYWAqj', 208, to_date('29-01-2030', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('lmFWftbXNv', 388, to_date('22-05-2029', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('RTotRoTYNS', 975, to_date('18-08-2028', 'dd-mm-yyyy'));
insert into WORKER (worker_name, worker_id, start_of_work_date)
values ('TobsLJfEsw', 549, to_date('29-06-2024', 'dd-mm-yyyy'));
commit;
prompt 499 records loaded
prompt Loading PURCHASE_WORKER...
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (104, 104);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (104, 208);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (104, 811);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (105, 105);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (106, 106);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (108, 208);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (111, 111);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (116, 116);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (118, 118);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (120, 120);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (121, 121);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (123, 123);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (124, 124);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (126, 126);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (128, 128);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (129, 129);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (130, 130);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (131, 131);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (135, 179);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (136, 436);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (137, 137);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (139, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (140, 140);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (146, 146);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (149, 149);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (154, 154);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (158, 158);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (164, 464);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (166, 166);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (166, 676);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (169, 169);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (171, 171);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (172, 172);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (173, 173);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (177, 177);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (177, 377);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (179, 179);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (180, 180);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (182, 182);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (183, 183);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (184, 184);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (186, 186);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (188, 388);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (190, 190);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (201, 101);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (201, 201);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (204, 104);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (204, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (205, 105);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (205, 205);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (205, 605);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (207, 207);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (208, 208);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (209, 209);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (211, 111);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (211, 611);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (216, 116);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (216, 811);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (218, 118);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (218, 218);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (219, 219);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (219, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (223, 123);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (227, 145);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (227, 227);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (233, 133);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (237, 137);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (239, 239);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (239, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (241, 141);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (241, 241);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (244, 244);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (245, 145);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (247, 247);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (248, 348);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (249, 149);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (254, 154);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (254, 254);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (257, 157);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (257, 257);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (264, 264);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (264, 464);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (268, 168);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (268, 268);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (269, 169);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (269, 269);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (270, 157);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (270, 270);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (272, 172);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (274, 274);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (274, 474);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (277, 177);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (277, 277);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (277, 377);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (278, 178);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (279, 179);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (280, 180);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (280, 280);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (281, 181);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (281, 281);
commit;
prompt 100 records committed...
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (283, 183);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (286, 186);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (288, 288);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (288, 388);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (289, 189);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (294, 294);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (296, 296);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (297, 197);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (297, 297);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (302, 302);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (304, 304);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (304, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (306, 206);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (306, 306);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (308, 208);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (308, 308);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (311, 611);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (318, 218);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (320, 220);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (320, 320);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (321, 321);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (323, 123);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (323, 323);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (324, 324);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (325, 225);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (329, 229);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (329, 605);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (332, 332);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (334, 334);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (335, 235);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (335, 335);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (336, 436);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (339, 239);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (339, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (340, 340);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (341, 241);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (346, 246);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (347, 247);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (348, 348);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (352, 352);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (353, 253);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (353, 852);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (354, 254);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (355, 255);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (355, 555);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (357, 157);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (357, 257);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (358, 258);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (358, 358);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (361, 261);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (365, 265);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (365, 365);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (366, 266);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (366, 366);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (369, 269);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (369, 369);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (371, 371);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (377, 277);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (377, 377);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (377, 677);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (381, 281);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (381, 381);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (382, 382);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (387, 287);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (387, 387);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (388, 288);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (388, 388);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (390, 290);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (390, 390);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (393, 393);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (394, 294);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (401, 401);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (402, 302);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (406, 306);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (407, 307);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (407, 407);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (408, 208);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (408, 308);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (409, 409);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (410, 310);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (410, 410);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (412, 412);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (414, 314);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (414, 414);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (419, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (421, 321);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (422, 422);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (432, 332);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (434, 334);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (442, 442);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (443, 343);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (443, 443);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (445, 145);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (445, 445);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (449, 349);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (450, 350);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (454, 454);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (455, 555);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (457, 157);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (457, 457);
commit;
prompt 200 records committed...
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (458, 358);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (462, 162);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (464, 364);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (464, 464);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (465, 365);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (468, 368);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (469, 369);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (469, 469);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (470, 470);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (471, 371);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (476, 376);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (476, 676);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (477, 377);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (477, 677);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (478, 478);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (478, 778);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (481, 381);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (487, 387);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (494, 494);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (497, 397);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (498, 498);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (501, 401);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (502, 179);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (504, 404);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (504, 504);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (504, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (505, 505);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (505, 605);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (509, 409);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (509, 509);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (510, 410);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (512, 412);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (513, 413);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (514, 414);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (514, 514);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (514, 814);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (515, 415);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (515, 515);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (516, 116);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (516, 516);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (518, 518);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (519, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (519, 519);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (522, 422);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (522, 522);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (522, 605);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (523, 123);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (523, 423);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (523, 523);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (526, 426);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (526, 526);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (527, 427);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (527, 527);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (531, 531);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (533, 533);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (536, 436);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (539, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (539, 439);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (539, 539);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (542, 442);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (542, 542);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (543, 443);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (543, 543);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (543, 843);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (544, 444);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (544, 544);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (545, 145);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (545, 445);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (546, 546);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (548, 348);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (548, 448);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (551, 551);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (552, 552);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (552, 852);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (557, 157);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (557, 457);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (561, 123);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (561, 461);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (563, 563);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (563, 605);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (563, 863);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (564, 464);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (564, 564);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (566, 466);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (566, 566);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (570, 470);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (570, 570);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (572, 572);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (574, 474);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (577, 377);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (577, 677);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (578, 478);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (578, 778);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (579, 116);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (579, 179);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (579, 479);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (582, 582);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (584, 584);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (585, 485);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (588, 388);
commit;
prompt 300 records committed...
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (588, 588);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (589, 589);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (590, 590);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (591, 591);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (592, 492);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (594, 494);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (598, 498);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (598, 598);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (600, 500);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (600, 600);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (603, 603);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (604, 504);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (604, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (606, 506);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (606, 606);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (610, 610);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (611, 611);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (611, 811);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (611, 911);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (613, 613);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (614, 514);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (614, 614);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (614, 814);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (615, 515);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (616, 116);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (616, 516);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (618, 518);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (618, 618);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (619, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (619, 519);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (624, 624);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (625, 625);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (627, 527);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (627, 627);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (629, 629);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (630, 530);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (635, 535);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (637, 537);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (637, 637);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (637, 863);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (640, 540);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (640, 640);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (641, 641);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (642, 542);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (643, 543);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (643, 843);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (645, 123);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (645, 145);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (645, 645);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (648, 348);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (648, 648);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (649, 649);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (651, 551);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (651, 651);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (651, 843);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (656, 556);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (656, 956);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (657, 157);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (662, 162);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (662, 662);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (664, 464);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (664, 564);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (664, 664);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (666, 566);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (666, 666);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (667, 667);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (670, 570);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (670, 670);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (671, 571);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (673, 573);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (673, 673);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (674, 474);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (674, 674);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (678, 778);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (679, 179);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (680, 580);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (682, 582);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (684, 584);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (688, 388);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (688, 588);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (691, 591);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (691, 691);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (695, 395);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (698, 598);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (700, 600);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (700, 700);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (703, 603);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (705, 605);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (705, 705);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (710, 610);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (715, 145);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (715, 715);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (719, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (721, 721);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (722, 622);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (726, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (726, 626);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (727, 627);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (727, 727);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (728, 728);
commit;
prompt 400 records committed...
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (729, 629);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (729, 729);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (730, 730);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (731, 631);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (732, 732);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (733, 633);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (736, 436);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (736, 636);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (736, 736);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (737, 637);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (739, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (739, 639);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (739, 739);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (741, 641);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (741, 741);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (742, 742);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (744, 644);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (745, 645);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (746, 746);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (748, 348);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (748, 648);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (748, 748);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (749, 649);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (749, 749);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (750, 650);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (750, 811);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (751, 651);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (756, 956);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (758, 658);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (758, 758);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (761, 911);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (762, 662);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (762, 762);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (765, 765);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (766, 666);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (773, 673);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (774, 474);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (774, 674);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (776, 676);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (776, 776);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (778, 778);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (779, 779);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (782, 782);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (783, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (788, 388);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (788, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (788, 788);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (789, 789);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (790, 790);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (791, 691);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (792, 792);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (793, 693);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (793, 793);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (797, 697);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (797, 797);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (799, 699);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (799, 799);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (801, 801);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (802, 702);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (803, 803);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (804, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (807, 707);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (808, 808);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (813, 813);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (815, 715);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (815, 815);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (820, 720);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (821, 721);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (821, 821);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (822, 822);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (832, 732);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (832, 832);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (833, 833);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (834, 734);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (834, 834);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (836, 436);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (836, 736);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (837, 837);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (839, 339);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (839, 739);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (839, 839);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (842, 742);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (843, 395);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (843, 843);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (844, 844);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (847, 847);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (848, 348);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (848, 748);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (852, 752);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (852, 852);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (855, 555);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (855, 755);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (855, 855);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (862, 762);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (862, 862);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (863, 763);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (863, 852);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (863, 863);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (865, 765);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (865, 865);
commit;
prompt 500 records committed...
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (867, 767);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (867, 867);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (868, 768);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (868, 868);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (874, 474);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (874, 874);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (876, 676);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (876, 776);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (876, 811);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (877, 377);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (877, 677);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (877, 777);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (877, 877);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (879, 779);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (880, 780);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (888, 388);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (888, 788);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (890, 790);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (896, 796);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (896, 896);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (898, 798);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (902, 395);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (904, 604);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (908, 808);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (909, 809);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (911, 319);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (911, 611);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (911, 811);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (911, 911);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (912, 812);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (912, 912);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (913, 813);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (913, 913);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (917, 817);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (919, 919);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (924, 824);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (928, 828);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (931, 831);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (932, 832);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (932, 932);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (933, 833);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (933, 933);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (934, 834);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (935, 935);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (936, 436);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (937, 837);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (938, 938);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (939, 839);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (939, 939);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (941, 841);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (941, 941);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (943, 843);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (944, 844);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (944, 944);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (947, 847);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (948, 948);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (949, 849);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (949, 949);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (950, 950);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (951, 851);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (951, 951);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (952, 852);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (955, 555);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (955, 855);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (963, 863);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (963, 963);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (965, 865);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (965, 965);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (970, 970);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (972, 872);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (973, 973);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (974, 474);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (974, 874);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (976, 676);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (976, 976);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (978, 778);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (978, 843);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (978, 878);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (982, 882);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (982, 982);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (983, 983);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (984, 884);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (990, 990);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (992, 892);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (993, 893);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (993, 993);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (994, 894);
insert into PURCHASE_WORKER (worker_id, purchase_id)
values (996, 896);
commit;
prompt 588 records loaded
prompt Loading SUPPLIER...
insert into SUPPLIER (supplier_id, supplier_name, region)
values (100, 'Judy', 'Maarssen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (101, 'Steve', 'Franklin');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (102, 'Val', 'Sorocaba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (103, 'Chloe', 'Morioka');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (104, 'Jody', 'Tlalpan');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (105, 'Raymond', 'Gummersbach');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (106, 'Ivan', 'Tokyo');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (107, 'Dom', 'Springville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (108, 'Buffy', 'Montreal');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (109, 'Liev', 'Monroe');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (110, 'Kate', 'Stanford');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (111, 'Vonda', 'Wakayama');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (112, 'Natascha', 'Chur');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (113, 'Sarah', 'Moreno Valley');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (114, 'Vivica', 'Palo Alto');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (115, 'Regina', 'Pirapora bom Je');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (116, 'Ty', 'Coslada');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (117, 'Kurt', 'Cuiabב');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (118, 'Debra', 'Whittier');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (119, 'Kirsten', 'High Wycombe');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (120, 'Domingo', 'Richmond');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (121, 'Joey', 'Monterrey');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (122, 'Casey', 'Olsztyn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (123, 'Heath', 'Monterrey');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (124, 'Lorraine', 'Goiania');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (125, 'Renee', 'Brisbane');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (126, 'Jonny', 'Lake worth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (127, 'Rory', 'Nizhnevartovsk');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (128, 'Ed', 'Angers');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (129, 'Fiona', 'Des Plaines');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (130, 'Christian', 'Storrington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (131, 'Nick', 'Kaohsiung');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (132, 'Boz', 'Adamstown');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (133, 'Carrie-Anne', 'Lincoln');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (134, 'Roscoe', 'Yamagata');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (135, 'Radney', 'Oberwangen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (136, 'Henry', 'Adelaide');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (137, 'Winona', 'Cuiabב');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (138, 'Tramaine', 'West Chester');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (139, 'Nicole', 'Aberdeen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (140, 'Jim', 'Zurich');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (141, 'Davy', 'Fukuoka');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (142, 'Ali', 'Toledo');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (143, 'Adina', 'Salvador');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (144, 'Cheech', 'Copenhagen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (145, 'Fisher', 'Streamwood');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (146, 'Shawn', 'Utrecht');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (147, 'Kenny', 'Kevelaer');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (148, 'Dustin', 'Takapuna');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (149, 'Gloria', 'Leverkusen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (150, 'Nicole', 'Bozeman');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (151, 'Stewart', 'Saint Paul');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (152, 'Boz', 'Kaysville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (153, 'Debi', 'Terrasa');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (154, 'Fiona', 'Peine');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (155, 'Hal', 'Suwon-city');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (156, 'Nikka', 'Vantaa');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (157, 'Geena', 'Fort worth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (158, 'Sandra', 'Sparrows Point');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (159, 'Russell', 'Seatle');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (160, 'Remy', 'Thame');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (161, 'Miles', 'Longview');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (162, 'Anna', 'Tadley');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (163, 'Lou', 'West Sussex');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (164, 'CeCe', 'Macau');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (165, 'Jonny', 'Kungens kurva');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (166, 'Remy', 'Anyang-si');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (167, 'Franco', 'Paderborn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (168, 'Janice', 'Moreno Valley');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (169, 'Rowan', 'Spresiano');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (170, 'Liev', 'Mechelen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (171, 'Peabo', 'Snoqualmie');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (172, 'Toshiro', 'Mumbai');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (173, 'Keanu', 'Tucson');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (174, 'Elijah', 'Mnchen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (175, 'Isabella', 'Gelsenkirchen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (176, 'Lea', 'Mount Laurel');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (177, 'Pablo', 'Stockholm');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (178, 'Bridgette', 'Ferraz  vasconc');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (179, 'Seth', 'Lenexa');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (180, 'Aimee', 'North bethesda');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (181, 'Johnnie', 'San Ramon');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (182, 'Katrin', 'Coppell');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (183, 'Sonny', 'Pasadena');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (184, 'Bobby', 'Menlo Park');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (185, 'Ewan', 'Athens');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (186, 'Patty', 'Niles');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (187, 'Fred', 'Barueri');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (188, 'Laurie', 'Sorocaba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (189, 'Freda', 'Traralgon');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (190, 'Susan', 'West Sussex');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (191, 'Roberta', 'Bekescsaba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (192, 'Judi', 'Kyoto');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (193, 'Joshua', 'Verwood');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (194, 'CeCe', 'Fairborn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (195, 'Balthazar', 'Kingston');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (196, 'Hazel', 'West Lafayette');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (197, 'Carla', 'Zuerich');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (198, 'Reese', 'San Ramon');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (199, 'Judi', 'Charlottesville');
commit;
prompt 100 records committed...
insert into SUPPLIER (supplier_id, supplier_name, region)
values (300, 'Bonnie', 'Malmצ');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (301, 'Rebecca', 'Pompeia');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (302, 'Garth', 'Mablethorpe');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (303, 'Christine', 'Fairfax');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (304, 'Ethan', 'Geneve');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (305, 'Dustin', 'Columbus');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (306, 'Rascal', 'Ithaca');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (307, 'Temuera', 'Vallauris');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (308, 'Illeana', 'Glendale');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (309, 'Frances', 'Venice');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (310, 'Dick', 'Silver Spring');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (311, 'Stockard', 'Wavre');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (312, 'Allan', 'Altamonte Sprin');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (313, 'Robbie', 'Billund');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (314, 'Hugh', 'Ft. Leavenworth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (315, 'Diane', 'Milsons Point');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (316, 'Juice', 'Dorval');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (317, 'Ike', 'Horb');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (318, 'Julia', 'Tokushima');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (319, 'Willie', 'Fuchstal-asch');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (320, 'Bryan', 'Berlin-Adlersho');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (321, 'Frederic', 'Monroe');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (322, 'Ving', 'Maebashi');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (323, 'Miko', 'Coldmeece');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (324, 'Connie', 'Rua eteno');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (325, 'Sal', 'Rosario');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (326, 'Benjamin', 'Natal');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (327, 'Bryan', 'Koeln');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (328, 'Johnnie', 'Irkutsk');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (329, 'Mae', 'Duisburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (330, 'Sylvester', 'Roanoke');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (331, 'Thora', 'Brentwood');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (332, 'Glenn', 'Maryville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (333, 'Laura', 'Zwolle');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (334, 'Paula', 'Schlieren');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (335, 'Juan', 'Overland park');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (336, 'Cary', 'Matsuyama');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (337, 'Donald', 'Runcorn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (338, 'Rebecca', 'Wuerzburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (339, 'Heath', 'Dearborn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (340, 'Temuera', 'Leinfelden-Echt');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (341, 'Lara', 'Appenzell');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (342, 'Solomon', 'Chicago');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (343, 'Mykelti', 'Warrington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (344, 'Franz', 'Solikamsk');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (345, 'Mary-Louise', 'Sao caetano do ');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (346, 'Miriam', 'Pandrup');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (347, 'Derrick', 'Tualatin');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (348, 'Rutger', 'Hermitage');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (349, 'Domingo', 'Kreuzau');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (350, 'Amanda', 'Takapuna');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (351, 'Edward', 'Ricardson');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (352, 'Laurence', 'Hackensack');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (353, 'Davis', 'Guadalajara');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (354, 'Gordie', 'Villata');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (355, 'Hugh', 'El Masnou');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (356, 'Pelvic', 'Waalwijk');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (357, 'Arnold', 'Tהby');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (358, 'Robby', 'Sorocaba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (359, 'Chalee', 'Bedfordshire');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (360, 'Patty', 'Lexington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (361, 'Mint', 'Huntsville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (362, 'Madeline', 'Derwood');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (363, 'Lonnie', 'Billerica');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (364, 'Kieran', 'Terrasa');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (365, 'Patricia', 'Guadalajara');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (366, 'Keanu', 'Los Angeles');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (367, 'Bernard', 'Franklin');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (368, 'Allan', 'Edmonton');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (369, 'Zooey', 'Barcelona');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (370, 'Jeroen', 'Yomgok-dong');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (371, 'Todd', 'Matsue');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (372, 'Holly', 'Sorocaba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (373, 'Vivica', 'Lathrop');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (374, 'Rueben', 'Zurich');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (375, 'Azucar', 'Milwaukee');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (376, 'Freddie', 'Laguna Bbeach');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (377, 'Belinda', 'Hamburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (378, 'Franz', 'Ettlingen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (379, 'Stevie', 'Taoyuan');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (380, 'Lara', 'Breda');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (381, 'Gavin', 'Monmouth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (382, 'Gailard', 'Trieste');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (383, 'Lili', 'Buenos Aires');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (384, 'Suzanne', 'Birkenhead');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (385, 'Lila', 'Naestved');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (386, 'Madeleine', 'Essen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (387, 'Sean', 'Valladolid');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (388, 'Elle', 'Paחo de Arcos');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (389, 'Herbie', 'Zwolle');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (390, 'Fionnula', 'Kreuzau');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (391, 'Madeleine', 'Bellevue');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (392, 'Don', 'New orleans');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (393, 'Goran', 'Shoreline');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (394, 'Angela', 'Sainte-foy');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (395, 'Chantי', 'Cape town');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (396, 'Donna', 'Parsippany');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (397, 'Jonny', 'San Francisco');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (398, 'Charles', 'Mito');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (399, 'Charlie', 'Ohita');
commit;
prompt 200 records committed...
insert into SUPPLIER (supplier_id, supplier_name, region)
values (400, 'Josh', 'Lake worth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (401, 'Christine', 'Farmington Hill');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (402, 'Glen', 'San Jose');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (403, 'Rich', 'Wצrth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (404, 'Jessica', 'Huntington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (405, 'Alice', 'Hayward');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (406, 'Nick', 'Columbia');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (407, 'Saul', 'Kuraby');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (408, 'Wang', 'Tהby');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (409, 'Denzel', 'Dalmine');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (410, 'Dave', 'Debary');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (411, 'Carlos', 'Dortmund');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (412, 'Bette', 'Mablethorpe');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (413, 'Thomas', 'Mountain View');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (414, 'Thin', 'Karachi');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (415, 'Oliver', 'Tottori');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (416, 'Sissy', 'Edwardstown');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (417, 'Rickie', 'Curitiba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (418, 'Freddie', 'Nuernberg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (419, 'Ving', 'Coppell');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (420, 'Yolanda', 'Edison');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (421, 'Matthew', 'Huntington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (422, 'Chris', 'Santa Cruz');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (423, 'Geggy', 'Parsippany');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (424, 'Suzanne', 'Franklin');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (425, 'Nikki', 'Alpharetta');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (426, 'Beth', 'South Jordan');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (427, 'Jean-Claude', 'Berlin-Adlersho');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (428, 'Ed', 'Horsham');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (429, 'Holland', 'Pacific Grove');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (430, 'Vin', 'Barnegat');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (431, 'Tom', 'Seoul');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (432, 'Robin', 'Hochwald');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (433, 'Joey', 'Neuquen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (434, 'Wayne', 'Adamstown');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (435, 'Jon', 'Mantova');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (436, 'Ned', 'Szazhalombatta');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (437, 'Celia', 'Greenville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (438, 'Annie', 'Bloomington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (439, 'Ashton', 'Carlingford');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (440, 'Randy', 'San Jose');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (441, 'Anna', 'Edison');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (442, 'Maxine', 'Winnipeg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (443, 'Harrison', 'Maintenon');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (444, 'Lorraine', 'Silver Spring');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (445, 'Ty', 'Netanya');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (446, 'Viggo', 'Sao caetano do ');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (447, 'Darius', 'Somerset');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (448, 'Merillee', 'Lexington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (449, 'Minnie', 'Helsingborg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (450, 'Kelly', 'Green bay');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (451, 'Shawn', 'Rochester');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (452, 'Celia', 'Newcastle upon ');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (453, 'Domingo', 'Santa Clarat');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (454, 'Howard', 'Long Island Cit');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (455, 'Grace', 'Ludbreg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (456, 'Guy', 'Key Biscayne');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (457, 'Alfred', 'Lake worth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (458, 'Clay', 'Herne');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (459, 'Melanie', 'Berlin-Adlersho');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (460, 'Nancy', 'N. ft. Myers');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (461, 'Kylie', 'Smyrna');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (462, 'Jane', 'Boucherville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (463, 'Taryn', 'Berkshire');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (464, 'Samuel', 'Zaandam');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (465, 'Roy', 'Ricardson');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (466, 'Bill', 'Lima');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (467, 'Hank', 'Piacenza');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (468, 'Natasha', 'Chapeco');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (469, 'Gino', 'Middleburg Heig');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (470, 'Spike', 'Kuraby');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (471, 'Gary', 'Cardiff');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (472, 'Manu', 'Hilversum');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (473, 'Rhea', 'Gainesville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (474, 'Hope', 'Campana');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (475, 'Rose', 'El Dorado Hills');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (476, 'Wang', 'Ohtsu');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (477, 'Julianne', 'Lund');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (478, 'Fairuza', 'Scottsdale');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (479, 'Mekhi', 'Milford');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (480, 'Russell', 'Vallauris');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (481, 'Cheryl', 'Di Savigliano');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (482, 'Colin', 'Sao caetano do ');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (483, 'Dom', 'Burlington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (484, 'Meredith', 'Cromwell');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (485, 'Sandra', 'Salisbury');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (486, 'Machine', 'Sundsvall');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (487, 'Kyle', 'Buffalo Grove');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (488, 'Bebe', 'Utrecht');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (489, 'Graham', 'Salt Lake City');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (490, 'Shannyn', 'Bretzfeld-Waldb');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (491, 'Nora', 'Aracruz');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (492, 'Lara', 'Woodbridge');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (493, 'Nickel', 'Tהby');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (494, 'Tony', 'Kozani');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (495, 'Linda', 'Santa Clarita');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (496, 'Scarlett', 'Boucherville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (497, 'Toni', 'Wilmington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (498, 'Suzanne', 'Joinville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (499, 'Norm', 'Vienna');
commit;
prompt 300 records committed...
insert into SUPPLIER (supplier_id, supplier_name, region)
values (500, 'Chrissie', 'Chinnor');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (501, 'Tamala', 'Villata');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (502, 'Juliet', 'Bruneck');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (503, 'Stephanie', 'Johor Bahru');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (504, 'Ned', 'Bozeman');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (505, 'Tcheky', 'Lake worth');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (506, 'Michael', 'Golden');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (507, 'Dick', 'Trieste');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (508, 'Edgar', 'Blacksburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (509, 'Paula', 'Menlo Park');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (510, 'Viggo', 'Traralgon');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (511, 'Toni', 'Villata');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (512, 'Avril', 'Dardilly');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (513, 'Rawlins', 'Akita');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (514, 'Lena', 'Guelph');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (515, 'Frances', 'Philadelphia');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (516, 'Julie', 'Ulm');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (517, 'Woody', 'Turku');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (518, 'Neve', 'Graz');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (519, 'Aaron', 'Brasםlia');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (520, 'Lydia', 'Abbotsford');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (521, 'Phil', 'Campinas');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (522, 'Milla', 'Kongserbg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (523, 'Harry', 'Kyunnam');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (524, 'Illeana', 'Zagreb');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (525, 'Gil', 'Berwyn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (526, 'Don', 'Salzburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (527, 'Julianne', 'Banbury');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (528, 'Fisher', 'Mayfield Villag');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (529, 'Coley', 'Pomona');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (530, 'Adina', 'Belo Horizonte');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (531, 'Cheech', 'Syracuse');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (532, 'Loren', 'Boucherville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (533, 'Rhys', 'Miami');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (534, 'Adam', 'Mobile');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (535, 'Jimmy', 'Campinas');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (536, 'Anjelica', 'Alpharetta');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (537, 'Cameron', 'Conshohocken');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (538, 'Colleen', 'Glendale');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (539, 'Gord', 'La Plata');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (540, 'Maceo', 'St Kilda');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (541, 'Hookah', 'Cardiff');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (542, 'Night', 'N. ft. Myers');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (543, 'Isabella', 'Melrose');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (544, 'Balthazar', 'Matsuyama');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (545, 'Uma', 'Warren');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (546, 'Val', 'Silver Spring');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (547, 'Neneh', 'London');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (548, 'Merle', 'Firenze');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (549, 'Meg', 'Szazhalombatta');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (550, 'Ethan', 'Linz');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (551, 'Chubby', 'Seatle');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (552, 'Mark', 'Middleburg Heig');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (553, 'Jake', 'Frederiksberg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (554, 'Dave', 'Kevelaer');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (555, 'Joely', 'Saga');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (556, 'Desmond', 'Oak park');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (557, 'Devon', 'Draper');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (558, 'Miranda', 'Aniטres');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (559, 'Madeleine', 'Horb');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (560, 'Benicio', 'O''fallon');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (561, 'Jim', 'Fountain Hills');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (562, 'Mae', 'Buffalo Grove');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (563, 'Mary', 'Courbevoie');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (564, 'Loren', 'Sugar Hill');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (565, 'Trey', 'Tyne & Wear');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (566, 'Alice', 'Cottbus');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (567, 'Whoopi', 'Hyderabad');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (568, 'Nile', 'Antwerpen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (569, 'Laura', 'Pirapora bom Je');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (570, 'Merle', 'Harahan');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (571, 'Judge', 'Nantes');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (572, 'Temuera', 'Saint-vincent-d');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (573, 'Julie', 'Middletown');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (574, 'Vanessa', 'Harrisburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (575, 'Susan', 'Charlotte');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (576, 'Suzy', 'Tucson');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (577, 'Phoebe', 'Oldwick');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (578, 'Al', 'Mountain View');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (579, 'Hugh', 'Genטve');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (580, 'Warren', 'Akita');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (581, 'Roy', 'Huntington');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (582, 'Karon', 'Naha');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (583, 'Cuba', 'Leipzig');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (584, 'Robin', 'Hearst');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (585, 'Christina', 'East Peoria');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (586, 'Carol', 'Fleet');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (587, 'Isaac', 'Sidney');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (588, 'Jeroen', 'Mayfield Villag');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (589, 'Jodie', 'Ithaca');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (590, 'Alex', 'Houma');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (591, 'Luis', 'Eindhoven');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (592, 'Rhett', 'Sale');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (593, 'Vin', 'Okayama');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (594, 'Chantי', 'Bרnes');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (595, 'Benicio', 'Ellicott City');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (596, 'Cheech', 'Richardson');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (597, 'Breckin', 'Livermore');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (598, 'Carol', 'Woodland Hills');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (599, 'Vickie', 'Kaiserslautern');
commit;
prompt 400 records committed...
insert into SUPPLIER (supplier_id, supplier_name, region)
values (600, 'Tobey', 'Cambridge');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (601, 'Jessica', 'Terrasa');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (602, 'Gabriel', 'Athens');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (603, 'Joely', 'Wageningen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (604, 'Mena', 'El Segundo');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (605, 'Lin', 'Boulder');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (606, 'Maria', 'Belgrad');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (607, 'Kurtwood', 'Mnchen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (608, 'Pablo', 'Bloemfontein');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (609, 'Rick', 'Verwood');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (610, 'Herbie', 'Horsens');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (611, 'Kate', 'Kuraby');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (612, 'Jeff', 'Goiania');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (613, 'Terry', 'Stans');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (614, 'Mickey', 'Bellerose');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (615, 'Jaime', 'Calcutta');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (616, 'Christine', 'Spresiano');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (617, 'Kirk', 'Chiba');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (618, 'Courtney', 'Royersford');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (619, 'Melanie', 'Peine');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (620, 'Carrie', 'Kyunnam');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (621, 'Aaron', 'Hercules');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (622, 'Gil', 'High Wycombe');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (623, 'Armin', 'Ismaning');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (624, 'Tcheky', 'Los Alamos');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (625, 'Jann', 'Rome');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (626, 'Steven', 'Debary');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (627, 'Edwin', 'New Delhi');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (628, 'Dar', 'Freising');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (629, 'Franco', 'Heubach');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (630, 'Gailard', 'Glasgow');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (631, 'Stellan', 'Fort Lewis');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (632, 'Frank', 'Middletown');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (633, 'Taye', 'Zwolle');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (634, 'Halle', 'Treviso');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (635, 'Scott', 'Annandale');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (636, 'Steve', 'Schlieren');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (637, 'Emmylou', 'Soest');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (638, 'Daryl', 'Macau');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (639, 'Lena', 'Lodi');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (640, 'Reese', 'Halfway house');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (641, 'Malcolm', 'Hermitage');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (642, 'Nigel', 'Newnan');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (643, 'Debbie', 'London');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (644, 'Crispin', 'Nizhnevartovsk');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (645, 'Adam', 'Quיbec');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (646, 'Robby', 'Edenbridge');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (647, 'Merrill', 'Seatle');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (648, 'Suzanne', 'Kanata');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (649, 'Rik', 'Stockholm');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (650, 'Lizzy', 'Saint-vincent-d');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (651, 'Liv', 'Madrid');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (652, 'Kitty', 'Jacksonville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (653, 'Robin', 'Bartlesville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (654, 'Ahmad', 'Geneve');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (655, 'Wayne', 'Oak Park');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (656, 'Illeana', 'Los Alamos');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (657, 'Benjamin', 'Eschen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (658, 'Thin', 'Cheshire');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (659, 'Teri', 'Glen Cove');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (660, 'Queen', 'Wien');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (661, 'Milla', 'Lakeville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (662, 'Franz', 'Erlangen');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (663, 'Cate', 'Gliwice');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (664, 'Rory', 'Clark');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (665, 'Giovanni', 'San Dimas');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (666, 'Simon', 'Maryville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (667, 'Sean', 'Annandale');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (668, 'Frederic', 'Runcorn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (669, 'Glenn', 'Bartlesville');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (670, 'Temuera', 'Ferraz  vasconc');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (671, 'Austin', 'Slough');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (672, 'Christmas', 'Leipzig');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (673, 'Javon', 'Tsu');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (674, 'Kazem', 'Dearborn');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (675, 'Nicolas', 'Ankara');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (676, 'Harold', 'Balmoral');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (677, 'Chantי', 'Moreno Valley');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (678, 'Bonnie', 'Syracuse');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (679, 'Ted', 'Casselberry');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (680, 'Coley', 'El Paso');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (681, 'Robin', 'Freiburg');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (682, 'Isabella', 'Spresiano');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (683, 'Vivica', 'Amsterdam');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (684, 'Jena', 'Boston');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (685, 'Garland', 'Zaandam');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (686, 'Ceili', 'Olivette');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (687, 'Donna', 'Chemnitz');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (688, 'Jeffery', 'Akita');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (689, 'Cliff', 'Luedenscheid');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (690, 'Laurie', 'Paris');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (691, 'Rita', 'Salt Lake City');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (692, 'Hazel', 'Chorzףw');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (693, 'Ron', 'Stony Point');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (694, 'Gordie', 'Hjallerup');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (695, 'Lea', 'Sao jose rio pr');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (696, 'Harold', 'Herdecke');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (697, 'Joaquim', 'Yucca');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (698, 'Ani', 'Cesena');
insert into SUPPLIER (supplier_id, supplier_name, region)
values (699, 'Todd', 'Udine');
commit;
prompt 500 records loaded
prompt Enabling foreign key constraints for PURCHASE_CLIENT...
alter table PURCHASE_CLIENT enable constraint SYS_C007054;
alter table PURCHASE_CLIENT enable constraint SYS_C007055;
prompt Enabling foreign key constraints for PURCHASE_PRODUCT...
alter table PURCHASE_PRODUCT enable constraint SYS_C007094;
alter table PURCHASE_PRODUCT enable constraint SYS_C007095;
prompt Enabling foreign key constraints for PURCHASE_WORKER...
alter table PURCHASE_WORKER enable constraint SYS_C007104;
alter table PURCHASE_WORKER enable constraint SYS_C007105;
prompt Enabling triggers for PURCHASE...
alter table PURCHASE enable all triggers;
prompt Enabling triggers for PURCHASE_CLIENT...
alter table PURCHASE_CLIENT enable all triggers;
prompt Enabling triggers for PURCHASE_PRODUCT...
alter table PURCHASE_PRODUCT enable all triggers;
prompt Enabling triggers for WORKER...
alter table WORKER enable all triggers;
prompt Enabling triggers for PURCHASE_WORKER...
alter table PURCHASE_WORKER enable all triggers;
prompt Enabling triggers for SUPPLIER...
alter table SUPPLIER enable all triggers;
set feedback on
set define on
prompt Done.
