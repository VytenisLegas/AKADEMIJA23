tableextension 50100 "MyExtension" extends Customer
{
    // Change Table Parameters

    fields
    {
        // New Fields

        // Modify Existing Fields
    }

    keys
    {
        // New Keys
    }

    fieldgroups
    {
        // Change existing fieldgroup
    }

    // New Global variables
    var
        MyInteger: Integer;

    // Change Triggers
    trigger OnBeforeModify()
    begin

    end;

    // originalus OnModify

    // tada mano OnModify
    trigger OnModify()
    begin

    end;

    trigger OnAfterModify()
    begin

    end;

    // New Procedures
}