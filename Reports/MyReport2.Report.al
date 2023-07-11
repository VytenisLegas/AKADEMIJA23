report 50102 MyReport2
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/MyReport2.rdl';

    //AccessByPermission
    //AdditionalSearchTerms
    //AdditionalSearchTermsML
    //AllowScheduling
    //ApplicationArea
    //Caption
    //CaptionML
    //DataAccessIntent
    //DefaultLayout
    //DefaultRenderingLayout
    //Description
    //EnableExternalAssemblies
    //EnableExternalImages
    //EnableHyperlinks
    //ExcelLayout
    //ExecutionTimeout
    //Extensible
    //FormatRegion
    //InherentEntitlements
    //InherentPermissions
    //MaximumDatasetSize
    //MaximumDocumentCount
    //ObsoleteReason
    //ObsoleteState
    //ObsoleteTag
    //PaperSourceDefaultPage
    //PaperSourceFirstPage
    //PaperSourceLastPage
    //PdfFontEmbedding
    //Permissions
    //PreviewMode
    //ProcessingOnly
    //RDLCLayout
    //ShowPrintStatus
    //TransactionType
    //UsageCategory
    //UseRequestPage
    //UseSystemPrinter
    //WordLayout
    //WordMergeDataItem

    dataset
    {
        dataitem(DataItemName; MyTable)
        {
            column(ColumnName; MyField) { }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(MyDateCtrl; MyDate)
                    {
                        Caption = 'My Date';
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        MyDate: Date;
    // Report labels

    // Report triggers

    // Global variables

    // Report procedures
}
