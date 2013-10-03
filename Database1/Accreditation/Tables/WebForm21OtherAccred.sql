CREATE TABLE [Accreditation].[WebForm21OtherAccred](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21ID] [uniqueidentifier] NULL,
	[OrganizationName] [nvarchar](150) NULL,
 CONSTRAINT [PK_tForm21Accreditations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tForm21Accreditations_tForm21]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21OtherAccred]  WITH CHECK ADD  CONSTRAINT [FK_tForm21Accreditations_tForm21] FOREIGN KEY([Form21ID])
REFERENCES [Accreditation].[WebForm21] ([Form21ID])
GO

ALTER TABLE [Accreditation].[WebForm21OtherAccred] CHECK CONSTRAINT [FK_tForm21Accreditations_tForm21]