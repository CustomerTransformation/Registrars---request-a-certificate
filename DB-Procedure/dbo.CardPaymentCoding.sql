USE [ProdPayments]
GO

/****** Object:  StoredProcedure [dbo].[CardPaymentCoding]    Script Date: 06/11/2019 10:00:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniel Gregory
-- Create date: 30/05/2017
-- Description:	Load Values for the Payment integration SubForm
-- =============================================
CREATE PROCEDURE [dbo].[CardPaymentCoding] 
	@payCode nchar(10)
	
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	payQuantity, 
			payDescription, 
			payReference, 
			payAdditionalRef, 
			payFundCode, 
			payNarrative, 
			includesVAT, 
			payVatCode, 
			payVatRate, 
			paySurcharge, 
			DepartmentEmail, 
			AdditionalMsg
	FROM Card_Payment
	WHERE PayCode = @payCode
END

GO

