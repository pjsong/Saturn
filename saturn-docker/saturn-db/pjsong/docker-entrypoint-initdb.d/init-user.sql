CREATE USER 'console'@'%' IDENTIFIED BY 'defaultpass';
grant all privileges on saturn_console.* to 'console'@'%' identified by 'defaultpass' with grant option;
flush privileges;

# chang it in production: set password for 'console'@'%'=PASSWORD('newpass'); flush privileges;