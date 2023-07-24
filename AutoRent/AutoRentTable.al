table 50108 AutoRentTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; No; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Nr.';
            //Primary Key
            //Pirminis raktas
        }

        field(2; CustomerNo; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Kliento Nr.';
        }

        field(3; DriverLicense; Media)
        {
            DataClassification = CustomerContent;
            Caption = 'Vairuotojo pažymėjimas';
        }

        field(4; DateField; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Data';
        }

        field(5; AutoNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Automobilio Nr.';
        }

        field(6; ReservedFromDateTime; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Rezervuota nuo data';
        }

        field(7; ReservedToDateTime; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Rezervuota iki data';
        }

        field(8; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Suma';
        }

        field(9; Status; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Būsena';
            OptionMembers = "Atidaryta=1; Išduota=2";
        }
    }

    keys
    {
        key(PK; No)
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