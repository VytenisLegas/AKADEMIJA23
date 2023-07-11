report 50101 MyReport1
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutNameRDLC;

    dataset
    {
        dataitem(DataItemName; MyTable)
        {
            column(ColumnName; MyField) { }
        }
    }

    rendering
    {
        layout(LayoutNameRDLC)
        {
            Type = RDLC;
            LayoutFile = './Reports/MyReport1.rdl';
        }
        layout(LayoutNameWord)
        {
            Type = Word;
            LayoutFile = './Reports/MyReport1.docx';
        }
        layout(LayoutNameExcel)
        {
            Type = Excel;
            LayoutFile = './Reports/MyReport1.xlsx';
        }
    }


    // Report requestpage

    // Report labels

    // Report triggers

    // Global variables

    // Report procedures
}