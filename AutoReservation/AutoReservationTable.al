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
        }

        field(2; LineNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Eilutės Nr.';
            //Secondary Key
        }

        field(3; CustomerNo; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Kliento Nr.';
            TableRelation = Customer;
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
        // Check for overlapping reservations before inserting
        if IsReservationOverlapping(AutoNo, ReservedFromDateTime, ReservedToDateTime) then begin
            Error('This reservation overlaps with existing reservations. Please choose different dates.');
        end;
    end;

    trigger OnModify()
    begin
        if IsReservationOverlapping(AutoNo, ReservedFromDateTime, ReservedToDateTime) then begin
            Error('This reservation overlaps with existing reservations. Please choose different dates.');
        end;
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        if IsReservationOverlapping(AutoNo, ReservedFromDateTime, ReservedToDateTime) then begin
            Error('This reservation overlaps with existing reservations. Please choose different dates.');
        end;
    end;

    local procedure IsReservationOverlapping(AutoNo: Integer; ReservedFrom: DateTime; ReservedTo: DateTime): Boolean;
    var
        Reservation: Record AutoReservationTable;
        Result: Boolean;
        FilterAutoNo: Integer;
        FilterReservedFrom: DateTime;
        FilterReservedTo: DateTime;
    begin
        Result := false;

        FilterAutoNo := AutoNo;
        FilterReservedFrom := ReservedFrom;
        FilterReservedTo := ReservedTo;

        Reservation.SetRange(Reservation.AutoNo, FilterAutoNo);
        Reservation.SetRange(Reservation.ReservedToDateTime, FilterReservedTo);
        Reservation.SetRange(Reservation.ReservedFromDateTime, FilterReservedFrom);
        Reservation.Reset;

        while Reservation.FindSet() do begin
            if Reservation.ReservedToDateTime < FilterReservedTo then begin
                Result := true;
                break;
            end;
            if Reservation.ReservedFromDateTime > FilterReservedFrom then begin
                Result := true;
                break;
            end;
        end;
    end;


}