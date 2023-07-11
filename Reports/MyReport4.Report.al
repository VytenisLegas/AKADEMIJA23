report 50104 MyReport4
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = where(Blocked = const(" "));

            // Column List
            column(Name; Name) { }
            column(Address; Address) { }

            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field("No."), "Posting Date" = field("Date Filter");
                DataItemTableView = where(Open = const(true));

                // Column List
                column(Amount; Amount) { }
                column(Remaining_Amount; "Remaining Amount") { DecimalPlaces = 0 : 5; }

                // Triggers ("Cust. Ledger Entry")
            }

            // Triggers (Customer)
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
