report 50105 MyReport5
{
    Caption = 'Mano Ataskaita 5';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = MyReport5;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = where(Blocked = filter(" "));

            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;

            column(Customer_No; "No.") { }
            column(Customer_Name; Name) { }
            column(Customer_Address; Address) { }
            column(Customer_Credit_Limit__LCY_; "Credit Limit (LCY)")
            {
                DecimalPlaces = 0 : 5;
            }

            dataitem("Customer Bank Account"; "Customer Bank Account")
            {
                DataItemLink = "Customer No." = field("No.");

                column(Bank_CustomerNo; "Customer No.") { }
                column(Bank_Code; Code) { }
                column(Bank_Name; Name) { }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; myInt)
                    {
                        ApplicationArea = All;

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

    rendering
    {
        layout(MyReport5)
        {
            Type = RDLC;
            LayoutFile = './Reports/MyReport5.rdl';
        }
    }

    var
        myInt: Integer;
}