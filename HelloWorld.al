// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Bandymas1();



    end;

    local procedure Bandymas1()
    var
        myInt: Integer;
        OutputText: Text;
        masyvas: array[10] of Integer;
        counter: Integer;


        TypeHelper: Codeunit "Type Helper";
    begin
        myInt := 120;

        OutputText := format(myInt) + ' value integer\nauja eilute';

        Message(OutputText);

        for counter := 1 to 10 do begin

        end;

        while counter < 15 do begin
            counter += 1;

        end;

        repeat begin
            counter += 1;

        end until counter < 20;

    end;


}