report 50103 MyReport3
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/MyReport3.rdl';

    dataset
    {
        dataitem(DataItemName; MyTable)
        {
            column(ColumnName; MyField) { }

            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin

            end;

            trigger OnPostDataItem()
            begin

            end;
        }
    }

    // Report labels

    // Report triggers

    trigger OnInitReport()
    begin

    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin

    end;

    // Global variables

    // Report procedures
}
