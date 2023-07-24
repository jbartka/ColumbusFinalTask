table 50101 AutoSetupTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; PrimaryKey; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';
            AutoIncrement = true;
            //Primary Key
            //Pirminis raktas
        }
        field(2; CarNumberSeries; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Automobilių numerių serija';
        }

        field(3; Name; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }

        field(4; RentalCardSeries; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Nuomos kortelės serija';
            //Relation - Location
            //Susijimas - Vieta
        }

        field(5; AttachmentLocation; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Priedų vieta';
            //Relation - Location
            //Susijimas - Vieta
        }

    }

    keys
    {
        key(Code; PrimaryKey)
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