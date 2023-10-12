--create a new user name badhon
connect system
password :*******
--proveide the password which you used while insatalling

--CREATE USER username IDENTIFIED BY password
CREATE USER badhon IDENTIFIED BY badhon;
GRANT dba TO badhon;

connect badhon
password :*******
--here the password is badhon .. (you can use any kinda password) 

disconnect
--for disconnecting from connected user;

--now lets create 'hr' user and connceted with hr by using above process

