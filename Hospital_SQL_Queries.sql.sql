create database Hospitaldb  ;
use Hospitaldb  ; 


create table department (
Department_ID   int primary key ,
Department_Name   varchar(19)
);

SELECT * FROM Department;

create table doctors (
Doctors_ID  int primary key , 
Doctors_Name   varchar(50),
Gender  VARCHAR(10)  ,
Experience_Years  int ,
Salary  DECIMAL(10,2)  ,
Department_ID   INT ,
foreign key (Department_ID)
references  department(Department_ID)
);

alter table  doctors 
add column phone varchar(15) ; 

alter table doctors 
add column Joining_Date  date  ; 


select * from doctors ; 


create table Patients (
Patients_ID  INT PRIMARY KEY ,
Patients_Name   VARCHAR(50)  NOT NULL , 
Gender   VARCHAR(10)   NOT NULL ,
Age INT  ,
City VARCHAR(50) ,
Phone   VARCHAR(15) ,
 Admission_Date  DATE 
 );
 
alter table patients 
drop column age ;  

alter table patients 
add column DOB date ; 
 
 
 alter table patients  
 add column address varchar(100) ; 

 alter table patients 
 drop column admission_date ; 
 
 
 alter table patients 
 add column Registration_Date date   ; 
 
 
 INSERT INTO Patients (Patients_ID,Patients_Name,Gender,City,Phone,DOB,Address,Registration_Date) VALUES
('1001','Fatima Shah','Female','Karachi','3571866729','1994-09-11','Karachi Address','2026-04-20'),
('1002','Ayesha Ullah','Female','Karachi','3214660300','1993-08-12','Karachi Address','2026-01-01'),
('1003','Hamza Yousafzai','Female','Karachi','3743589769','1998-06-15','Karachi Address','2026-06-12'),
('1004','Ahmed Ullah','Male','Karachi','3504744541','1972-06-07','Karachi Address','2025-10-20'),
('1005','Ali Yousafzai','Female','Islamabad','3896197331','2002-02-13','Islamabad Address','2026-04-16'),
('1006','Sara Afridi','Female','Islamabad','3859877752','2006-07-15','Islamabad Address','2025-12-03'),
('1007','Noor Shah','Male','Lahore','3029580354','1969-10-15','Lahore Address','2026-03-20'),
('1008','Maryam Yousafzai','Female','Lahore','3589119239','1995-03-01','Lahore Address','2024-12-21'),
('1009','Ahmed Shah','Female','Karachi','3887077445','1973-01-09','Karachi Address','2024-05-17'),
('1010','Ayesha Malik','Female','Abbottabad','3895710061','1968-01-24','Abbottabad Address','2025-08-22'),
('1011','Maryam Afridi','Male','Lahore','3562110918','1992-01-28','Lahore Address','2025-03-20'),
('1012','Ali Shah','Male','Lahore','3508409165','1999-12-04','Lahore Address','2026-01-11'),
('1013','Usman Yousafzai','Male','Peshawar','3266818750','1972-05-02','Peshawar Address','2024-09-15'),
('1014','Zain Khan','Male','Faisalabad','3349624976','1999-09-20','Faisalabad Address','2026-04-23'),
('1015','Hamza Yousafzai','Female','Karachi','3750779486','1993-05-18','Karachi Address','2024-08-05'),
('1016','Bilal Ahmed','Female','Faisalabad','3339280725','1964-11-08','Faisalabad Address','2025-02-07'),
('1017','Usman Iqbal','Male','Lahore','3768927867','2001-11-12','Lahore Address','2024-05-05'),
('1018','Hira Ullah','Male','Abbottabad','3950189441','1991-03-22','Abbottabad Address','2024-03-23'),
('1019','Bilal Afridi','Female','Abbottabad','3210179237','1982-06-03','Abbottabad Address','2026-06-01'),
('1020','Fatima Yousafzai','Female','Peshawar','3412686830','1981-09-20','Peshawar Address','2025-09-03'),
('1021','Ahmed Ullah','Male','Islamabad','3285147465','1977-01-25','Islamabad Address','2024-05-25'),
('1022','Sara Afridi','Female','Abbottabad','3160382615','1994-09-19','Abbottabad Address','2025-12-11'),
('1023','Ahmed Iqbal','Male','Lahore','3456680688','1964-05-01','Lahore Address','2026-02-26'),
('1024','Hamza Ahmed','Male','Islamabad','3283952089','1967-08-01','Islamabad Address','2025-09-14'),
('1025','Hamza Shah','Male','Karachi','3117522609','1970-05-02','Karachi Address','2024-04-10'),
('1026','Usman Iqbal','Male','Mardan','3478552639','1992-11-06','Mardan Address','2025-06-26'),
('1027','Ali Iqbal','Male','Peshawar','3019793247','2006-09-18','Peshawar Address','2024-09-16'),
('1028','Ayesha Yousafzai','Male','Abbottabad','3704921640','1991-09-27','Abbottabad Address','2025-09-10'),
('1029','Noor Ullah','Male','Swat','3213271411','2005-12-21','Swat Address','2024-07-12'),
('1030','Ali Shah','Male','Islamabad','3671570011','1976-07-06','Islamabad Address','2024-02-22'),
('1031','Bilal Iqbal','Male','Mardan','3048573390','1989-03-06','Mardan Address','2025-08-01'),
('1032','Hamza Malik','Female','Swat','3262472429','1962-05-07','Swat Address','2025-03-01'),
('1033','Fatima Afridi','Male','Faisalabad','3299497598','1992-11-07','Faisalabad Address','2024-09-25'),
('1034','Ali Ahmed','Female','Islamabad','3154474023','1985-10-02','Islamabad Address','2025-01-10'),
('1035','Hamza Ullah','Male','Lahore','3706032141','2005-10-13','Lahore Address','2025-12-16'),
('1036','Sara Iqbal','Male','Peshawar','3885683607','2005-09-21','Peshawar Address','2025-12-23'),
('1037','Zain Shah','Male','Karachi','3091366527','1961-01-05','Karachi Address','2026-06-04'),
('1038','Bilal Yousafzai','Male','Peshawar','3672405542','1994-11-08','Peshawar Address','2025-05-01'),
('1039','Hira Ahmed','Male','Islamabad','3800719241','1990-05-26','Islamabad Address','2024-05-08'),
('1040','Noor Ullah','Male','Faisalabad','3530373463','1984-02-16','Faisalabad Address','2026-05-25'),
('1041','Ali Ullah','Male','Lahore','3356238486','1976-11-24','Lahore Address','2026-05-20'),
('1042','Maryam Shah','Male','Faisalabad','3065134264','1991-05-22','Faisalabad Address','2024-12-07'),
('1043','Usman Yousafzai','Female','Mardan','3498927943','1989-08-25','Mardan Address','2024-09-07'),
('1044','Hamza Ahmed','Female','Peshawar','3310943694','1989-02-27','Peshawar Address','2026-08-09'),
('1045','Bilal Ullah','Male','Islamabad','3624351203','1965-03-24','Islamabad Address','2026-05-12'),
('1046','Sara Iqbal','Male','Swat','3248446255','1991-08-13','Swat Address','2024-03-01'),
('1047','Hira Yousafzai','Female','Mardan','3780806558','1969-07-12','Mardan Address','2025-06-04'),
('1048','Fatima Khan','Female','Swat','3900988358','1985-02-07','Swat Address','2026-01-24'),
('1049','Hamza Iqbal','Female','Islamabad','3421872496','1984-10-03','Islamabad Address','2025-07-25'),
('1050','Hamza Khan','Female','Islamabad','3055423883','2002-05-21','Islamabad Address','2024-04-09'),
('1051','Bilal Malik','Male','Swat','3843040526','1987-01-26','Swat Address','2026-07-18'),
('1052','Zain Ullah','Male','Peshawar','3786357475','1986-08-20','Peshawar Address','2024-11-28'),
('1053','Hamza Yousafzai','Male','Lahore','3183355162','1990-07-11','Lahore Address','2025-05-09'),
('1054','Noor Iqbal','Female','Karachi','3323020508','1990-09-22','Karachi Address','2025-02-06'),
('1055','Usman Shah','Male','Karachi','3537520296','1991-09-08','Karachi Address','2025-06-25'),
('1056','Hira Afridi','Male','Karachi','3262084953','1965-03-11','Karachi Address','2026-02-11'),
('1057','Ayesha Malik','Female','Karachi','3952679003','1961-12-28','Karachi Address','2025-07-14'),
('1058','Noor Ullah','Female','Mardan','3363142814','1963-08-09','Mardan Address','2026-06-05'),
('1059','Usman Ullah','Male','Mardan','3962921072','1975-07-13','Mardan Address','2026-08-14'),
('1060','Hamza Khan','Male','Peshawar','3456554890','2005-08-19','Peshawar Address','2025-01-03'),
('1061','Bilal Yousafzai','Female','Karachi','3840854936','1966-04-05','Karachi Address','2024-09-22'),
('1062','Ahmed Yousafzai','Male','Peshawar','3001466774','1968-04-19','Peshawar Address','2024-11-23'),
('1063','Hamza Shah','Female','Abbottabad','3750096616','1967-02-03','Abbottabad Address','2025-09-19'),
('1064','Ayesha Afridi','Female','Karachi','3848779167','1998-01-01','Karachi Address','2026-05-15'),
('1065','Hamza Malik','Male','Faisalabad','3565086391','1975-09-08','Faisalabad Address','2024-07-23'),
('1066','Usman Iqbal','Male','Peshawar','3208429638','1991-11-21','Peshawar Address','2025-02-09'),
('1067','Ayesha Afridi','Female','Karachi','3529294005','1962-12-11','Karachi Address','2026-07-12'),
('1068','Usman Afridi','Male','Peshawar','3855841184','1978-12-28','Peshawar Address','2026-02-07'),
('1069','Hira Ullah','Female','Karachi','3247829072','1989-04-09','Karachi Address','2025-02-20'),
('1070','Hira Shah','Male','Faisalabad','3447781560','2002-01-20','Faisalabad Address','2024-07-02'),
('1071','Ayesha Khan','Male','Abbottabad','3055663352','2005-01-06','Abbottabad Address','2025-08-23'),
('1072','Fatima Ahmed','Male','Lahore','3353521720','1972-03-21','Lahore Address','2026-12-15'),
('1073','Ali Iqbal','Female','Swat','3356157464','1988-03-04','Swat Address','2024-02-09'),
('1074','Ahmed Malik','Female','Islamabad','3602507581','1973-07-12','Islamabad Address','2025-07-03'),
('1075','Ali Yousafzai','Male','Swat','3581462375','1988-04-11','Swat Address','2025-12-16'),
('1076','Ali Afridi','Male','Abbottabad','3043647055','1984-01-15','Abbottabad Address','2024-01-09'),
('1077','Ayesha Ahmed','Female','Swat','3292395645','1981-10-02','Swat Address','2025-12-23'),
('1078','Noor Malik','Female','Mardan','3004049743','2006-10-26','Mardan Address','2026-02-01'),
('1079','Ayesha Ahmed','Female','Faisalabad','3833606632','1984-05-14','Faisalabad Address','2025-03-16'),
('1080','Sara Khan','Female','Lahore','3652034264','1975-06-28','Lahore Address','2025-08-12'),
('1081','Maryam Ahmed','Male','Abbottabad','3808404833','1970-04-14','Abbottabad Address','2024-11-02'),
('1082','Hira Malik','Male','Abbottabad','3948623657','1966-02-09','Abbottabad Address','2026-02-07'),
('1083','Ahmed Afridi','Female','Faisalabad','3185963349','1974-03-14','Faisalabad Address','2025-10-22'),
('1084','Ayesha Ahmed','Female','Mardan','3300000146','1996-05-12','Mardan Address','2025-12-09'),
('1085','Ayesha Yousafzai','Male','Lahore','3263432139','1975-03-10','Lahore Address','2026-04-11'),
('1086','Ahmed Afridi','Female','Karachi','3544735550','1993-04-21','Karachi Address','2024-11-15'),
('1087','Ali Ahmed','Male','Faisalabad','3947926150','1974-08-12','Faisalabad Address','2024-05-08'),
('1088','Ahmed Khan','Male','Karachi','3998766456','1964-06-17','Karachi Address','2024-08-20'),
('1089','Hamza Khan','Male','Swat','3233694994','1962-06-11','Swat Address','2024-01-07'),
('1090','Hamza Khan','Male','Peshawar','3879215354','1980-07-22','Peshawar Address','2025-03-20'),
('1091','Hamza Ahmed','Male','Peshawar','3853926648','1991-09-16','Peshawar Address','2024-07-04'),
('1092','Bilal Shah','Male','Lahore','3427104575','2004-05-14','Lahore Address','2025-11-10'),
('1093','Bilal Khan','Female','Swat','3444615043','1986-01-28','Swat Address','2025-11-07'),
('1094','Bilal Afridi','Male','Peshawar','3466180291','1970-07-04','Peshawar Address','2024-07-19'),
('1095','Fatima Yousafzai','Male','Lahore','3015928294','1963-09-05','Lahore Address','2026-07-03'),
('1096','Maryam Malik','Male','Lahore','3373603032','1978-03-17','Lahore Address','2024-02-04'),
('1097','Bilal Yousafzai','Male','Mardan','3135989781','1962-08-11','Mardan Address','2024-10-21'),
('1098','Bilal Ahmed','Male','Karachi','3666850676','1985-10-28','Karachi Address','2024-08-06'),
('1099','Maryam Ullah','Male','Abbottabad','3556082858','1970-07-12','Abbottabad Address','2024-03-08'),
('1100','Noor Ullah','Male','Peshawar','3717148325','1980-02-13','Peshawar Address','2026-08-18'),
('1101','Usman Iqbal','Female','Mardan','3625588468','1975-07-13','Mardan Address','2026-06-15'),
('1102','Zain Yousafzai','Male','Peshawar','3003766788','1999-08-15','Peshawar Address','2024-08-25'),
('1103','Maryam Yousafzai','Male','Faisalabad','3429864322','1966-02-05','Faisalabad Address','2025-07-12'),
('1104','Ahmed Yousafzai','Male','Peshawar','3683369048','1968-02-24','Peshawar Address','2025-12-17'),
('1105','Ahmed Khan','Female','Lahore','3027763191','1964-10-24','Lahore Address','2026-02-07'),
('1106','Sara Yousafzai','Female','Lahore','3736730722','2006-04-03','Lahore Address','2025-10-25'),
('1107','Hamza Shah','Female','Mardan','3971803130','1989-03-09','Mardan Address','2026-08-07'),
('1108','Maryam Iqbal','Male','Swat','3399718592','1962-04-06','Swat Address','2025-03-21'),
('1109','Hamza Malik','Female','Lahore','3850536839','1976-02-25','Lahore Address','2026-01-21'),
('1110','Fatima Yousafzai','Male','Mardan','3575204861','2000-07-24','Mardan Address','2025-05-13'),
('1111','Fatima Shah','Female','Swat','3821025082','1965-08-08','Swat Address','2024-10-24'),
('1112','Ali Iqbal','Female','Mardan','3686376406','1997-11-11','Mardan Address','2026-01-24'),
('1113','Ali Ullah','Male','Mardan','3661480854','2000-07-14','Mardan Address','2026-06-02'),
('1114','Sara Yousafzai','Male','Peshawar','3023933193','1963-01-19','Peshawar Address','2025-05-04'),
('1115','Zain Malik','Male','Abbottabad','3626625977','1979-10-05','Abbottabad Address','2024-06-20'),
('1116','Hira Shah','Male','Peshawar','3860607053','1975-12-05','Peshawar Address','2025-02-03'),
('1117','Usman Shah','Female','Abbottabad','3871417216','1976-01-02','Abbottabad Address','2026-09-12'),
('1118','Maryam Yousafzai','Female','Karachi','3177273873','1960-01-02','Karachi Address','2026-01-13'),
('1119','Sara Ullah','Male','Peshawar','3978975478','1966-01-20','Peshawar Address','2026-11-07'),
('1120','Sara Afridi','Male','Abbottabad','3873360984','1999-03-17','Abbottabad Address','2025-02-10'),
('1121','Usman Khan','Female','Peshawar','3402823628','1987-12-15','Peshawar Address','2024-12-21'),
('1122','Hira Shah','Male','Islamabad','3280704830','1974-11-02','Islamabad Address','2024-06-24'),
('1123','Noor Iqbal','Male','Mardan','3682755852','1995-11-14','Mardan Address','2026-09-09'),
('1124','Hamza Ullah','Male','Peshawar','3182288703','1976-04-27','Peshawar Address','2026-04-06'),
('1125','Noor Malik','Male','Abbottabad','3352781877','1998-04-13','Abbottabad Address','2026-12-22'),
('1126','Zain Yousafzai','Female','Peshawar','3920758050','1961-07-24','Peshawar Address','2024-10-10'),
('1127','Ayesha Afridi','Male','Lahore','3155257615','1962-01-04','Lahore Address','2024-10-06'),
('1128','Fatima Shah','Male','Peshawar','3044720749','1968-12-21','Peshawar Address','2026-01-23'),
('1129','Ahmed Khan','Male','Swat','3214009839','1994-11-03','Swat Address','2026-07-04'),
('1130','Ayesha Ullah','Male','Islamabad','3036357573','1962-11-03','Islamabad Address','2026-11-10'),
('1131','Hira Ahmed','Male','Islamabad','3850368404','2001-04-10','Islamabad Address','2025-06-14'),
('1132','Hamza Khan','Female','Mardan','3998684530','1978-01-23','Mardan Address','2025-06-25'),
('1133','Maryam Yousafzai','Female','Peshawar','3847242276','1986-01-14','Peshawar Address','2026-02-12'),
('1134','Hira Khan','Male','Islamabad','3616908606','1978-03-14','Islamabad Address','2024-09-07'),
('1135','Hamza Khan','Male','Swat','3527017180','1966-08-23','Swat Address','2024-08-19'),
('1136','Fatima Iqbal','Male','Mardan','3875358301','1973-12-08','Mardan Address','2025-03-04'),
('1137','Usman Ahmed','Female','Islamabad','3674237069','1980-06-04','Islamabad Address','2025-07-24'),
('1138','Ahmed Afridi','Male','Swat','3221316208','1979-05-14','Swat Address','2026-09-06'),
('1139','Bilal Ullah','Female','Lahore','3570741655','1998-12-25','Lahore Address','2026-11-02'),
('1140','Fatima Malik','Male','Faisalabad','3710924655','1995-12-11','Faisalabad Address','2024-08-15'),
('1141','Noor Iqbal','Male','Lahore','3358687487','1989-11-23','Lahore Address','2024-09-07'),
('1142','Hamza Iqbal','Male','Lahore','3265838109','2006-06-20','Lahore Address','2026-06-06'),
('1143','Ayesha Malik','Male','Mardan','3782470350','1966-03-22','Mardan Address','2024-04-13'),
('1144','Sara Shah','Female','Mardan','3466995021','1977-04-04','Mardan Address','2026-02-09'),
('1145','Ayesha Afridi','Female','Peshawar','3013547724','1985-07-23','Peshawar Address','2024-09-21'),
('1146','Hamza Yousafzai','Male','Lahore','3276180952','1998-12-13','Lahore Address','2024-12-08'),
('1147','Bilal Afridi','Male','Karachi','3729711212','1971-11-04','Karachi Address','2025-07-11'),
('1148','Hamza Ahmed','Female','Karachi','3840072032','1985-12-23','Karachi Address','2026-03-09'),
('1149','Bilal Yousafzai','Female','Peshawar','3667404388','1986-09-22','Peshawar Address','2026-03-21'),
('1150','Fatima Khan','Female','Faisalabad','3975163692','1966-01-09','Faisalabad Address','2026-04-06'),
('1151','Noor Ullah','Female','Islamabad','3909630589','1996-08-18','Islamabad Address','2024-12-16'),
('1152','Zain Khan','Female','Swat','3440608510','1989-04-22','Swat Address','2024-07-17'),
('1153','Ahmed Malik','Male','Mardan','3294588820','1984-07-02','Mardan Address','2024-02-14'),
('1154','Bilal Malik','Female','Islamabad','3240976981','1979-12-13','Islamabad Address','2026-04-26'),
('1155','Bilal Yousafzai','Male','Lahore','3138833943','1964-11-07','Lahore Address','2025-11-18'),
('1156','Noor Ullah','Male','Swat','3715152627','2000-07-15','Swat Address','2025-09-21'),
('1157','Sara Yousafzai','Female','Karachi','3287144852','2005-07-22','Karachi Address','2025-07-22'),
('1158','Sara Yousafzai','Male','Mardan','3384375328','1975-11-10','Mardan Address','2025-08-16'),
('1159','Bilal Ahmed','Female','Lahore','3997212168','1979-07-02','Lahore Address','2024-10-11'),
('1160','Sara Malik','Male','Peshawar','3225216777','1964-11-10','Peshawar Address','2025-10-04'),
('1161','Maryam Shah','Male','Lahore','3833551766','1988-06-26','Lahore Address','2024-04-13'),
('1162','Zain Shah','Male','Mardan','3211924971','1991-12-07','Mardan Address','2026-02-24'),
('1163','Hira Ahmed','Male','Mardan','3449938790','1974-03-16','Mardan Address','2025-09-02'),
('1164','Hira Yousafzai','Male','Faisalabad','3264748886','1991-03-18','Faisalabad Address','2026-12-01'),
('1165','Sara Malik','Female','Faisalabad','3714361021','1978-08-12','Faisalabad Address','2025-07-22'),
('1166','Ahmed Shah','Female','Peshawar','3022075886','1999-01-22','Peshawar Address','2026-06-26'),
('1167','Ahmed Yousafzai','Female','Lahore','3036396627','1973-12-14','Lahore Address','2026-03-11'),
('1168','Ahmed Malik','Female','Faisalabad','3835933768','1993-09-25','Faisalabad Address','2024-05-14'),
('1169','Fatima Afridi','Female','Peshawar','3887689060','1978-05-12','Peshawar Address','2025-07-11'),
('1170','Zain Iqbal','Female','Karachi','3702827540','1991-02-11','Karachi Address','2024-06-23'),
('1171','Hamza Shah','Male','Peshawar','3428292359','2006-09-13','Peshawar Address','2026-10-02'),
('1172','Bilal Iqbal','Male','Peshawar','3049818055','1972-08-20','Peshawar Address','2026-01-26'),
('1173','Zain Afridi','Male','Islamabad','3228171634','1962-11-21','Islamabad Address','2025-11-25'),
('1174','Sara Ahmed','Male','Peshawar','3452658861','1966-11-01','Peshawar Address','2025-03-26'),
('1175','Hamza Iqbal','Female','Lahore','3452887885','1962-06-01','Lahore Address','2025-10-21'),
('1176','Maryam Khan','Female','Peshawar','3885575275','1967-07-19','Peshawar Address','2026-07-15'),
('1177','Ahmed Khan','Female','Lahore','3510508846','1986-09-04','Lahore Address','2024-11-16'),
('1178','Ayesha Shah','Male','Abbottabad','3005136010','1960-11-22','Abbottabad Address','2024-02-07'),
('1179','Ahmed Shah','Female','Peshawar','3295757782','2006-10-08','Peshawar Address','2025-12-24'),
('1180','Sara Khan','Female','Lahore','3783532790','1965-05-21','Lahore Address','2026-12-16'),
('1181','Hira Iqbal','Male','Peshawar','3012241697','1963-01-21','Peshawar Address','2026-10-03'),
('1182','Bilal Iqbal','Female','Lahore','3924456868','1991-10-02','Lahore Address','2025-06-19'),
('1183','Noor Yousafzai','Female','Lahore','3155592193','1967-06-21','Lahore Address','2024-11-26'),
('1184','Bilal Yousafzai','Female','Faisalabad','3292037104','1996-06-10','Faisalabad Address','2025-01-20'),
('1185','Usman Malik','Male','Lahore','3645466265','1979-10-14','Lahore Address','2024-07-13'),
('1186','Usman Afridi','Male','Faisalabad','3304201052','2004-01-11','Faisalabad Address','2025-05-14'),
('1187','Sara Khan','Female','Lahore','3871612517','1996-03-09','Lahore Address','2026-11-25'),
('1188','Hira Malik','Male','Faisalabad','3856189470','1984-04-26','Faisalabad Address','2026-04-10'),
('1189','Maryam Khan','Female','Faisalabad','3760573566','1973-05-19','Faisalabad Address','2024-07-15'),
('1190','Zain Ahmed','Female','Islamabad','3250038426','1985-10-17','Islamabad Address','2025-09-11'),
('1191','Hira Ullah','Male','Karachi','3206495626','1965-03-26','Karachi Address','2026-05-12'),
('1192','Maryam Malik','Female','Lahore','3264467808','1962-08-12','Lahore Address','2024-06-21'),
('1193','Hira Ahmed','Male','Swat','3641251925','1961-06-09','Swat Address','2026-10-01'),
('1194','Ahmed Khan','Male','Faisalabad','3629976100','1996-04-09','Faisalabad Address','2025-07-04'),
('1195','Hira Shah','Female','Peshawar','3363830090','1972-03-13','Peshawar Address','2024-01-02'),
('1196','Ali Malik','Female','Faisalabad','3907962111','1964-10-21','Faisalabad Address','2025-02-23'),
('1197','Ahmed Iqbal','Female','Karachi','3687874420','1965-11-17','Karachi Address','2025-03-15'),
('1198','Sara Malik','Male','Karachi','3184816723','1962-05-12','Karachi Address','2024-09-01'),
('1199','Ali Iqbal','Female','Peshawar','3108508882','1969-06-25','Peshawar Address','2024-04-22'),
('1200','Noor Iqbal','Female','Islamabad','3505437522','1980-06-09','Islamabad Address','2025-02-12'),
('1201','Hira Afridi','Male','Faisalabad','3256041744','1969-11-01','Faisalabad Address','2025-12-07'),
('1202','Ali Shah','Male','Islamabad','3664274235','1983-12-05','Islamabad Address','2025-02-13'),
('1203','Ali Ahmed','Female','Swat','3346352129','1974-08-04','Swat Address','2026-06-05'),
('1204','Fatima Ullah','Male','Lahore','3766355764','1988-09-05','Lahore Address','2025-03-09'),
('1205','Bilal Afridi','Male','Lahore','3027294571','1977-10-27','Lahore Address','2025-06-26'),
('1206','Sara Iqbal','Female','Islamabad','3341521687','1989-08-04','Islamabad Address','2024-09-02'),
('1207','Usman Ullah','Female','Mardan','3127978332','1976-04-12','Mardan Address','2025-05-08'),
('1208','Ayesha Ahmed','Female','Mardan','3446285747','1970-01-27','Mardan Address','2026-05-05'),
('1209','Usman Khan','Female','Swat','3548450606','1968-08-01','Swat Address','2026-05-06'),
('1210','Fatima Afridi','Male','Abbottabad','3234360175','1977-10-06','Abbottabad Address','2024-03-17'),
('1211','Ayesha Shah','Male','Islamabad','3890100717','1965-10-24','Islamabad Address','2025-05-06'),
('1212','Ayesha Shah','Male','Mardan','3217208140','1960-02-23','Mardan Address','2026-09-14'),
('1213','Noor Khan','Female','Swat','3302535092','2000-08-03','Swat Address','2024-07-25'),
('1214','Hira Shah','Female','Karachi','3199771993','1996-06-02','Karachi Address','2024-12-12'),
('1215','Maryam Khan','Female','Faisalabad','3553648588','1964-02-12','Faisalabad Address','2026-04-27'),
('1216','Fatima Afridi','Male','Mardan','3937165463','1966-12-16','Mardan Address','2025-09-01'),
('1217','Zain Shah','Male','Karachi','3095118706','1974-10-06','Karachi Address','2024-02-10'),
('1218','Hamza Khan','Male','Islamabad','3994619596','2004-12-07','Islamabad Address','2025-01-27'),
('1219','Maryam Yousafzai','Male','Faisalabad','3110449992','1982-02-23','Faisalabad Address','2024-01-09'),
('1220','Ahmed Yousafzai','Female','Mardan','3118154554','1967-02-13','Mardan Address','2024-09-19'),
('1221','Ayesha Ullah','Male','Faisalabad','3801632584','1985-03-27','Faisalabad Address','2024-11-13'),
('1222','Noor Afridi','Male','Abbottabad','3055797793','1983-06-13','Abbottabad Address','2024-06-23'),
('1223','Bilal Malik','Female','Peshawar','3348836991','1993-03-22','Peshawar Address','2025-04-28'),
('1224','Bilal Khan','Female','Islamabad','3569940365','1971-02-11','Islamabad Address','2025-04-17'),
('1225','Usman Khan','Male','Lahore','3451753215','1985-08-21','Lahore Address','2024-01-02'),
('1226','Usman Iqbal','Female','Peshawar','3667070469','1966-05-04','Peshawar Address','2026-01-14'),
('1227','Ayesha Khan','Female','Islamabad','3327933360','1982-11-06','Islamabad Address','2024-01-20'),
('1228','Zain Iqbal','Male','Faisalabad','3633774138','1994-03-15','Faisalabad Address','2024-09-05'),
('1229','Hamza Afridi','Female','Mardan','3261349503','1965-12-18','Mardan Address','2025-08-20'),
('1230','Noor Ullah','Female','Karachi','3589026983','2005-06-15','Karachi Address','2026-05-20'),
('1231','Hira Yousafzai','Female','Peshawar','3260118730','1981-04-07','Peshawar Address','2026-09-13'),
('1232','Maryam Afridi','Male','Swat','3174262382','1975-06-18','Swat Address','2025-08-09'),
('1233','Hamza Ullah','Female','Peshawar','3829066775','1961-03-18','Peshawar Address','2024-10-28'),
('1234','Fatima Yousafzai','Male','Abbottabad','3895855040','1988-06-24','Abbottabad Address','2024-09-08'),
('1235','Usman Shah','Female','Swat','3717520248','1982-03-22','Swat Address','2024-10-20'),
('1236','Hamza Ahmed','Female','Mardan','3842825328','2000-12-21','Mardan Address','2026-03-14'),
('1237','Ahmed Khan','Female','Islamabad','3534598000','1985-10-05','Islamabad Address','2025-05-28'),
('1238','Maryam Ahmed','Female','Faisalabad','3743720192','1989-05-24','Faisalabad Address','2025-05-12'),
('1239','Bilal Afridi','Female','Peshawar','3845118490','1991-07-15','Peshawar Address','2025-03-18'),
('1240','Hamza Shah','Female','Abbottabad','3624469329','1974-02-27','Abbottabad Address','2025-06-27'),
('1241','Maryam Ullah','Female','Karachi','3457894264','1960-01-02','Karachi Address','2025-10-16'),
('1242','Hamza Iqbal','Female','Abbottabad','3418241313','1989-06-02','Abbottabad Address','2026-11-12'),
('1243','Hira Khan','Male','Karachi','3106264226','1986-06-17','Karachi Address','2025-11-18'),
('1244','Maryam Shah','Male','Abbottabad','3522604174','1985-08-25','Abbottabad Address','2026-10-11'),
('1245','Noor Ahmed','Male','Swat','3341533390','1983-02-27','Swat Address','2025-09-06'),
('1246','Ahmed Iqbal','Female','Abbottabad','3677639817','1970-09-10','Abbottabad Address','2026-04-17'),
('1247','Ayesha Afridi','Male','Peshawar','3676562780','1996-10-04','Peshawar Address','2025-10-21'),
('1248','Usman Khan','Female','Peshawar','3845717365','1960-05-23','Peshawar Address','2026-09-01'),
('1249','Hamza Afridi','Male','Peshawar','3717373790','1961-04-06','Peshawar Address','2025-09-19'),
('1250','Hamza Shah','Male','Abbottabad','3646115404','1967-03-06','Abbottabad Address','2026-09-04'),
('1251','Ali Ahmed','Male','Lahore','3561024883','1991-08-20','Lahore Address','2025-01-21'),
('1252','Ali Malik','Male','Karachi','3379937964','1977-03-02','Karachi Address','2025-11-04'),
('1253','Maryam Ahmed','Female','Karachi','3483010316','1999-07-01','Karachi Address','2024-04-13'),
('1254','Maryam Khan','Female','Peshawar','3665911105','1975-04-08','Peshawar Address','2024-03-19'),
('1255','Sara Malik','Male','Faisalabad','3326070212','1986-10-09','Faisalabad Address','2025-02-08'),
('1256','Usman Afridi','Male','Abbottabad','3331955744','1985-12-16','Abbottabad Address','2024-04-03'),
('1257','Sara Shah','Female','Abbottabad','3200309527','1960-05-13','Abbottabad Address','2026-06-04'),
('1258','Fatima Afridi','Female','Abbottabad','3699308506','1964-02-14','Abbottabad Address','2025-09-08'),
('1259','Bilal Ullah','Female','Mardan','3369881564','1975-07-02','Mardan Address','2025-11-01'),
('1260','Fatima Shah','Male','Lahore','3099462111','1972-05-18','Lahore Address','2024-09-15'),
('1261','Hira Ullah','Male','Swat','3378943536','1973-12-13','Swat Address','2025-11-19'),
('1262','Ayesha Iqbal','Female','Karachi','3244032518','1988-11-05','Karachi Address','2026-05-20'),
('1263','Hira Malik','Male','Abbottabad','3653053667','1992-04-05','Abbottabad Address','2024-11-17'),
('1264','Ahmed Iqbal','Female','Peshawar','3706008300','2005-10-05','Peshawar Address','2025-01-13'),
('1265','Noor Ahmed','Male','Karachi','3344711028','1972-11-04','Karachi Address','2024-09-12'),
('1266','Zain Iqbal','Male','Islamabad','3771718449','1979-02-08','Islamabad Address','2025-03-27'),
('1267','Noor Afridi','Female','Swat','3433123990','1989-11-21','Swat Address','2024-05-06'),
('1268','Ali Malik','Female','Abbottabad','3027126589','2002-12-23','Abbottabad Address','2025-04-28'),
('1269','Bilal Malik','Male','Lahore','3312970492','1967-05-20','Lahore Address','2026-04-23'),
('1270','Usman Khan','Female','Peshawar','3653403749','1970-07-07','Peshawar Address','2025-03-13'),
('1271','Noor Khan','Female','Lahore','3606180787','1974-10-16','Lahore Address','2026-09-09'),
('1272','Bilal Malik','Male','Islamabad','3895795503','2001-05-02','Islamabad Address','2026-10-23'),
('1273','Ali Ullah','Male','Peshawar','3849799643','1980-04-25','Peshawar Address','2025-12-03'),
('1274','Bilal Afridi','Male','Mardan','3566210494','1965-06-14','Mardan Address','2025-06-23'),
('1275','Zain Yousafzai','Male','Karachi','3459937729','2003-09-28','Karachi Address','2024-08-25'),
('1276','Ayesha Khan','Female','Lahore','3586696278','1970-11-08','Lahore Address','2026-05-08'),
('1277','Ali Shah','Female','Swat','3441992933','1965-04-21','Swat Address','2025-03-05'),
('1278','Usman Yousafzai','Female','Karachi','3757654885','1975-01-17','Karachi Address','2026-08-05'),
('1279','Usman Malik','Female','Lahore','3949923624','2005-03-19','Lahore Address','2026-04-11'),
('1280','Usman Ahmed','Female','Lahore','3726950117','2002-03-20','Lahore Address','2025-07-27'),
('1281','Ayesha Ahmed','Female','Peshawar','3387063315','1991-04-02','Peshawar Address','2024-05-10'),
('1282','Ayesha Ahmed','Female','Faisalabad','3121320311','1970-06-15','Faisalabad Address','2025-10-12'),
('1283','Hamza Shah','Male','Peshawar','3011611611','1989-08-03','Peshawar Address','2026-12-11'),
('1284','Noor Iqbal','Male','Faisalabad','3466262030','1991-04-26','Faisalabad Address','2026-06-01'),
('1285','Fatima Ahmed','Female','Mardan','3701231724','1975-02-05','Mardan Address','2026-01-01'),
('1286','Bilal Shah','Female','Swat','3199431147','2000-09-28','Swat Address','2026-03-04'),
('1287','Noor Iqbal','Female','Abbottabad','3198151366','2001-06-11','Abbottabad Address','2024-06-05'),
('1288','Zain Malik','Female','Karachi','3061978611','1962-02-19','Karachi Address','2026-12-13'),
('1289','Ali Ullah','Female','Abbottabad','3536366367','2006-03-10','Abbottabad Address','2026-10-21'),
('1290','Ahmed Shah','Male','Lahore','3148498732','1988-11-13','Lahore Address','2024-01-28'),
('1291','Hira Yousafzai','Male','Karachi','3776261974','1983-01-02','Karachi Address','2026-09-14'),
('1292','Sara Iqbal','Male','Peshawar','3552571108','2005-07-11','Peshawar Address','2024-08-01'),
('1293','Usman Shah','Male','Abbottabad','3317548753','1960-08-26','Abbottabad Address','2026-11-12'),
('1294','Maryam Ullah','Female','Islamabad','3582742929','1980-09-15','Islamabad Address','2025-09-21'),
('1295','Sara Afridi','Male','Peshawar','3776066673','2003-06-20','Peshawar Address','2026-05-19'),
('1296','Maryam Afridi','Female','Faisalabad','3704908812','2001-03-10','Faisalabad Address','2025-09-21'),
('1297','Ali Ullah','Male','Faisalabad','3742341355','1965-03-22','Faisalabad Address','2026-06-18'),
('1298','Maryam Afridi','Female','Karachi','3606465495','1988-07-09','Karachi Address','2024-04-06'),
('1299','Ayesha Ahmed','Male','Mardan','3697582312','1966-04-17','Mardan Address','2026-05-23'),
('1300','Hira Ullah','Female','Karachi','3581137688','1996-12-04','Karachi Address','2026-09-19'),
('1301','Maryam Ahmed','Female','Islamabad','3859352605','1988-03-28','Islamabad Address','2026-09-17'),
('1302','Noor Ahmed','Male','Faisalabad','3891431977','2003-07-18','Faisalabad Address','2024-04-19'),
('1303','Hira Ahmed','Male','Swat','3833399657','1999-01-13','Swat Address','2024-01-12'),
('1304','Ali Khan','Male','Faisalabad','3322047380','1967-12-05','Faisalabad Address','2025-02-20'),
('1305','Ayesha Ahmed','Female','Lahore','3394044344','1981-12-22','Lahore Address','2024-05-04'),
('1306','Ayesha Malik','Female','Faisalabad','3046711822','1998-06-04','Faisalabad Address','2025-09-11'),
('1307','Maryam Ahmed','Male','Karachi','3273377237','1982-04-23','Karachi Address','2025-01-27'),
('1308','Maryam Yousafzai','Male','Peshawar','3524037297','1967-02-26','Peshawar Address','2025-03-05'),
('1309','Zain Iqbal','Female','Lahore','3631698884','1976-09-23','Lahore Address','2025-08-01'),
('1310','Ali Malik','Male','Faisalabad','3538776659','1990-01-26','Faisalabad Address','2024-02-06'),
('1311','Maryam Afridi','Female','Lahore','3744016154','1988-07-08','Lahore Address','2026-09-03'),
('1312','Fatima Malik','Male','Mardan','3959908552','1968-10-20','Mardan Address','2024-04-06'),
('1313','Fatima Yousafzai','Female','Faisalabad','3416484375','1982-06-01','Faisalabad Address','2025-10-16'),
('1314','Fatima Ullah','Male','Karachi','3493285269','1998-01-21','Karachi Address','2024-12-22'),
('1315','Sara Iqbal','Female','Mardan','3068164284','1992-05-12','Mardan Address','2026-10-17'),
('1316','Maryam Shah','Male','Islamabad','3936713798','1972-07-21','Islamabad Address','2026-11-04'),
('1317','Fatima Iqbal','Male','Lahore','3731576606','1964-05-25','Lahore Address','2025-12-12'),
('1318','Zain Ullah','Female','Abbottabad','3359088982','1963-12-11','Abbottabad Address','2026-06-26'),
('1319','Hira Malik','Male','Karachi','3374989290','1969-03-07','Karachi Address','2024-11-15'),
('1320','Bilal Yousafzai','Female','Mardan','3998021425','1970-10-03','Mardan Address','2024-05-24'),
('1321','Hamza Iqbal','Female','Islamabad','3989157206','1972-10-03','Islamabad Address','2026-03-10'),
('1322','Maryam Malik','Female','Swat','3831547359','2004-07-24','Swat Address','2024-08-11'),
('1323','Sara Iqbal','Female','Peshawar','3814424261','1970-11-09','Peshawar Address','2024-12-01'),
('1324','Ayesha Khan','Female','Faisalabad','3215121733','1998-05-28','Faisalabad Address','2026-11-04'),
('1325','Ayesha Ullah','Male','Lahore','3645342121','1963-02-03','Lahore Address','2026-06-24'),
('1326','Sara Khan','Male','Mardan','3576534329','2001-01-21','Mardan Address','2025-01-07'),
('1327','Fatima Malik','Male','Faisalabad','3435206727','1999-11-26','Faisalabad Address','2025-03-02'),
('1328','Bilal Khan','Male','Swat','3833181614','1991-10-13','Swat Address','2025-08-28'),
('1329','Ali Khan','Female','Swat','3060148391','1986-10-23','Swat Address','2026-06-06'),
('1330','Ahmed Khan','Male','Karachi','3153177904','1993-02-12','Karachi Address','2025-07-12'),
('1331','Zain Shah','Female','Karachi','3795731861','1999-05-27','Karachi Address','2026-08-25'),
('1332','Ali Iqbal','Female','Mardan','3388001858','1993-09-09','Mardan Address','2024-05-01'),
('1333','Zain Yousafzai','Male','Swat','3161698150','2000-04-13','Swat Address','2024-01-20'),
('1334','Sara Ahmed','Male','Karachi','3596192799','1971-05-20','Karachi Address','2025-12-05'),
('1335','Sara Shah','Male','Swat','3835484171','2005-04-15','Swat Address','2025-04-21'),
('1336','Fatima Afridi','Female','Karachi','3347711699','1961-02-22','Karachi Address','2026-01-03'),
('1337','Usman Afridi','Female','Peshawar','3244938495','1996-07-14','Peshawar Address','2025-11-21'),
('1338','Ayesha Khan','Female','Peshawar','3281664813','2005-07-08','Peshawar Address','2024-06-07'),
('1339','Fatima Afridi','Female','Mardan','3944270305','1991-04-19','Mardan Address','2024-08-28'),
('1340','Hamza Shah','Female','Mardan','3094954134','1981-01-16','Mardan Address','2024-03-11'),
('1341','Usman Yousafzai','Male','Peshawar','3947961595','1973-12-12','Peshawar Address','2024-08-06'),
('1342','Bilal Shah','Female','Peshawar','3864384132','1967-03-01','Peshawar Address','2024-05-05'),
('1343','Zain Malik','Male','Lahore','3498730670','2003-07-03','Lahore Address','2025-06-21'),
('1344','Usman Afridi','Female','Peshawar','3628433129','1975-04-26','Peshawar Address','2026-12-01'),
('1345','Ali Shah','Male','Abbottabad','3749926928','1966-12-01','Abbottabad Address','2024-06-03'),
('1346','Ahmed Ahmed','Female','Lahore','3564160839','1987-01-06','Lahore Address','2024-11-18'),
('1347','Sara Ahmed','Female','Faisalabad','3986437237','1964-06-07','Faisalabad Address','2024-12-03'),
('1348','Hamza Shah','Male','Mardan','3288840651','1964-01-07','Mardan Address','2026-01-14'),
('1349','Zain Malik','Female','Peshawar','3349730537','2004-01-21','Peshawar Address','2025-09-10'),
('1350','Zain Malik','Female','Mardan','3428727012','1987-06-18','Mardan Address','2025-07-05'),
('1351','Bilal Afridi','Female','Lahore','3964324570','2000-01-08','Lahore Address','2026-09-09'),
('1352','Noor Afridi','Male','Karachi','3712349215','1967-02-27','Karachi Address','2026-01-23'),
('1353','Ali Afridi','Female','Faisalabad','3589428692','2002-06-15','Faisalabad Address','2026-01-16'),
('1354','Noor Yousafzai','Female','Abbottabad','3251722176','2000-12-28','Abbottabad Address','2025-06-23'),
('1355','Ahmed Afridi','Female','Swat','3077304168','2000-09-22','Swat Address','2024-10-25'),
('1356','Hamza Iqbal','Female','Swat','3560539725','1997-08-19','Swat Address','2024-03-03'),
('1357','Zain Malik','Male','Lahore','3873331151','1983-04-22','Lahore Address','2024-03-27'),
('1358','Usman Yousafzai','Male','Peshawar','3345705174','1984-06-27','Peshawar Address','2025-02-14'),
('1359','Sara Iqbal','Female','Islamabad','3391673413','1982-11-26','Islamabad Address','2026-09-10'),
('1360','Hira Ahmed','Female','Abbottabad','3311922077','1988-12-04','Abbottabad Address','2025-11-16'),
('1361','Noor Shah','Male','Peshawar','3730337649','1968-06-16','Peshawar Address','2026-11-08'),
('1362','Maryam Malik','Female','Abbottabad','3271512993','1961-09-07','Abbottabad Address','2024-10-09'),
('1363','Ali Shah','Female','Mardan','3984540718','1980-05-08','Mardan Address','2025-08-03'),
('1364','Zain Yousafzai','Male','Karachi','3137761575','1987-05-20','Karachi Address','2025-01-23'),
('1365','Hira Afridi','Female','Peshawar','3765080132','1978-07-14','Peshawar Address','2026-10-26'),
('1366','Hamza Malik','Male','Abbottabad','3912355911','1997-03-20','Abbottabad Address','2024-12-19'),
('1367','Fatima Ahmed','Male','Swat','3923609902','1964-02-25','Swat Address','2025-07-13'),
('1368','Zain Afridi','Female','Peshawar','3115758636','1997-10-15','Peshawar Address','2025-12-27'),
('1369','Bilal Afridi','Female','Lahore','3956008293','1964-08-13','Lahore Address','2025-03-17'),
('1370','Ali Ullah','Male','Abbottabad','3581608741','1962-11-10','Abbottabad Address','2026-06-25'),
('1371','Bilal Yousafzai','Male','Islamabad','3236983930','1964-10-27','Islamabad Address','2024-02-16'),
('1372','Ahmed Ullah','Female','Peshawar','3884756095','2003-04-23','Peshawar Address','2025-08-28'),
('1373','Ali Afridi','Male','Abbottabad','3877085417','1963-11-05','Abbottabad Address','2025-06-07'),
('1374','Zain Khan','Male','Mardan','3558357273','1976-02-11','Mardan Address','2025-05-22'),
('1375','Hamza Afridi','Female','Peshawar','3329474282','1979-04-28','Peshawar Address','2025-07-28'),
('1376','Zain Iqbal','Female','Karachi','3141465694','1963-04-18','Karachi Address','2026-06-15'),
('1377','Usman Yousafzai','Male','Swat','3999074077','1981-04-15','Swat Address','2026-09-22'),
('1378','Ali Malik','Male','Islamabad','3439083758','1996-06-02','Islamabad Address','2025-04-26'),
('1379','Hira Iqbal','Male','Karachi','3861636606','1997-10-15','Karachi Address','2025-12-15'),
('1380','Ayesha Ullah','Male','Lahore','3465704129','2000-02-02','Lahore Address','2024-02-27'),
('1381','Maryam Yousafzai','Male','Peshawar','3990417805','2006-09-24','Peshawar Address','2024-08-08'),
('1382','Usman Iqbal','Male','Lahore','3156525251','2005-04-17','Lahore Address','2024-08-04'),
('1383','Ayesha Ahmed','Male','Abbottabad','3240270483','2002-05-23','Abbottabad Address','2025-11-14'),
('1384','Sara Khan','Male','Peshawar','3171953460','1988-05-25','Peshawar Address','2024-10-26'),
('1385','Fatima Shah','Female','Mardan','3348313641','1995-04-05','Mardan Address','2026-04-13'),
('1386','Ali Malik','Female','Lahore','3688035758','1978-04-21','Lahore Address','2026-12-03'),
('1387','Ayesha Yousafzai','Male','Lahore','3461557050','1981-11-13','Lahore Address','2024-01-27'),
('1388','Fatima Ahmed','Male','Islamabad','3312199734','1991-06-01','Islamabad Address','2025-02-07'),
('1389','Hira Iqbal','Female','Islamabad','3216171000','1968-08-09','Islamabad Address','2024-10-10'),
('1390','Ali Ahmed','Male','Swat','3208708361','1969-11-10','Swat Address','2024-03-11'),
('1391','Fatima Yousafzai','Female','Karachi','3353857442','1983-03-04','Karachi Address','2025-02-24'),
('1392','Zain Yousafzai','Male','Islamabad','3846096881','1970-10-13','Islamabad Address','2025-01-02'),
('1393','Ali Ahmed','Female','Lahore','3445952902','1996-06-03','Lahore Address','2025-12-22'),
('1394','Noor Shah','Female','Lahore','3711617914','1965-06-01','Lahore Address','2026-08-10'),
('1395','Sara Iqbal','Male','Islamabad','3943885220','1975-02-05','Islamabad Address','2025-05-18'),
('1396','Zain Ahmed','Female','Faisalabad','3264108394','1970-10-18','Faisalabad Address','2024-09-09'),
('1397','Fatima Ullah','Female','Abbottabad','3596240173','1973-03-08','Abbottabad Address','2026-09-17'),
('1398','Ayesha Ahmed','Male','Islamabad','3057621606','1991-12-19','Islamabad Address','2024-12-24'),
('1399','Ayesha Ahmed','Male','Lahore','3903096188','1976-01-14','Lahore Address','2025-10-17'),
('1400','Ahmed Iqbal','Male','Islamabad','3712845443','1997-04-08','Islamabad Address','2024-10-25'),
('1401','Zain Khan','Male','Islamabad','3643362427','1981-02-02','Islamabad Address','2024-10-25'),
('1402','Noor Shah','Female','Swat','3090197422','1989-10-06','Swat Address','2024-06-14'),
('1403','Bilal Khan','Male','Karachi','3158983405','2006-09-22','Karachi Address','2024-03-26'),
('1404','Fatima Shah','Male','Karachi','3993102245','1974-11-11','Karachi Address','2026-02-01'),
('1405','Hira Khan','Female','Swat','3975060909','1964-10-21','Swat Address','2024-04-28'),
('1406','Usman Khan','Female','Abbottabad','3099199207','2001-12-12','Abbottabad Address','2026-03-26'),
('1407','Hira Yousafzai','Male','Mardan','3889518895','2004-05-02','Mardan Address','2026-08-27'),
('1408','Usman Shah','Female','Abbottabad','3886023628','2000-09-10','Abbottabad Address','2026-10-18'),
('1409','Usman Ahmed','Male','Mardan','3806074328','1974-04-07','Mardan Address','2026-08-18'),
('1410','Ayesha Yousafzai','Male','Abbottabad','3712549371','1985-11-22','Abbottabad Address','2025-07-13'),
('1411','Ahmed Ullah','Female','Abbottabad','3851423020','1979-01-10','Abbottabad Address','2025-10-01'),
('1412','Ahmed Yousafzai','Female','Abbottabad','3649353053','1979-08-05','Abbottabad Address','2025-09-07'),
('1413','Ahmed Malik','Female','Faisalabad','3664942896','1962-05-11','Faisalabad Address','2024-05-06'),
('1414','Noor Yousafzai','Female','Karachi','3129612053','1973-11-21','Karachi Address','2024-07-27'),
('1415','Sara Afridi','Female','Swat','3162032115','1983-03-08','Swat Address','2025-10-13'),
('1416','Hamza Yousafzai','Female','Karachi','3919922344','1970-07-17','Karachi Address','2024-01-28'),
('1417','Sara Ahmed','Male','Faisalabad','3606943112','2002-05-24','Faisalabad Address','2025-11-04'),
('1418','Zain Afridi','Male','Mardan','3715443026','1986-02-17','Mardan Address','2026-06-15'),
('1419','Hamza Iqbal','Female','Mardan','3709919615','2005-11-22','Mardan Address','2025-09-26'),
('1420','Usman Khan','Female','Faisalabad','3390544118','2004-01-02','Faisalabad Address','2026-02-18'),
('1421','Bilal Yousafzai','Female','Lahore','3782609042','1998-12-15','Lahore Address','2024-06-16'),
('1422','Sara Khan','Female','Lahore','3201497959','1997-10-17','Lahore Address','2024-07-06'),
('1423','Noor Iqbal','Male','Mardan','3829869812','1994-01-14','Mardan Address','2026-07-21'),
('1424','Ahmed Afridi','Female','Swat','3741795704','1977-06-06','Swat Address','2026-08-27'),
('1425','Ali Malik','Male','Karachi','3554043292','1963-03-10','Karachi Address','2026-09-06'),
('1426','Usman Iqbal','Male','Mardan','3411211293','1983-12-06','Mardan Address','2025-05-16'),
('1427','Ayesha Malik','Female','Abbottabad','3116423640','2003-05-12','Abbottabad Address','2025-06-13'),
('1428','Hira Iqbal','Male','Karachi','3994071281','1999-08-17','Karachi Address','2025-11-06'),
('1429','Fatima Khan','Male','Mardan','3812905496','1994-08-22','Mardan Address','2026-11-14'),
('1430','Ahmed Iqbal','Female','Swat','3770196310','1985-09-26','Swat Address','2025-11-04'),
('1431','Hamza Yousafzai','Male','Peshawar','3571441980','2004-10-10','Peshawar Address','2025-10-12'),
('1432','Hamza Ullah','Male','Islamabad','3809317441','1998-11-27','Islamabad Address','2025-12-04'),
('1433','Hamza Shah','Male','Islamabad','3831731100','1985-07-27','Islamabad Address','2026-06-13'),
('1434','Bilal Yousafzai','Female','Swat','3928805754','1971-12-28','Swat Address','2024-09-24'),
('1435','Zain Afridi','Female','Lahore','3228763948','1981-11-03','Lahore Address','2025-02-17'),
('1436','Ali Ullah','Female','Abbottabad','3229713090','1996-12-09','Abbottabad Address','2026-03-05'),
('1437','Ayesha Ullah','Male','Mardan','3965095877','1962-12-27','Mardan Address','2026-07-10'),
('1438','Sara Afridi','Female','Islamabad','3828418102','1998-10-27','Islamabad Address','2026-05-20'),
('1439','Ayesha Ullah','Female','Islamabad','3386269722','2003-10-26','Islamabad Address','2024-06-01'),
('1440','Noor Ahmed','Male','Swat','3234496987','1960-08-21','Swat Address','2024-08-09'),
('1441','Zain Khan','Female','Peshawar','3042525907','1994-08-04','Peshawar Address','2025-04-10'),
('1442','Usman Malik','Female','Karachi','3233925826','1995-04-10','Karachi Address','2026-09-23'),
('1443','Ali Ullah','Male','Peshawar','3870564054','1992-05-14','Peshawar Address','2025-02-21'),
('1444','Hamza Ahmed','Male','Abbottabad','3419088397','1992-10-14','Abbottabad Address','2024-11-28'),
('1445','Ali Malik','Female','Mardan','3076645790','2001-08-19','Mardan Address','2024-07-15'),
('1446','Usman Yousafzai','Male','Swat','3661086577','1972-02-13','Swat Address','2024-05-25'),
('1447','Ayesha Ahmed','Male','Faisalabad','3834759696','1972-12-24','Faisalabad Address','2024-05-07'),
('1448','Zain Iqbal','Male','Peshawar','3067355209','1982-04-14','Peshawar Address','2024-11-24'),
('1449','Noor Iqbal','Female','Lahore','3607068505','2000-06-12','Lahore Address','2025-02-02'),
('1450','Noor Shah','Female','Abbottabad','3965277124','1961-12-15','Abbottabad Address','2024-06-04'),
('1451','Sara Malik','Female','Faisalabad','3088842301','1981-06-16','Faisalabad Address','2024-02-17'),
('1452','Maryam Iqbal','Female','Karachi','3379907163','1976-11-01','Karachi Address','2024-12-09'),
('1453','Zain Afridi','Female','Lahore','3871737855','1987-03-05','Lahore Address','2024-02-07'),
('1454','Noor Afridi','Male','Peshawar','3873169550','1965-08-25','Peshawar Address','2024-04-19'),
('1455','Zain Ahmed','Female','Swat','3670638589','1995-08-16','Swat Address','2026-04-01'),
('1456','Ayesha Ullah','Female','Abbottabad','3945533181','1966-02-19','Abbottabad Address','2024-04-15'),
('1457','Hira Yousafzai','Male','Peshawar','3925242475','1990-03-13','Peshawar Address','2026-11-28'),
('1458','Noor Ullah','Female','Faisalabad','3650574622','1969-02-16','Faisalabad Address','2026-07-03'),
('1459','Noor Ullah','Male','Peshawar','3421233571','1996-12-27','Peshawar Address','2024-11-24'),
('1460','Noor Khan','Male','Islamabad','3974950538','1972-01-02','Islamabad Address','2025-01-13'),
('1461','Ayesha Ullah','Male','Abbottabad','3282345822','1962-03-15','Abbottabad Address','2024-08-25'),
('1462','Ahmed Ahmed','Male','Lahore','3866578595','1993-03-20','Lahore Address','2026-06-04'),
('1463','Zain Afridi','Male','Islamabad','3914199211','1961-09-21','Islamabad Address','2024-09-18'),
('1464','Maryam Ahmed','Male','Mardan','3490787560','1985-11-01','Mardan Address','2026-12-07'),
('1465','Ali Shah','Female','Karachi','3131161452','2005-11-24','Karachi Address','2024-11-14'),
('1466','Ahmed Ahmed','Female','Islamabad','3094319279','2006-04-28','Islamabad Address','2024-02-12'),
('1467','Hamza Iqbal','Female','Mardan','3158723734','1991-10-19','Mardan Address','2025-04-01'),
('1468','Ahmed Ahmed','Male','Islamabad','3733233426','2004-10-07','Islamabad Address','2026-07-15'),
('1469','Bilal Ullah','Male','Peshawar','3898923984','1963-12-24','Peshawar Address','2024-11-22'),
('1470','Sara Afridi','Male','Lahore','3664345768','1978-08-09','Lahore Address','2026-03-09'),
('1471','Hamza Malik','Male','Swat','3410483016','1966-03-15','Swat Address','2024-11-21'),
('1472','Hira Malik','Female','Karachi','3014130724','1986-09-01','Karachi Address','2025-04-18'),
('1473','Fatima Malik','Male','Karachi','3955434894','1981-02-18','Karachi Address','2024-02-02'),
('1474','Fatima Afridi','Female','Swat','3068994810','1994-02-15','Swat Address','2024-04-17'),
('1475','Ali Ullah','Female','Islamabad','3695563442','1973-04-10','Islamabad Address','2024-12-09'),
('1476','Bilal Ahmed','Male','Faisalabad','3659566880','2003-03-23','Faisalabad Address','2026-05-25'),
('1477','Bilal Ullah','Female','Mardan','3029717456','1965-12-28','Mardan Address','2024-11-09'),
('1478','Maryam Shah','Male','Islamabad','3746160851','1985-05-03','Islamabad Address','2024-12-03'),
('1479','Zain Khan','Male','Swat','3079976002','1969-09-04','Swat Address','2026-08-21'),
('1480','Zain Iqbal','Female','Lahore','3966256233','1966-05-10','Lahore Address','2025-07-23'),
('1481','Noor Shah','Female','Islamabad','3924822021','1989-06-11','Islamabad Address','2024-01-13'),
('1482','Ayesha Ahmed','Male','Swat','3720180142','1981-05-20','Swat Address','2024-04-03'),
('1483','Ahmed Shah','Female','Mardan','3193926001','1962-03-16','Mardan Address','2024-01-13'),
('1484','Hamza Ahmed','Male','Peshawar','3069577488','1978-01-09','Peshawar Address','2024-06-12'),
('1485','Zain Shah','Male','Swat','3846086188','1976-06-12','Swat Address','2024-09-22'),
('1486','Ahmed Ullah','Male','Mardan','3816899949','1984-01-08','Mardan Address','2026-04-08'),
('1487','Bilal Malik','Male','Faisalabad','3282309429','1960-01-04','Faisalabad Address','2026-07-27'),
('1488','Fatima Ullah','Female','Peshawar','3507437905','1988-08-04','Peshawar Address','2024-08-18'),
('1489','Noor Yousafzai','Male','Abbottabad','3126453435','1991-08-06','Abbottabad Address','2024-07-15'),
('1490','Ali Ahmed','Male','Islamabad','3285712023','1983-08-16','Islamabad Address','2024-06-18'),
('1491','Ali Ahmed','Male','Faisalabad','3799102177','1973-10-20','Faisalabad Address','2025-02-02'),
('1492','Bilal Khan','Male','Lahore','3548127757','1980-04-04','Lahore Address','2024-08-09'),
('1493','Hira Yousafzai','Male','Islamabad','3866224402','1988-11-11','Islamabad Address','2024-04-09'),
('1494','Usman Malik','Male','Islamabad','3755349142','1990-08-09','Islamabad Address','2024-09-01'),
('1495','Usman Khan','Female','Peshawar','3576736040','2001-04-25','Peshawar Address','2025-11-20'),
('1496','Sara Malik','Male','Abbottabad','3862896711','1980-12-02','Abbottabad Address','2025-11-21'),
('1497','Sara Ullah','Male','Faisalabad','3968072966','2006-02-15','Faisalabad Address','2024-01-10'),
('1498','Hira Shah','Male','Mardan','3804157048','1980-10-07','Mardan Address','2024-07-01'),
('1499','Usman Shah','Male','Swat','3519916348','1974-02-16','Swat Address','2025-09-28'),
('1500','Noor Yousafzai','Male','Karachi','3206591196','1990-04-10','Karachi Address','2025-05-08');


 
 
 
 
 select * from patients ; 
	
    
    
    
    
    
 create table appointments(
 appointment_id int primary key , 
 appointment_date date  , 
 appointment_time  time ,
appointment_fees  DECIMAL(10,2) ,
appointment_status  varchar(15),
doctors_id    int , 
foreign key (Doctors_ID)  references Doctors(Doctors_ID),
patients_id int , 
foreign key (Patients_ID) references Patients(Patients_ID)
); 


alter table appointments 
add column Reason_For_Visit   varchar(50) ; 




select * from appointments ; 


create table Payments(
 Payment_ID  int primary key , 
Payment_Date  date , 
Payment_Amount  decimal(10,2) ,
Payment_Method  varchar(15),
Payment_Status  varchar(15),
appointment_id int ,
foreign key (appointment_id)  references   appointments(appointment_id)
);



select * from payments ; 

 

CREATE TABLE Treatments (
Treatment_ID  int primary key ,
Treatment_Name  varchar(50),
Treatment_Date  date ,
Treatment_Time  time , 
Treatment_Status  varchar(15),
Treatment_Notes  varchar(100),
Appointment_ID  int , 
foreign key (Appointment_ID)  references  appointments (Appointment_ID)
);



alter table treatments 
add column Disease_Name  varchar(50) ; 



select * from treatments  ; 




select  count(*) as total_patients
from patients ;

select  count(*)   as total_department
from department  ;  

select count(*)  as toatl_appointments
from appointments ;


select  count(*)   as total_treatments
from treatments;  


select count(*)  as  total_payments
from payments ; 


select count(*)   as total_doctors
from doctors ;









SELECT
    Department_Name AS Department_Name,
    COUNT(Doctors_ID) AS Total_Doctors
FROM Doctors
JOIN Department
ON Doctors.Department_ID = Department.Department_ID
GROUP BY Department_Name
ORDER BY Total_Doctors DESC;





SELECT Doctors_Name,
       COUNT(Appointment_ID) AS Total_Appointments
FROM Appointments
JOIN Doctors
ON Appointments.Doctors_ID = Doctors.Doctors_ID
GROUP BY Doctors_Name
ORDER BY Total_Appointments DESC
LIMIT 5;
     



select  department_name  , sum(appointment_fees) as total_revenue 
from appointments
join   doctors
on   doctors.department_id = department.department.id  
group by  department_name  
order by  total_revenue desc  ;  





select  department_name  , sum(appointment_fees) as total_revenue
FROM Appointments
JOIN Doctors
ON Appointments.Doctors_ID = Doctors.Doctors_ID

JOIN Department
ON  department.department_id=  doctors.department_id 
group by department_name  
order by  total_revenue  desc  ; 




select  patients_name  , count(appointment_id)  as total_visits 
from appointments 
join   patients 
on  patients.patients_id  =  appointments.patients_id  
group by  patients_name  
order by  total_visits   DESC  
limit 10;  



select  disease_name , count(Appointments.appointment_id)  as total_visits 
from appointments
join   treatments  
on  treatments.appointment_id  =    appointments.appointment_id  
group by disease_name   
order by    total_visits desc  
limit 5 ;  



select  doctors_name , sum(appointment_fees)   as total_revenue
from  appointments
join    doctors 
on     doctors.doctors_id  =    appointments.doctors_id 
group by   doctors_name 
order by  total_revenue   desc 
limit    5 ; 

   
   
   select  payment_method , sum(payment_amount) as total_revenue 
   from payments 
   group by  payment_method 
   order by  total_revenue desc  ; 




select   department_name  , count(appointment_id)  AS toatl_appointments 
from appointments
join    doctors 
on doctors.doctors_id  =   appointments.doctors_id  

 
join  department  
on department.department_id  = doctors.department_id   
group by    department_name  
order by    toatl_appointments  desc 
 ; 



select  doctors_name , min(appointment_id)   as   minimum_appointments
from  appointments
join    doctors 
on     doctors.doctors_id  =    appointments.doctors_id 
group by   doctors_name 
order by  minimum_appointments   desc 
limit    5 ;



select  doctors_name , COUNT(Appointment_ID) AS Total_Appointments
from appointments
join doctors 
on   doctors.doctors_id  = appointments.doctors_id 
group by doctors_name  
order by   Total_Appointments  asc 
limit  5 ; 



select department_name   , avg(  appointment_fees)  as average_fees
 from appointments 
 join  doctors 
 on   doctors.doctors_id   =  appointments.doctors_id 
 
 join department  
 on  doctors.department_id =    department.department_id  
 group by   department_name 
 order by      average_fees  desc  
   ;
  



select  city   , count(appointment_id)   as   total_patients 
from appointments 
join   patients 
on appointments.patients_id  =   patients.patients_id 
group by city 
order by     total_patients    desc 
limit 5 ;  



select  patients_name  , sum(payment_amount)  as total_amount 
from payments 
join  appointments
on Appointments.Appointment_ID = Payments.Appointment_ID

join patients 
on   patients.patients_id  =  appointments.patients_id 
group by  patients_name 
order by   total_amount   desc  
limit  10 ; 


select CITY  , count(APPOINTMENT_ID ) AS TOTAL_VISITS  
FROM APPOINTMENTS 
JOIN  PATIENTS 
ON APPOINTMENTS.PATIENTS_ID   =     PATIENTS.PATIENTS_ID 
group by    CITY  
order by  TOTAL_VISITS  desc   ;




 

SELECT
    doctors.doctors_id,
    doctors.doctors_name,
    COUNT(appointments.appointment_id) AS total_appointments
FROM appointments
JOIN doctors
ON appointments.doctors_id = doctors.doctors_id
GROUP BY doctors.doctors_id, doctors.doctors_name
ORDER BY total_appointments DESC;



 select  department.department_id,  department_name    , count(appointments.appointment_id)  as total_appointments
 from appointments  
 join   doctors 
 on doctors.doctors_id   =  appointments.doctors_id 
 
 join department 
 on department.department_id    =    doctors.department_id   
 group by   department_id  , department_name   
 order by    total_appointments  desc   ;
 
 
 
 
 
 select  doctors_name  , sum(appointment_fees) as total_revenue 
 from appointments 
 join doctors 
 on doctors.doctors_id   =    appointments.doctors_id  
 group by    doctors_name  
 order by  total_revenue    desc   ;
 
 
 
 select   payment_method   , sum(payment_amount )  as total_revenue 
 from payments 
 group by   payment_method  
 order by  total_revenue  desc ; 
 
 
 select  patients.patients_name ,  patients.patients_id  ,  sum(payment_amount) as total_payments
 from payments 
 join appointments 
 on appointments.appointment_id   = payments.appointment_id 
 
 join   patients  
 on patients.patients_id   =   appointments.patients_id  
 group by    patients.patients_name ,  patients.patients_id
 order by    total_payments  desc 
 limit  5 ; 
 
 
 
 select  doctors.doctors_name  , doctors.doctors_id  , avg(appointment_fees)  as averagefees 
 from appointments 
 join doctors 
 on doctors.doctors_id   =  appointments.doctors_id 
 group by  doctors.doctors_name  , doctors.doctors_id  
 order by    averagefees   desc  ;
 
 
 select   patients.patients_id , patients.patients_name   , count(appointment_id )  as total_visits
 from appointments 
 join  patients 
 on patients.patients_id   =  appointments.patients_id 
 group by      patients.patients_id , patients.patients_name
 having     total_visits  >3 
 order by   total_visits  desc   ; 
 
 
 select  doctors.doctors_id  , doctors.doctors_name  , sum(payment_amount)  as total_amount 
 from   payments 
 join    appointments 
 on appointments.appointment_id   = payments.appointment_id  
 
 join     doctors 
 on doctors.doctors_id   = appointments.doctors_id 
 group by   doctors.doctors_id  , doctors.doctors_name  
 order by    total_amount   desc  ; 




select  department.department_id  , department. department_name ,    sum(appointment_fees  )  as total_revenue 
from appointments
join   doctors 
on doctors.doctors_id   =  appointments.doctors_id  

join  department 
on department.department_id   = doctors.department_id 
group by    department.department_id  , department. department_name   
order by    total_revenue     desc   ; 



select   doctors.doctors_id , doctors_name , count(distinct  appointment_id)   , sum(appointment_fees)     as  total_patients
from appointments 
join  doctors
on doctors.doctors_id   = appointments.doctors_id 
group by   doctors.doctors_id , doctors_name  
having    ( total_patients )>20
order by  total_patients  desc  ; 



SELECT
    doctors.doctors_id,
    doctors.doctors_name,
    COUNT(appointment_id) AS total_appointments,
    SUM(appointment_fees) AS total_revenue
FROM appointments
JOIN doctors
ON doctors.doctors_id = appointments.doctors_id
GROUP BY doctors.doctors_id, doctors.doctors_name
HAVING COUNT(appointment_id) >= 20
ORDER BY total_revenue DESC;





select  doctors.doctors_id , doctors.doctors_name    ,  count(appointments.appointment_id)   as total_appointment  ,
sum(payments.payment_amount)     as total_revenue   
from appointments  
join doctors 
on   doctors.doctors_id =  appointments.doctors_id  
 join payments
 on  payments.appointment_id =  appointments.appointment_id  
 group by     doctors.doctors_id , doctors.doctors_name   
 having (total_appointment )>=20
 order by  total_appointment   desc ; 
 
 
 
 
 select  patients.Patients_ID  , patients.Patients_Name    , count(treatment_id)  as total_treatment  ,   sum(Payment_amount)  as total_payment 
 from    payments 
 join  treatments 
 on payments.appointment_id   = treatments.appointment_id 
 
 
 join   appointments 
 on appointments.appointment_id   = treatments.appointment_id  
 
 join   patients  
 on  appointments.patients_id   =   patients.patients_id  
 group by     Patients_ID  , Patients_Name     
 HAVING COUNT(treatment_id) >= 2
 order by     total_payment  desc     ; 
 
 
 
 
 select  patients.patients_id , patients.patients_name  , patients.gender, patients.city   , count(appointment_id)   as booked_appointments
    from patients
          left   join  appointments 
              on  patients.patients_id  =  appointments.patients_id  
                     where    appointments.appointment_id is null 
                         group by     patients.patients_id , patients.patients_name  , patients.gender, patients.city   
                               order by     booked_appointments   asc  ; 
 
 
 select  doctors.doctors_id , doctors_name , count(appointment_id) as total_appointments   , sum(appointment_fees) as total_revenue  
 from appointments 
 join doctors 
 on doctors.doctors_id   =  appointments.doctors_id 
 group by     doctors.doctors_id , doctors_name   
 order by    total_revenue  desc   ; 
 
 
 select department.department_id , department.department_name   , count(appointment_id)   as busiest_departments 
 from    appointments
 join    doctors
 on appointments.doctors_id  =  doctors.doctors_id 
 
join   department 
on   department.department_id  =  doctors.department_id  

group by    department.department_id , department.department_name  
order by     busiest_departments  desc  ; 



 select department.department_id , department.department_name   , count(appointment_id)   as busiest_departments 
from    department 
 join    doctors
 on   department.department_id  =  doctors.department_id  
 join  appointments
 on     appointments.appointment_id  =  doctors.doctors_id 
 group by    department.department_id , department.department_name  
order by     busiest_departments  desc  ;
 
 
 
 select  doctors.doctors_id , doctors.doctors_name  , count(distinct patients_id)  as total_patients     , sum(appointment_fees)  as total_revenue   
 from appointments 
 join doctors 
 on appointments.doctors_id   = doctors.doctors_id 
 group by     doctors.doctors_id , doctors.doctors_name    
 order by     total_patients   desc   ; 
 
 

 
 
 select   patients.patients_id , patients.patients_name  ,   COUNT(DISTINCT doctors.doctors_id)  as  visited_doctors  
 from   doctors  
 join    appointments
 on      appointments.doctors_id   =     doctors.doctors_id 
 
 join   patients 
 on   patients.patients_id  =   appointments.patients_id 
 group by     patients.patients_id , patients.patients_name   
 having       (visited_doctors)>1 ; 
 
 
 
 
 
 select  doctors.doctors_id , doctors.doctors_name   , count(appointments.appointment_id)  as total_appointments
 from appointments  
 join doctors
 on     appointments.doctors_id  =   doctors.doctors_id  
 group by      doctors.doctors_id , doctors.doctors_name   
 order by      total_appointments   desc ; 
 
 
 
  select department.department_id , department.department_name  , count(appointment_id)  as total_appointments
 from appointments  as app
 join doctors as doc
 on app.doctors_id  =   doc.doctors_id  
 
 join    department 
 on     doc.department_id   =  department.department_id 
 group by       department.department_id , department.department_name    
 order by    total_appointments    desc  ; 
 
 
 
 select   doctors.doctors_id , doctors.doctors_name ,  sum(payment_amount)  as total_revenue 
 from payments 
 join    appointments
 on     payments.appointment_id  = appointments.appointment_id 
 
 join   doctors 
 on    appointments.doctors_id   =     doctors.doctors_id 
 group by     doctors.doctors_id , doctors.doctors_name   
 order by       total_revenue   desc    ; 
   
 
 SELECT d.Doctors_ID, d.Doctors_Name,
    COUNT(a.Appointment_ID) AS Total_Appointments
FROM DOCTORS d
LEFT JOIN appointments a
    ON d.Doctors_ID = a.Doctors_ID
GROUP BY d.Doctors_ID, d.Doctors_Name
ORDER BY Total_Appointments  asc;
 
 
 
 select  p.patients_id , p.patients_name  , sum( payment_amount  ) as total_payments
 from payments  as pa
 join   appointments  as a 
 on     a.appointment_id  = pa.appointment_id  
 
 join      patients as p 
 on   a.patients_id  = p.patients_id 
 group by     patients_id , patients_name    
 order by      total_payments  desc   ;
 
 
 
 select  t.treatment_id , t.treatment_name ,  count(a.appointment_id) as most_treatments 
 from treatments   as t
 join  appointments as a 
 on t.appointment_id  = a.appointment_id  
 group by    t.treatment_id , t.treatment_name   
 order by    most_treatments   desc ; 
 
 
 

    
    
    
    select  year(payment_date)    AS  year , 
   month(payment_date)    as month  ,
   monthname(payment_date)   as monthname   , 
   sum(payment_amount)      as total_revenue 
   from payments
   group by    
     year(payment_date) ,  
   month(payment_date)  , 
   monthname(payment_date)
 order by       year ,   month  ; 
    
    
    
    
    select   d.doctors_id , d.doctors_name , sum(Payment_amount)  as total_revenue  
    from payments  as p
    join appointments  as a 
    on p.appointment_id  = a.appointment_id 
    
    join doctors  as d 
    on a.doctors_id  = d.doctors_id  
    group by    d.doctors_id , d.doctors_name  
    order by      total_revenue   desc  
    limit  5  ; 
    
  
  
  select    department.department_id , department.department_name   , sum(payment_amount)   as highest_revenue 
  from payments  as p
  join   appointments as a  
  on p.appointment_id  = a.appointment_id   
  join  doctors as d 
  on a.doctors_id    =  d.doctors_id   
  
  join   department 
  on department.department_id  =  d.department_id 
  group by      department.department_id , department.department_name   
  order by      highest_revenue  desc 
  limit   1   ;
  
  
  


select doctors.doctors_id , doctors.doctors_name     , avg(appointment_fees)   as appointment_fees
from  appointments 
join  doctors
on appointments.doctors_id  =  doctors.doctors_id 
group by   doctors.doctors_id , doctors.doctors_name  
having     appointment_fees    > ( select avg(appointment_fees)
  from appointments )  ; 
  
   
   
   SELECT
    d.doctors_id,
    d.doctors_name,
    COUNT(a.appointment_id) AS total_appointments
FROM appointments AS a
JOIN doctors AS d
    ON a.doctors_id = d.doctors_id
GROUP BY
    d.doctors_id,
    d.doctors_name
HAVING COUNT(a.appointment_id) >
(
    SELECT AVG(total_count)
    FROM
    (
        SELECT COUNT(appointment_id) AS total_count
        FROM appointments
        GROUP BY doctors_id
    ) AS doctor_counts
)
ORDER BY total_appointments DESC;

 
 
 select   p.patients_id  , p.patients_name   ,  count(appointment_id)  as total_visits
 from   appointments as a 
 join  patients  as   p 
 on    a.patients_id   =  p.patients_id 
 group by    p.patients_id  , p.patients_name  
 order by     total_visits   desc   
 limit  3  ;
 
 
 
 
 
 select     year(registration_date)  as year 
 ,month(registration_date )   as month   
 , monthname(registration_date)    as monthname  
 , count(patients_id)  as total_registrations 
 from patients  
 group by     year ,month , monthname  
 order by          year ,month     asc  ;
 
 
 
 select    p.payment_method ,    sum(payment_amount) as total_revenue  
 from payments   as p 
 group by       p.payment_method    
 order by        total_revenue    desc ; 
 
 

select  d.department_id , d.department_name   , avg(p.payment_amount)  as average_amount 
from payments  as p 
join   appointments  as a 
on  a.appointment_id  = p.appointment_id  

join    doctors  as do 
on do.doctors_id   = a.doctors_id 

join department as d  
 on  d.department_id  = do.department_id  
  group by    d.department_id , d.department_name  
  order by   d.department_id , d.department_name  asc ; 




select d.doctors_id  , d.doctors_name ,    avg(payment_amount) as average_amount
from   payments  as  p 
join    appointments as a 
on  a.appointment_id  =  p.appointment_id    

join  doctors  as d 
on d.doctors_id   = a.doctors_id   
group by       d.doctors_id  , d.doctors_name  
order by        average_amount   desc  
limit  1  ; 











   
 
 
 
 
 
 
 
 
 
 
 
 
 
   
   
   
   
   
   
   
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 








