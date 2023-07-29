table 50103 AutoModelTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MarkKey; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Markės kodas';
            TableRelation = AutoMarkTable;
            //Primary Key
        }
        field(2; CodeKey; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Kodas';
            //Secondary Key
        }
        field(3; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }
    }

    keys
    {
        key(PK; MarkKey)
        {

        }
        key(SK; CodeKey)
        {

        }
    }


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