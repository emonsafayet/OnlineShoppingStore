
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/22/2019 00:45:04
-- Generated from EDMX file: E:\MVC Project\OnlineShoppingStore\OnlineShoppingStore\OnlineShoppingStore\DAL\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbMyOnlineShopping];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Tbl_Cart__Produc__4BAC3F29]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tbl_Cart] DROP CONSTRAINT [FK__Tbl_Cart__Produc__4BAC3F29];
GO
IF OBJECT_ID(N'[dbo].[FK__Tbl_Produ__Categ__4CA06362]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tbl_Product] DROP CONSTRAINT [FK__Tbl_Produ__Categ__4CA06362];
GO
IF OBJECT_ID(N'[dbo].[FK__Tbl_Shipp__Membe__4D94879B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tbl_ShippingDetails] DROP CONSTRAINT [FK__Tbl_Shipp__Membe__4D94879B];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Tbl_Cart]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Cart];
GO
IF OBJECT_ID(N'[dbo].[Tbl_CartStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_CartStatus];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Category];
GO
IF OBJECT_ID(N'[dbo].[Tbl_MemberRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_MemberRole];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Members]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Members];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Product];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Roles];
GO
IF OBJECT_ID(N'[dbo].[Tbl_ShippingDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_ShippingDetails];
GO
IF OBJECT_ID(N'[dbo].[Tbl_SlideImage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_SlideImage];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Tbl_Cart'
CREATE TABLE [dbo].[Tbl_Cart] (
    [CartId] int IDENTITY(1,1) NOT NULL,
    [ProductId] int  NULL,
    [MemberId] int  NULL,
    [CartStatusId] int  NULL
);
GO

-- Creating table 'Tbl_CartStatus'
CREATE TABLE [dbo].[Tbl_CartStatus] (
    [CartStatusId] int IDENTITY(1,1) NOT NULL,
    [CartStatus] varchar(500)  NULL
);
GO

-- Creating table 'Tbl_Category'
CREATE TABLE [dbo].[Tbl_Category] (
    [CategoryId] int IDENTITY(1,1) NOT NULL,
    [CategoryName] varchar(500)  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL
);
GO

-- Creating table 'Tbl_MemberRole'
CREATE TABLE [dbo].[Tbl_MemberRole] (
    [MemberRoleID] int IDENTITY(1,1) NOT NULL,
    [memberId] int  NULL,
    [RoleId] int  NULL
);
GO

-- Creating table 'Tbl_Members'
CREATE TABLE [dbo].[Tbl_Members] (
    [MemberId] int IDENTITY(1,1) NOT NULL,
    [FristName] varchar(200)  NULL,
    [LastName] varchar(200)  NULL,
    [EmailId] varchar(200)  NULL,
    [Password] varchar(500)  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL,
    [CreatedOn] datetime  NULL,
    [ModifiedOn] datetime  NULL
);
GO

-- Creating table 'Tbl_Product'
CREATE TABLE [dbo].[Tbl_Product] (
    [ProductId] int IDENTITY(1,1) NOT NULL,
    [ProductName] varchar(500)  NULL,
    [CategoryId] int  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL,
    [CreatedDate] datetime  NULL,
    [ModifiedDate] datetime  NULL,
    [Description] varchar  NULL,
    [ProductImage] varchar(max)  NULL,
    [IsFeatured] bit  NULL,
    [Quantity] int  NULL,
    [Price] decimal(18,0)  NULL
);
GO

-- Creating table 'Tbl_Roles'
CREATE TABLE [dbo].[Tbl_Roles] (
    [RoleId] int IDENTITY(1,1) NOT NULL,
    [RoleName] varchar(200)  NULL
);
GO

-- Creating table 'Tbl_ShippingDetails'
CREATE TABLE [dbo].[Tbl_ShippingDetails] (
    [ShippingDetailId] int IDENTITY(1,1) NOT NULL,
    [MemberId] int  NULL,
    [Adress] varchar(500)  NULL,
    [City] varchar(500)  NULL,
    [State] varchar(500)  NULL,
    [Country] varchar(50)  NULL,
    [ZipCode] varchar(50)  NULL,
    [OrderId] int  NULL,
    [AmountPaid] decimal(18,0)  NULL,
    [PaymentType] varchar(50)  NULL
);
GO

-- Creating table 'Tbl_SlideImage'
CREATE TABLE [dbo].[Tbl_SlideImage] (
    [SlideId] int IDENTITY(1,1) NOT NULL,
    [SlideTitle] varchar(500)  NULL,
    [SlideImage] varchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CartId] in table 'Tbl_Cart'
ALTER TABLE [dbo].[Tbl_Cart]
ADD CONSTRAINT [PK_Tbl_Cart]
    PRIMARY KEY CLUSTERED ([CartId] ASC);
GO

-- Creating primary key on [CartStatusId] in table 'Tbl_CartStatus'
ALTER TABLE [dbo].[Tbl_CartStatus]
ADD CONSTRAINT [PK_Tbl_CartStatus]
    PRIMARY KEY CLUSTERED ([CartStatusId] ASC);
GO

-- Creating primary key on [CategoryId] in table 'Tbl_Category'
ALTER TABLE [dbo].[Tbl_Category]
ADD CONSTRAINT [PK_Tbl_Category]
    PRIMARY KEY CLUSTERED ([CategoryId] ASC);
GO

-- Creating primary key on [MemberRoleID] in table 'Tbl_MemberRole'
ALTER TABLE [dbo].[Tbl_MemberRole]
ADD CONSTRAINT [PK_Tbl_MemberRole]
    PRIMARY KEY CLUSTERED ([MemberRoleID] ASC);
GO

-- Creating primary key on [MemberId] in table 'Tbl_Members'
ALTER TABLE [dbo].[Tbl_Members]
ADD CONSTRAINT [PK_Tbl_Members]
    PRIMARY KEY CLUSTERED ([MemberId] ASC);
GO

-- Creating primary key on [ProductId] in table 'Tbl_Product'
ALTER TABLE [dbo].[Tbl_Product]
ADD CONSTRAINT [PK_Tbl_Product]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [RoleId] in table 'Tbl_Roles'
ALTER TABLE [dbo].[Tbl_Roles]
ADD CONSTRAINT [PK_Tbl_Roles]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [ShippingDetailId] in table 'Tbl_ShippingDetails'
ALTER TABLE [dbo].[Tbl_ShippingDetails]
ADD CONSTRAINT [PK_Tbl_ShippingDetails]
    PRIMARY KEY CLUSTERED ([ShippingDetailId] ASC);
GO

-- Creating primary key on [SlideId] in table 'Tbl_SlideImage'
ALTER TABLE [dbo].[Tbl_SlideImage]
ADD CONSTRAINT [PK_Tbl_SlideImage]
    PRIMARY KEY CLUSTERED ([SlideId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProductId] in table 'Tbl_Cart'
ALTER TABLE [dbo].[Tbl_Cart]
ADD CONSTRAINT [FK__Tbl_Cart__Produc__4BAC3F29]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Tbl_Product]
        ([ProductId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Tbl_Cart__Produc__4BAC3F29'
CREATE INDEX [IX_FK__Tbl_Cart__Produc__4BAC3F29]
ON [dbo].[Tbl_Cart]
    ([ProductId]);
GO

-- Creating foreign key on [CategoryId] in table 'Tbl_Product'
ALTER TABLE [dbo].[Tbl_Product]
ADD CONSTRAINT [FK__Tbl_Produ__Categ__4CA06362]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Tbl_Category]
        ([CategoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Tbl_Produ__Categ__4CA06362'
CREATE INDEX [IX_FK__Tbl_Produ__Categ__4CA06362]
ON [dbo].[Tbl_Product]
    ([CategoryId]);
GO

-- Creating foreign key on [MemberId] in table 'Tbl_ShippingDetails'
ALTER TABLE [dbo].[Tbl_ShippingDetails]
ADD CONSTRAINT [FK__Tbl_Shipp__Membe__4D94879B]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[Tbl_Members]
        ([MemberId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Tbl_Shipp__Membe__4D94879B'
CREATE INDEX [IX_FK__Tbl_Shipp__Membe__4D94879B]
ON [dbo].[Tbl_ShippingDetails]
    ([MemberId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------