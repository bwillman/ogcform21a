﻿CREATE TABLE [Accreditation].[WebForm21aDischargeType](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21aID] [uniqueidentifier] NOT NULL,
	[DischargeType] [nvarchar](100) NULL,
 CONSTRAINT [PK_tForm21aDischarge] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tForm21aDischarge_tForm21a]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21aDischargeType]  WITH CHECK ADD  CONSTRAINT [FK_tForm21aDischarge_tForm21a] FOREIGN KEY([Form21aID])
REFERENCES [Accreditation].[WebForm21a] ([Form21aID])
GO

ALTER TABLE [Accreditation].[WebForm21aDischargeType] CHECK CONSTRAINT [FK_tForm21aDischarge_tForm21a]