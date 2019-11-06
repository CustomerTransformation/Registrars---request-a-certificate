USE [ProdPayments]
GO

/****** Object:  StoredProcedure [dbo].[CardPaymentRegistrars]    Script Date: 06/11/2019 09:59:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 12/06/2018
-- Description:	Loads Values for the Payment integration for Registrars
-- =============================================
CREATE PROCEDURE [dbo].[CardPaymentRegistrars] 
	@payCode nchar(10),
	@payDescription nvarchar(100)
	
AS
BEGIN
	SET NOCOUNT ON;

	SELECT payQuantity, payDescription, payReference, payAdditionalRef, payFundCode, payNarrative, includesVAT, payVatCode, payVatRate, paySurcharge
	FROM Card_Payment
	WHERE PayCode = @payCode AND payDescription = @payDescription
END
GO

