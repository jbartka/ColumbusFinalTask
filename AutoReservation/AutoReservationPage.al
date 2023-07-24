page 50106 AutoReservationPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
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

                end;
            }
        }
    }

    var
        myInt: Integer;
}