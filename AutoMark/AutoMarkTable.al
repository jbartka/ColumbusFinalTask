table 50102 AutoMarkTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CodeKey; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Kodas';
            //Primary Key
        }
        field(2; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }

    }

    keys
    {
        key(PK; CodeKey)
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