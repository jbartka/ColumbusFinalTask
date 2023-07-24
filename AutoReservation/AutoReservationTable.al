table 50106 AutoReservationTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; AutoNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Automobilio Nr.';
            //Primary Key
            //Pirminis raktas

        }

        field(2; LineNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Eilutės Nr.';
            //Primary Key
            //Pirminis raktas
        }

        field(3; CustomerNo; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Kliento Nr.';
            TableRelation = Customer;
            //Relation to the standard "Customer" table
        }

        field(4; ReservedFromDateTime; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Rezervuota nuo data laikas';
        }

        field(5; ReservedToDateTime; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Rezervuota iki data laikas';
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