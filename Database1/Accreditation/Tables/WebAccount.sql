CREATE TABLE [Accreditation].[WebAccount](
	[WebAccountID] [uniqueidentifier] NOT NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PINSignature] [nchar](5) NOT NULL,
	[FirstName] [nvarchar](75) NOT NULL,
	[LastName] [nvarchar](75) NOT NULL,
	[MiddleName] [nvarchar](75) NULL,
	[Address] [nvarchar](150) NULL,
	[City] [nvarchar](75) NULL,
	[State] [nvarchar](30) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[PhoneNo] [nvarchar](30) NULL,
	[RegistrationNo] [int] NOT NULL,
	[DateOfOrigAccredition] [date] NOT NULL,
 CONSTRAINT [PK_tWebAccount] PRIMARY KEY CLUSTERED 
(
	[WebAccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_tWebAccount_WebAccountID]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebAccount] ADD  CONSTRAINT [DF_tWebAccount_WebAccountID]  DEFAULT (newid()) FOR [WebAccountID]