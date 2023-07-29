page 50119 ActiveAutoReservationPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AutoReservationTable;

    layout
    {
        area(Content)
        {
            repeater(Reservation)
            {
                field(AutomobileNumber; Rec.AutoNo)
                {
                    caption = 'Automobilio Nr.';
                }
                field(LineNumber; Rec.LineNo)
                {
                    caption = 'Eilutės Nr.';
                }
                field(CustomerNumber; Rec.CustomerNo)
                {
                    caption = 'Kliento Nr.';
                }
                field(ReservationFrom; Rec.ReservedFromDateTime)
                {
                    caption = 'Rezervuota nuo';
                }
                field(ReservationTo; Rec.ReservedToDateTime)
                {
                    caption = 'Rezervuota iki';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    // Add any specific processing code if needed
                end;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnInit()
    var
        Today: DateTime;
        Reservation: Record AutoReservationTable;
    begin
        Today := CURRENTDATETIME; // Gets the current date

        Reservation.SetFilter(ReservedFromDateTime, '<=%1', Today);
        Reservation.SetFilter(ReservedToDateTime, '<=%1', Today);
    end;
}
