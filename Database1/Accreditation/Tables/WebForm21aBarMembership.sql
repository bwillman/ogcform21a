CREATE TABLE [Accreditation].[WebForm21aBarMembership](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21aID] [uniqueidentifier] NOT NULL,
	[Jurisdiction] [nvarchar](100) NULL,
	[AdmissionDate] [date] NULL,
	[MembershipNo] [nvarchar](60) NULL,
 CONSTRAINT [PK_WebForm21aBarMembership] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_WebForm21aBarMembership_WebForm21a]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21aBarMembership]  WITH CHECK ADD  CONSTRAINT [FK_WebForm21aBarMembership_WebForm21a] FOREIGN KEY([Form21aID])
REFERENCES [Accreditation].[WebForm21a] ([Form21aID])
GO

ALTER TABLE [Accreditation].[WebForm21aBarMembership] CHECK CONSTRAINT [FK_WebForm21aBarMembership_WebForm21a]