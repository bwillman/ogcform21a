CREATE TABLE [Accreditation].[WebForm21aServiceDate](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21aID] [uniqueidentifier] NOT NULL,
	[ActiveServiceDate] [date] NOT NULL,
 CONSTRAINT [PK_tForm21aServiceDates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tForm21aServiceDate_tForm21a]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21aServiceDate]  WITH CHECK ADD  CONSTRAINT [FK_tForm21aServiceDate_tForm21a] FOREIGN KEY([Form21aID])
REFERENCES [Accreditation].[WebForm21a] ([Form21aID])
GO

ALTER TABLE [Accreditation].[WebForm21aServiceDate] CHECK CONSTRAINT [FK_tForm21aServiceDate_tForm21a]