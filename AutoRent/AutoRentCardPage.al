page 50109 AutoRentCardPage
{
    SourceTable = AutoRentTable;
    PageType = Card;
    Caption = 'Auto Rent Card Page';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    Caption = 'Nr.';
                }
                field(CustomerNo; Rec.CustomerNo)
                {
                    ApplicationArea = All;
                    Caption = 'Kliento Nr.';
                }
                field(DriverLicense; Rec.DriverLicense)
                {
                    ApplicationArea = All;
                    Caption = 'Vairuotojo pažymėjimas';
                }
                field(DateField; Rec.DateField)
                {
                    ApplicationArea = All;
                    Caption = 'Data';
                }
                field(AutoNo; Rec.AutoNo)
                {
                    ApplicationArea = All;
                    Caption = 'Automobilio Nr.';
                }
                field(ReservedFromDateTime; Rec.ReservedFromDateTime)
                {
                    ApplicationArea = All;
                    Caption = 'Rezervuota nuo data';
                }
                field(ReservedToDateTime; Rec.ReservedToDateTime)
                {
                    ApplicationArea = All;
                    Caption = 'Rezervuota iki data';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    Caption = 'Suma';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Būsena';
                }
            }
        }
    }
}
