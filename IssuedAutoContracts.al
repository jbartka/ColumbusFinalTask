page 50110 IssuedAutoContracts
{
    PageType = List;

    SourceTable = AutoRentTable;

    layout
    {
        area(content)
        {
            repeater(General)
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

    trigger OnAfterGetRecord()
    var
        RentHeader: Record "AutoRentTable";
        RentHeaderFilter: Record "AutoRentTable";
    begin
        RentHeader := Rec;
        RentHeaderFilter.SetRange("Status", RentHeader."Status");
        if RentHeaderFilter.FindSet then begin
            RentHeader := RentHeaderFilter;
            Rec := RentHeader;
        end;
    end;
}
