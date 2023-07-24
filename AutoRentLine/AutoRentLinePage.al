page 50111 AutoRentLinePage
{
    SourceTable = AutoRentLineTable;
    PageType = ListPart;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(DocumentNo; Rec.DocumentNo)
                {
                    ApplicationArea = All;
                    Caption = 'Dokumento Nr.';
                }
                field(LineNo; Rec.LineNo)
                {
                    ApplicationArea = All;
                    Caption = 'Eilutės Nr.';
                }
                field(TypeField; Rec.TypeField)
                {
                    ApplicationArea = All;
                    Caption = 'Tipas';
                }
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    Caption = 'Nr.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Aprašas';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'Kiekis';
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    Caption = 'Kaina';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    Caption = 'Suma';
                }
            }
        }
    }
}
