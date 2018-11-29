USE [master] 
GO 
 
CREATE DATABASE [NtierMvcDB] 
GO 
 
USE [NtierMvcDB] 
GO 
 
CREATE SCHEMA [HR] 
GO 
 
CREATE TABLE [HR].[Employees] 
( 
    [Id] [int] NOT NULL, 
    [Name] [nvarchar](50) NOT NULL, 
    [Age] [int] NOT NULL, 
    [HiringDate] [datetime] NULL, 
    [GrossSalary] [decimal](10, 2) NOT NULL, 
    [ModifiedDate] [datetime] NOT NULL, 
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([Id] ASC) ON [PRIMARY] 
) ON [PRIMARY] 
GO 
 
ALTER TABLE [HR].[Employees] ADD  CONSTRAINT [DF_Employees_ModifiedDate]  DEFAULT (GETDATE()) FOR [ModifiedDate] 
GO