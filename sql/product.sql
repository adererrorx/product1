--���̺� ����
drop table product;
--���̺� ���� ������Ÿ�԰� length����
create table product(
    pid         number(10),
    pname       varchar(30),
    quantity    number(10),
    price       number(10)
);
--�⺻Ű
alter table product add constraint product_pid_pk primary key(pid);

--����������
drop sequence product_pid_seq;
create sequence product_pid_seq;

--����--
insert into product(pid,pname,quantity,price)
     values(product_pid_seq.nextval, '��ǻ��', 5, 1000000);

insert into product(pid,pname,quantity,price)
     values(product_pid_seq.nextval, '�����', 5, 500000);

insert into product(pid,pname,quantity,price)
     values(product_pid_seq.nextval, '������', 1, 300000);

--��ȸ--
select pid, pname, quantity, price
  from product
 where pid = 2;

----����--
--update product
--   set pname = '��ǻ��2',
--       quantity = 10,
--       price = 1200000;

----����
--delete from product where pid = 1;

--��ü��ȸ-
select pid,pname,quantity,price from product;

commit;