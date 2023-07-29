table 50107 AutoDamageTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; AutoNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Automobilio Nr.';
            //Primary Key
        }

        field(2; LineNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Eilutės Nr.';
            //Primary Key
        }

        field(3; DateField; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Data';
        }

        field(4; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }

        field(5; Status; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Statusas';
            OptionMembers = "Aktualus=1","Pašalintas=2";
        }
    }

    keys
    {
        key(PK; AutoNo)
        {
            Clustered = true;
        }
        key(SK; LineNo)
        {

        }
    }

    var
        myInt: Integer;

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