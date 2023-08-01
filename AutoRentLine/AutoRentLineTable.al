table 50111 AutoRentLineTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; DocumentNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Dokumento Nr.';
            //Primary Key
        }

        field(2; LineNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Eilutės Nr.';
            //Secondary Key
        }

        field(3; TypeField; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Tipas';
            OptionMembers = "Item=1","Resource=2";

            // trigger OnValidate()
            // var
            // Item: Record "Item";
            // Resource: Record "Resource";

            /*
                Logic for selection because nothing has worked
            */
        }

        field(4; No; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Nr.';
        }

        field(5; Description; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }

        field(6; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Kiekis';
        }

        field(7; Price; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Kaina';
        }

        field(8; Amount; Decimal)
        {

            Caption = 'Suma';

            // CANNOT PERFORM THIS CALCULATION

            // FieldClass = FlowField;
            // CalcFormula = count("AutoRentLineTable" WHERE(Price <> 0.0 AND Quantity <> 0))

        }
    }

    keys
    {
        key(PK; DocumentNo)
        {

        }
        key(SK; No)
        {

        }
    }

    var
        myInt: Integer;
        myText: Text[30];

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
