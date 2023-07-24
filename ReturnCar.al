codeunit 50100 "Automobile Rent Functions"
{
    procedure ReturnCar(AutoRentHeaderNo: Integer)
    var
        AutoRentHeader: Record AutoRentTable;
        FinishedAutoRentHeader: Record FinishedAutoRentHeaderTable;
        AutoRentLine: Record AutoRentLineTable;
        FinishedAutoRentLine: Record FinishedAutoRentLineTable;
        AutoRentDamage: Record AutoRentDamageTable;
        Auto: Record AutoTable;
        Item: Record Item;
        Resource: Record Resource;
        DamageDescription: Text[250];
        TotalAmount: Decimal;
        AutoRentLineExists: Boolean;

    begin
        AutoRentHeader.SetRange("No", AutoRentHeaderNo);
        if AutoRentHeader.FindFirst then begin
            // Sukuria Pabaigtą automobilio nuomos sutartį
            FinishedAutoRentHeader.CustomerNo := AutoRentHeader.CustomerNo;
            FinishedAutoRentHeader.DriverLicense := AutoRentHeader.DriverLicense;
            FinishedAutoRentHeader.DateField := AutoRentHeader.DateField;
            FinishedAutoRentHeader.AutoNo := AutoRentHeader.AutoNo;
            FinishedAutoRentHeader.ReservedFromDateTime := AutoRentHeader.ReservedFromDateTime;
            FinishedAutoRentHeader.ReservedToDateTime := AutoRentHeader.ReservedToDateTime;
            FinishedAutoRentHeader.Amount := AutoRentHeader.Amount;
            FinishedAutoRentHeader.INSERT;

            // Perkelia suvestus automobilio sugadinimus
            AutoRentDamage.RESET;
            AutoRentDamage.SETRANGE("DocumentNo", AutoRentHeader.No);
            AutoRentDamage.COPY(AutoRentDamage);
            AutoRentDamage.DELETEALL;

            // Panaikina automobilio nuomos sutartį
            AutoRentHeader.DELETEALL;
        end;
    end;
}
