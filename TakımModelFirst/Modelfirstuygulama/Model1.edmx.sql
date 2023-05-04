
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/04/2023 23:05:42
-- Generated from EDMX file: C:\Users\LENOVO\Desktop\Modelfirstuygulama\Modelfirstuygulama\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Takim];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'OyuncuSet'
CREATE TABLE [dbo].[OyuncuSet] (
    [OyuncuNo] int IDENTITY(1,1) NOT NULL,
    [Adi] nvarchar(max)  NOT NULL,
    [Soyadi] nvarchar(max)  NOT NULL,
    [Yas] int  NOT NULL,
    [Mevki] nvarchar(max)  NOT NULL,
    [Maas] int  NOT NULL,
    [Ulke] nvarchar(max)  NOT NULL,
    [MevkiNo] int  NOT NULL,
    [TakimNo] int  NOT NULL
);
GO

-- Creating table 'TakimSet'
CREATE TABLE [dbo].[TakimSet] (
    [TakimNo] int IDENTITY(1,1) NOT NULL,
    [TakimAdi] nvarchar(max)  NOT NULL,
    [UlkeNo] int  NOT NULL
);
GO

-- Creating table 'UlkeSet'
CREATE TABLE [dbo].[UlkeSet] (
    [UlkeNo] int IDENTITY(1,1) NOT NULL,
    [UlkeAdi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MevkiSet'
CREATE TABLE [dbo].[MevkiSet] (
    [MevkiNo] int IDENTITY(1,1) NOT NULL,
    [MevkiAdi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KullaniciSet'
CREATE TABLE [dbo].[KullaniciSet] (
    [KullaniciNo] int IDENTITY(1,1) NOT NULL,
    [KullaniciAdi] nvarchar(max)  NOT NULL,
    [Sifre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [OyuncuNo] in table 'OyuncuSet'
ALTER TABLE [dbo].[OyuncuSet]
ADD CONSTRAINT [PK_OyuncuSet]
    PRIMARY KEY CLUSTERED ([OyuncuNo] ASC);
GO

-- Creating primary key on [TakimNo] in table 'TakimSet'
ALTER TABLE [dbo].[TakimSet]
ADD CONSTRAINT [PK_TakimSet]
    PRIMARY KEY CLUSTERED ([TakimNo] ASC);
GO

-- Creating primary key on [UlkeNo] in table 'UlkeSet'
ALTER TABLE [dbo].[UlkeSet]
ADD CONSTRAINT [PK_UlkeSet]
    PRIMARY KEY CLUSTERED ([UlkeNo] ASC);
GO

-- Creating primary key on [MevkiNo] in table 'MevkiSet'
ALTER TABLE [dbo].[MevkiSet]
ADD CONSTRAINT [PK_MevkiSet]
    PRIMARY KEY CLUSTERED ([MevkiNo] ASC);
GO

-- Creating primary key on [KullaniciNo] in table 'KullaniciSet'
ALTER TABLE [dbo].[KullaniciSet]
ADD CONSTRAINT [PK_KullaniciSet]
    PRIMARY KEY CLUSTERED ([KullaniciNo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [MevkiNo] in table 'OyuncuSet'
ALTER TABLE [dbo].[OyuncuSet]
ADD CONSTRAINT [FK_MevkiOyuncu]
    FOREIGN KEY ([MevkiNo])
    REFERENCES [dbo].[MevkiSet]
        ([MevkiNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MevkiOyuncu'
CREATE INDEX [IX_FK_MevkiOyuncu]
ON [dbo].[OyuncuSet]
    ([MevkiNo]);
GO

-- Creating foreign key on [TakimNo] in table 'OyuncuSet'
ALTER TABLE [dbo].[OyuncuSet]
ADD CONSTRAINT [FK_TakimOyuncu]
    FOREIGN KEY ([TakimNo])
    REFERENCES [dbo].[TakimSet]
        ([TakimNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TakimOyuncu'
CREATE INDEX [IX_FK_TakimOyuncu]
ON [dbo].[OyuncuSet]
    ([TakimNo]);
GO

-- Creating foreign key on [UlkeNo] in table 'TakimSet'
ALTER TABLE [dbo].[TakimSet]
ADD CONSTRAINT [FK_UlkeTakim]
    FOREIGN KEY ([UlkeNo])
    REFERENCES [dbo].[UlkeSet]
        ([UlkeNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UlkeTakim'
CREATE INDEX [IX_FK_UlkeTakim]
ON [dbo].[TakimSet]
    ([UlkeNo]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------