table 50102 AutoMarkTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CodeKey; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Kodas';
            //Primary Key
            //Pirminis raktas
        }
        field(2; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }

    }

    keys
    {
        key(Code; CodeKey)
        {
            Clustered = true;
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