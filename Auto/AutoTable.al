
table 50104 AutoTable
{
    DataClassification = CustomerContent;
    fields
    {
        field(1; Number; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Nr.';
            AutoIncrement = true;
            //Primary Key
            //Pirminis raktas
        }
        field(2; Name; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Pavadinimas';
        }
        field(3; Mark; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Marke';
            TableRelation = AutoMarkTable;
        }
        field(4; Model; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Modelis';
            TableRelation = AutoModelTable;
        }
        field(5; DateOfManufacture; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Pagaminimo metai';
        }
        field(6; DateOfCivilInsurance; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Civilinio draudimo galiojimas iki';
        }
        field(7; TaExpiration; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'TA galiojimas iki';
        }
        field(8; LocationCode; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Vietos Kodas';
            TableRelation = Location;
        }
        field(9; RentalService; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Nuomos paslauga';
            TableRelation = Resource;
        }
        field(10; RentalPrice; Decimal)
        {
            Caption = 'Nuomos kaina';
            CalcFormula = LOOKUP(Resource."Unit Cost" where("No." = field(RentalService)));
            FieldClass = FlowField;
        }



    }

    keys
    {
        key(Code; Number)
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