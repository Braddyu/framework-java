/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/8/8 17:03:59                            */
/*==============================================================*/


drop table if exists crm_customer;

drop table if exists crm_customer_type;

drop table if exists crm_employees_shop;

drop table if exists crm_message_info;

drop table if exists crm_message_send;

/*==============================================================*/
/* Table: crm_customer                                          */
/*==============================================================*/
create table crm_customer
(
   id                   int not null auto_increment comment '���.',
   name                 varchar(100) comment '����.',
   phone                varchar(100) comment '�绰.',
   sex                  int comment '�Ա�.',
   email                varchar(100) comment '�����ַ.',
   memo                 varchar(500) comment '��ע.',
   employees_type_id    int comment '��������.',
   shop_id              int comment '��������.',
   is_blacklist         int comment '�Ƿ������.',
   blacklist_memo       varchar(500) comment '��������ע.',
   state                int comment '״̬.',
   operate_user_id      int comment '������.',
   operate_dt           datetime comment '����ʱ��.',
   primary key (id)
);

alter table crm_customer comment '�ͻ���';

/*==============================================================*/
/* Table: crm_customer_type                                     */
/*==============================================================*/
create table crm_customer_type
(
   id                   int not null auto_increment comment '���.',
   shop_id              int comment '��������.',
   name                 varchar(100) comment '����.',
   level                int comment '�Ǽ�.',
   memo                 varchar(500) comment '����.',
   state                int comment '״̬.',
   operate_user_id      int comment '������.',
   operate_dt           datetime comment '����ʱ��.',
   primary key (id)
);

alter table crm_customer_type comment '�ͻ����ͱ�';

/*==============================================================*/
/* Table: crm_employees_shop                                    */
/*==============================================================*/
create table crm_employees_shop
(
   id                   int not null auto_increment comment '���.',
   emp_id               int comment 'Ա�����.',
   shop_id              int comment '���̱��.',
   state                int comment '״̬.',
   operate_user_id      int comment '������.',
   operate_dt           datetime comment '����ʱ��.',
   primary key (id)
);

alter table crm_employees_shop comment 'Ա�����̶�Ӧ��';

/*==============================================================*/
/* Table: crm_message_info                                      */
/*==============================================================*/
create table crm_message_info
(
   id                   int not null auto_increment comment '���.',
   title                varchar(100) comment '����.',
   message_type         int comment '����.',
   emergency_degree     int comment '������.',
   content              longtext comment '����.',
   state                int comment '״̬.',
   operate_user_id      int comment '������.',
   operate_dt           datetime comment '����ʱ��.',
   primary key (id)
);

alter table crm_message_info comment '��Ϣ��';

/*==============================================================*/
/* Table: crm_message_send                                      */
/*==============================================================*/
create table crm_message_send
(
   id                   int not null auto_increment comment '���.',
   receiver_id          int comment '�ռ��˱��.',
   message_info_id      int comment '��Ϣ���.',
   is_read              int comment '�Ķ�״̬.',
   state                int comment '״̬.',
   operate_user_id      int comment '������.',
   operate_dt           datetime comment '����ʱ��.',
   primary key (id)
);

alter table crm_message_send comment '��Ϣ���ͱ�';

