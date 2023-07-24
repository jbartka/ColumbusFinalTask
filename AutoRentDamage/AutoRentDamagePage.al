page 50114 AutoRentDamage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AutoRentDamageTable;

    layout
    {
        area(content)
        {
            repeater(RentDamage)
            {
                field(DocumentNo; Rec.DocumentNo)
                {
                    caption = 'Dokumento Nr.';
                }
                field(LineNo; Rec.LineNo)
                {
                    caption = 'Eilutės Nr.';
                }
                field(DateField; Rec.DateField)
                {
                    caption = 'Data';
                }
                field(Description; Rec.Description)
                {
                    caption = 'Aprašas';
                }

            }
        }
    }
}

