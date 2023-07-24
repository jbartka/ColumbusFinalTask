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
            trigger OnValidate()
            var
                ModelOption: Record "AutoMarkTable";
            begin
                // Filter the options for "Model" based on the selected brand (Marke).
                IF ModelOption.Description <> '' THEN BEGIN
                    ModelOption.RESET;
                    ModelOption.SETRANGE(ModelOption.Description, 'Modelis');
                    IF ModelOption.FINDFIRST THEN
                        Model := ModelOption.Description
                    ELSE
                        Model := '';
                END ELSE BEGIN
                    CLEAR(Model); // Reset Model if no Marke is selected.
                END;
            end;
        }
        field(4; Model; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Modelis';
            trigger OnValidate()
            var
                ModelOption: Record "AutoModelTable";
            begin
                // Filter the options for "Model" based on the selected brand (Marke).
                IF ModelOption.Description <> '' THEN BEGIN
                    ModelOption.RESET;
                    ModelOption.SETRANGE(ModelOption.Description, 'Modelis');
                    IF ModelOption.FINDFIRST THEN
                        Model := ModelOption.Description
                    ELSE
                        Model := '';
                END ELSE BEGIN
                    CLEAR(Model); // Reset Model if no Marke is selected.
                END;
            end;

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
        field(10; RentalPrice; Code[30])
        {
            Caption = 'Nuomos kaina';
            CalcFormula = lookup(AutoTable.RentalService);
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