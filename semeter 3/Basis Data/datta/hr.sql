create table Plg (
    Id_Plg varchar(7) PRIMARY KEY,
    Nm_Plg varchar(50),
    AlmtPlg_Jl varchar(50),
    AlmtPlg_Kt varchar(20)
);

create table Bank (
    Id_Bank varchar(8) PRIMARY KEY,
    Nm_Bank varchar(50),
    AlamatBnk_Jl varchar(50),
    AlamatBnk_Kt varchar(20)
);

create table JnsTrans (
    Kd_Trans char(1) PRIMARY KEY,
    Deskripsi varchar(10),
    Rp_Biaya int
);

create table Rek (
    Id_Rek varchar(7) PRIMARY KEY,
    Tgl_Buka date,
    Saldo int,
    Id_Plg varchar(7),
    Id_Bank varchar(8),
    Constraint fk_Id_Plg
        FOREIGN KEY (Id_Plg)
        REFERENCES Plg (Id_Plg),
    Constraint fk_Id_Bank
        FOREIGN KEY (Id_Bank)
        REFERENCES Bank (Id_Bank)
);

create table Trans (
    Id_Rek varchar(7),
    Tgl_Trans date,
    Kd_Trans char(1),
    Rp int,
    Constraint fk_Id_Rek
        FOREIGN KEY (Id_Rek)
        REFERENCES Rek (Id_Rek),
    Constraint fk_Kd_Trans
        FOREIGN KEY (Kd_Trans)
        REFERENCES JnsTrans (Kd_Trans)
);