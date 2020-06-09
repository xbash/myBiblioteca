# Proyecto de rutina
myBiblioteca v0.1

# ¿Con que está creado?
- Java

# Herramientas utilizadas
- IDE (NetBeans 11.3)
- Soporte para JDK 8 - JDK 14
- MySQL Server 5.6, 5.7, 8.0 (Connector/J version 8 (JDBC 4.2))
- MariaDB 5.5.68, 10.1.45-10.4.13 (Connector/J version 2.6.0 (JDBC 4.2))

# MySQL - crear la base de datos, usuario y asignar contraseña
- $ mysql -u root -p
- mysql> create database mybibliodb;
- mysql> create user 'mybibliouser'@'localhost' identified by 'mybiblio2030';
- mysql> grant all on mybibliodb.* to 'mybibliouser' identified by 'mybiblio2030';
- mysql> flush privileges;
- mysql> exit;
