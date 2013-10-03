CREATE TABLE [Accreditation].[WebForm21aEmployer](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21aID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Address] [nvarchar](200) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[PositionTitle] [nvarchar](100) NULL,
	[DateRangeEmpBegin] [date] NULL,
	[DateRangeEmpEnd] [date] NULL,
	[Supervisor] [nvarchar](150) NULL,
 CONSTRAINT [PK_WebForm21aEmployer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_WebForm21aEmployer_WebForm21a]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21aEmployer]  WITH CHECK ADD  CONSTRAINT [FK_WebForm21aEmployer_WebForm21a] FOREIGN KEY([Form21aID])
REFERENCES [Accreditation].[WebForm21a] ([Form21aID])
GO

ALTER TABLE [Accreditation].[WebForm21aEmployer] CHECK CONSTRAINT [FK_WebForm21aEmployer_WebForm21a]