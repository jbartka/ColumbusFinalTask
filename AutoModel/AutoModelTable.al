table 50103 AutoModelTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MarkKey; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Markės kodas';
            //Primary Key
            //Pirminis raktas
        }
        field(2; CodeKey; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Kodas';
            //Secondary Key
            //Antrinis raktas
        }
        field(3; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }
    }

    keys
    {
        key(Code; MarkKey)
        {

        }
        key(CodeKey; CodeKey)
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