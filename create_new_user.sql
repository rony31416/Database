--create a new user name badhon
connect system
password :*******
--proveide the password which you used while insatalling

--CREATE USER username IDENTIFIED BY password
CREATE USER badhon IDENTIFIED BY badhon;
GRANT dba TO badhon;

connect badhon
password :*******
--hrer the password is badhon .. (you can use any kinna password) 

disconnect
--for disconnecting from connected user;

--now lets create 'hr' user and connceted with hy by usinf above provess

