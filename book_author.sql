#root 계정에서

create user 'book'@'%' identified by 'book';

grant all privileges on book_db.* to 'book'@'%' ;

create database book_db
    default character set utf8mb4
    collate utf8mb4_general_ci
    default encryption='n'
;


#book계정에서
create table author (  
    author_id	int            auto_increment primary key,
    author_name	varchar(100)   not null,
    author_desc	varchar(500)
);


insert into author 
values(null, '황일영', '학원강사');
