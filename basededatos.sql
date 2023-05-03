create database Citas;
use Citas;

create table HistoriaClinica(
 IdHisMedica bigint unsigned primary key not null  auto_increment,
 DescMedica varchar (50),
 UltimaCita date not null,
 NomPaciente varchar (20) not null);
 
create table Paciente(
 DocumentoPac bigint unsigned  not null primary key  auto_increment,
 NomPaciente varchar (30) not null,
 IdHisMedicafk bigint unsigned not null, foreign key (IdHisMedicafk) references historiaclinica(IdHisMedica));
 
 create table Doctor(
 DocumentoDoc bigint unsigned not null primary key   auto_increment,
 NomDoctor varchar (30)
);

create table Cita(
IdCita bigint unsigned primary key not null  auto_increment,
Fecha date not null,
Hora time,
DocumentoPacfk bigint unsigned not null, foreign key (DocumentoPacfk) references Paciente(DocumentoPac),
DocumentoDocfk bigint unsigned not null, foreign key (DocumentoDocfk) references Doctor(DocumentoDoc));

 create table Agenda(
 FechaAge date not null,
 HoraAge time,
 DocumentoDocfk bigint unsigned not null, foreign key (DocumentoDocfk) references Doctor(DocumentoDoc));
 
 
 create table Centro(
 IdCentro bigint unsigned primary key not null  auto_increment,
 Direccion varchar (20) not null,
 Ciudad varchar (20) not null,
 DocumentoDocfk bigint unsigned not null, foreign key (DocumentoDocfk) references Doctor(DocumentoDoc));

/*insert*/
Insert into HistoriaClinica() values ('423','El paciente se encuentra con sistomas de fiebre','2023/02/07','Helen');
Insert into HistoriaClinica() values ('123','El paciente entra con dificultad respiratoria','2023/03/11','Dana');
Insert into HistoriaClinica() values ('678','Paciente con inflamacion estomacal y dolor al presionar','2022/10/30','Esteban');
Insert into HistoriaClinica() values ('454','El paciente se encuentra con sistomas vomito','2022/04/25','Sebastian');
Insert into HistoriaClinica() values ('765','El paciente entra por urgencias por causa de accidente','2023/02/17','Valeria');
Insert into HistoriaClinica() values ('907','Paciente entra con una fractura el un dedo','2022/12/03','Luis');
Insert into HistoriaClinica() values ('895','Paciente con sistomas de falta de oxigeno','2022/06/05','Daniela');
Insert into HistoriaClinica() values ('567','Paciente se encuentra con brote y sarpuchodo en sus piernas','2022/11/01','Wilson');
Insert into HistoriaClinica() values ('478','El paciente se encuentra con posible diagnostico de canser','2022/11/21','Sara');
Insert into HistoriaClinica() values ('796','El paciente se encuentra en examenes de sagre','2022/12/18','Tony');


Insert into Paciente() values ('54343765','Helen');
Insert into Paciente() values ('34356778','Juan');
Insert into Paciente() values ('69854987','Camila');
Insert into Paciente() values ('18763874','Anna');
Insert into Paciente() values ('50180833','Luis');
Insert into Paciente() values ('019083','Andres');
Insert into Paciente() values ('10983845','Carlos');
Insert into Paciente() values ('16734645','Wilson');
Insert into Paciente() values ('2537374','Gabriela');
Insert into Paciente() values ('7364655','Tomas');


Insert into Doctor() values ('87658645','Hernesto');
Insert into Doctor() values ('65457756','Hugo');
Insert into Doctor() values ('1234354','Herminia');
Insert into Doctor() values ('289070','Gonsalo');
Insert into Doctor() values ('4276544','Paula');
Insert into Doctor() values ('19879172','Keli');
Insert into Doctor() values ('8764584','Orlando');
Insert into Doctor() values ('7609743','Alberto');
Insert into Doctor() values ('18701872','Milena');
Insert into Doctor() values ('76366454','Tatiana');


Insert into Cita() values ('5657','2023/02/07','0120');
Insert into Cita() values ('7646','2023/10/07','0230');
Insert into Cita() values ('4445','2023/04/30','0405');
Insert into Cita() values ('5345','2023/09/11','1120');
Insert into Cita() values ('7670','2023/02/25','0420');
Insert into Cita() values ('6463','2023/10/07','0900');
Insert into Cita() values ('2768','2023/02/28','0830');
Insert into Cita() values ('1432','2023/06/18','0120');


Insert into Agenda() values ('2023/02/07','0120');
Insert into Agenda() values ('2023/02/07','0900');
Insert into Agenda() values ('2023/02/07','0700');
Insert into Agenda() values ('2023/02/07','0640');
Insert into Agenda() values ('2023/02/07','0820');
Insert into Agenda() values ('2023/02/07','1150');
Insert into Agenda() values ('2023/02/07','1200');
Insert into Agenda() values ('2023/02/07','0130');
Insert into Agenda() values ('2023/02/07','0200');
Insert into Agenda() values ('2023/02/07','0730');


Insert into Centro() values ('543','calle 32','bogota');
Insert into Centro() values ('343','diagonal 22','villavicencio');
Insert into Centro() values ('766','calle 29','bogota');
Insert into Centro() values ('464','carrera 45','cali');
Insert into Centro() values ('345','carrera 76','bogota');
Insert into Centro() values ('455','calle 8','bogota');
Insert into Centro() values ('686','diagonal 46','bogota');
Insert into Centro() values ('546','calle 75','bogota');
Insert into Centro() values ('989','calle 09','bogota');
Insert into Centro() values ('434','calle 67','villavicencio');

/*1*/

/*2*/
select * from Cita limit 5;
select * from Centro limit 5;
select * from Agenda limit 5;
select * from Doctor limit 5;
select * from Paciente limit 5;
select * from HistoriaClinica limit 5;

/*3*/

/*4*/



