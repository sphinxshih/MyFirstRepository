/* ******************************************************************* */
/* Remember to change the ProcedureName to the corresponding SP        */
/* ******************************************************************* */
DECLARE @ReportedDataDate Datetime;

SELECT @ReportedDataDate = (SELECT top 1 EndDateTime ReportedDataDate from Log_StoredProc where ProcedureName = 'dbo.sp_Rpt_TTUISD_AdmissionActiveSummary' ORDER BY ID DESC)

SELECT *, @ReportedDataDate ReportedDataDate
FROM Rpt_TTUISD_AdmissionActiveSummary
ORDER BY Education_Level_Id, Education_Level_Name