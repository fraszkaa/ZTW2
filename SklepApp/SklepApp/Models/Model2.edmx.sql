
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2016 03:07:03
-- Generated from EDMX file: C:\Users\frasz\Source\Repos\ZTW2\SklepApp\SklepApp\Models\Model2.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Sklep];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FKKlient242107]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Klient] DROP CONSTRAINT [FK_FKKlient242107];
GO
IF OBJECT_ID(N'[dbo].[FK_FKPracownik494420]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pracownik] DROP CONSTRAINT [FK_FKPracownik494420];
GO
IF OBJECT_ID(N'[dbo].[FK_FKProdukt950014]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Produkt] DROP CONSTRAINT [FK_FKProdukt950014];
GO
IF OBJECT_ID(N'[dbo].[FK_FKKlient982288]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Klient] DROP CONSTRAINT [FK_FKKlient982288];
GO
IF OBJECT_ID(N'[dbo].[FK_FKPracownik234602]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pracownik] DROP CONSTRAINT [FK_FKPracownik234602];
GO
IF OBJECT_ID(N'[dbo].[FK_FKProdukt498528]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Produkt] DROP CONSTRAINT [FK_FKProdukt498528];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Administrator]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Administrator];
GO
IF OBJECT_ID(N'[dbo].[Adres]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Adres];
GO
IF OBJECT_ID(N'[dbo].[Kategoria]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kategoria];
GO
IF OBJECT_ID(N'[dbo].[Klient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Klient];
GO
IF OBJECT_ID(N'[dbo].[Pracownik]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pracownik];
GO
IF OBJECT_ID(N'[dbo].[Produkt]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Produkt];
GO
IF OBJECT_ID(N'[dbo].[Zdjecie]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Zdjecie];
GO
IF OBJECT_ID(N'[dbo].[Znizka]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Znizka];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Administrator'
CREATE TABLE [dbo].[Administrator] (
    [idAdministrator] int IDENTITY(1,1) NOT NULL,
    [login] char(20)  NULL,
    [haslo] char(20)  NULL,
    [imie] varchar(255)  NULL,
    [nazwisko] varchar(255)  NULL
);
GO

-- Creating table 'Adres'
CREATE TABLE [dbo].[Adres] (
    [idAdres] int IDENTITY(1,1) NOT NULL,
    [miasto] varchar(40)  NULL,
    [kodPocztowy] char(6)  NULL,
    [ulica] varchar(40)  NULL,
    [nrDomu] int  NULL,
    [nrLokalu] int  NULL,
    [KlientidKlient] int  NULL,
    [PracownikidPracownik] int  NULL
);
GO

-- Creating table 'Kategoria'
CREATE TABLE [dbo].[Kategoria] (
    [idKategoria] int IDENTITY(1,1) NOT NULL,
    [nazwaKategorii] varchar(255)  NULL
);
GO

-- Creating table 'Klient'
CREATE TABLE [dbo].[Klient] (
    [idKlient] int IDENTITY(1,1) NOT NULL,
    [login] char(20)  NULL,
    [haslo] char(20)  NULL,
    [imie] varchar(30)  NULL,
    [nazwisko] varchar(30)  NULL,
    [email] char(255)  NULL,
    [nrTelefony] char(9)  NULL,
    [ZnizkaidZnizka] int  NULL,
    [AdresidAdres] int  NULL
);
GO

-- Creating table 'Pracownik'
CREATE TABLE [dbo].[Pracownik] (
    [idPracownik] int IDENTITY(1,1) NOT NULL,
    [login] char(20)  NULL,
    [haslo] char(20)  NULL,
    [imie] varchar(30)  NULL,
    [nazwisko] varchar(30)  NULL,
    [email] char(255)  NULL,
    [nrTelefony] char(9)  NULL,
    [stanowisko] varchar(255)  NULL,
    [dataZatrudnienia] datetime  NULL,
    [ZnizkaidZnizka] int  NULL,
    [AdresidAdres] int  NULL
);
GO

-- Creating table 'Produkt'
CREATE TABLE [dbo].[Produkt] (
    [idProdukt] int IDENTITY(1,1) NOT NULL,
    [nazwa] varchar(255)  NULL,
    [kolor] varchar(255)  NULL,
    [rozmiar] char(10)  NULL,
    [ilosc] int  NULL,
    [cena] int  NULL,
    [ZdjecieidZdjecie] int  NULL,
    [KategoriaidKategoria] int  NULL
);
GO

-- Creating table 'Zdjecie'
CREATE TABLE [dbo].[Zdjecie] (
    [idZdjecie] int IDENTITY(1,1) NOT NULL,
    [sciezkaJPG] char(255)  NULL
);
GO

-- Creating table 'Znizka'
CREATE TABLE [dbo].[Znizka] (
    [idZnizka] int IDENTITY(1,1) NOT NULL,
    [znizka1] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [idAdministrator] in table 'Administrator'
ALTER TABLE [dbo].[Administrator]
ADD CONSTRAINT [PK_Administrator]
    PRIMARY KEY CLUSTERED ([idAdministrator] ASC);
GO

-- Creating primary key on [idAdres] in table 'Adres'
ALTER TABLE [dbo].[Adres]
ADD CONSTRAINT [PK_Adres]
    PRIMARY KEY CLUSTERED ([idAdres] ASC);
GO

-- Creating primary key on [idKategoria] in table 'Kategoria'
ALTER TABLE [dbo].[Kategoria]
ADD CONSTRAINT [PK_Kategoria]
    PRIMARY KEY CLUSTERED ([idKategoria] ASC);
GO

-- Creating primary key on [idKlient] in table 'Klient'
ALTER TABLE [dbo].[Klient]
ADD CONSTRAINT [PK_Klient]
    PRIMARY KEY CLUSTERED ([idKlient] ASC);
GO

-- Creating primary key on [idPracownik] in table 'Pracownik'
ALTER TABLE [dbo].[Pracownik]
ADD CONSTRAINT [PK_Pracownik]
    PRIMARY KEY CLUSTERED ([idPracownik] ASC);
GO

-- Creating primary key on [idProdukt] in table 'Produkt'
ALTER TABLE [dbo].[Produkt]
ADD CONSTRAINT [PK_Produkt]
    PRIMARY KEY CLUSTERED ([idProdukt] ASC);
GO

-- Creating primary key on [idZdjecie] in table 'Zdjecie'
ALTER TABLE [dbo].[Zdjecie]
ADD CONSTRAINT [PK_Zdjecie]
    PRIMARY KEY CLUSTERED ([idZdjecie] ASC);
GO

-- Creating primary key on [idZnizka] in table 'Znizka'
ALTER TABLE [dbo].[Znizka]
ADD CONSTRAINT [PK_Znizka]
    PRIMARY KEY CLUSTERED ([idZnizka] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AdresidAdres] in table 'Klient'
ALTER TABLE [dbo].[Klient]
ADD CONSTRAINT [FK_FKKlient242107]
    FOREIGN KEY ([AdresidAdres])
    REFERENCES [dbo].[Adres]
        ([idAdres])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FKKlient242107'
CREATE INDEX [IX_FK_FKKlient242107]
ON [dbo].[Klient]
    ([AdresidAdres]);
GO

-- Creating foreign key on [AdresidAdres] in table 'Pracownik'
ALTER TABLE [dbo].[Pracownik]
ADD CONSTRAINT [FK_FKPracownik494420]
    FOREIGN KEY ([AdresidAdres])
    REFERENCES [dbo].[Adres]
        ([idAdres])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FKPracownik494420'
CREATE INDEX [IX_FK_FKPracownik494420]
ON [dbo].[Pracownik]
    ([AdresidAdres]);
GO

-- Creating foreign key on [KategoriaidKategoria] in table 'Produkt'
ALTER TABLE [dbo].[Produkt]
ADD CONSTRAINT [FK_FKProdukt950014]
    FOREIGN KEY ([KategoriaidKategoria])
    REFERENCES [dbo].[Kategoria]
        ([idKategoria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FKProdukt950014'
CREATE INDEX [IX_FK_FKProdukt950014]
ON [dbo].[Produkt]
    ([KategoriaidKategoria]);
GO

-- Creating foreign key on [ZnizkaidZnizka] in table 'Klient'
ALTER TABLE [dbo].[Klient]
ADD CONSTRAINT [FK_FKKlient982288]
    FOREIGN KEY ([ZnizkaidZnizka])
    REFERENCES [dbo].[Znizka]
        ([idZnizka])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FKKlient982288'
CREATE INDEX [IX_FK_FKKlient982288]
ON [dbo].[Klient]
    ([ZnizkaidZnizka]);
GO

-- Creating foreign key on [ZnizkaidZnizka] in table 'Pracownik'
ALTER TABLE [dbo].[Pracownik]
ADD CONSTRAINT [FK_FKPracownik234602]
    FOREIGN KEY ([ZnizkaidZnizka])
    REFERENCES [dbo].[Znizka]
        ([idZnizka])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FKPracownik234602'
CREATE INDEX [IX_FK_FKPracownik234602]
ON [dbo].[Pracownik]
    ([ZnizkaidZnizka]);
GO

-- Creating foreign key on [ZdjecieidZdjecie] in table 'Produkt'
ALTER TABLE [dbo].[Produkt]
ADD CONSTRAINT [FK_FKProdukt498528]
    FOREIGN KEY ([ZdjecieidZdjecie])
    REFERENCES [dbo].[Zdjecie]
        ([idZdjecie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FKProdukt498528'
CREATE INDEX [IX_FK_FKProdukt498528]
ON [dbo].[Produkt]
    ([ZdjecieidZdjecie]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------