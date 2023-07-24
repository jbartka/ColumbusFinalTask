table 50114 AutoRentDamageTable
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; DocumentNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Dokumento Nr.';
            //Primary Key
            //Pirminis raktas
        }

        field(2; LineNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Eilutės Nr.';
            //Secondary Key
            //Antrinis raktas
        }

        field(3; DateField; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Data';
        }

        field(4; Description; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Aprašas';
        }


    }

    keys
    {
        key(PK; DocumentNo)
        {

        }
        key(SK; LineNo)
        {

        }
    }
}
