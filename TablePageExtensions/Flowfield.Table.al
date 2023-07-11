table 50112 MyTable10
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MyField; Integer) { }

        field(10; MySumFlowField; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(MyTable2.MyFieldDecimal);
        }
        field(11; MyCountFlowField; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(MyTable2);
        }

        field(20; MySumFlowFieldFilter; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(MyTable2.MyFieldDecimal
                where(MyFieldBoolean = const(false)));
        }
        field(21; MyCountFlowFieldFilter; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(MyTable2
                where(MyFieldBoolean = const(true)));
        }

        field(30; MyFlowFilter; Date)
        {
            FieldClass = FlowFilter;
        }
        field(31; MyFlowField; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum(MyTable2.MyFieldDecimal
                where(MyFieldDate = field(MyFlowFilter)));
        }
    }

    keys
    {
        key(Key1; MyField) { Clustered = true; }
    }

    procedure CalcMyFlowFields()
    begin
        // Calculate fields value (list of fields)
        Rec.CalcFields(
            MySumFlowField,
            MyCountFlowField,
            MySumFlowFieldFilter,
            MyCountFlowFieldFilter);
    end;

    procedure CalcMyFlowFieldFilter()
    begin
        // You can set Flowfilters filter value
        Rec.SetRange(MyFlowFilter, 20230101D, 20231231D);
        // Calc Flowfield value
        Rec.CalcFields(MyFlowField);
    end;
}