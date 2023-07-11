report 50100 MyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/MyReport.rdl';

    dataset
    {
        dataitem(DataItemName; MyTable)
        {
            column(ColumnName; MyField) { }
        }
    }

    // Report requestpage

    // Report labels

    // Report triggers

    // Global variables

    // Report procedures
}