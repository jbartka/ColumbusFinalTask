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
        }
        field(2; CarNumberSeries; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Automobilių numerių serija';
        }

        field(3; RentalCardSeries; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Nuomos kortelės serija';
        }

        field(4; AttachmentLocation; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Priedų vieta';
            TableRelation = Location;
        }

    }

    keys
    {
        key(PK; PrimaryKey)
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