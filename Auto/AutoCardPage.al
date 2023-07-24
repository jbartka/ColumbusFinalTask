page 50105 AutoCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AutoTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Nr; Rec.Number)
                {
                    ApplicationArea = All;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }

                field(Mark; Rec.Mark)
                {
                    ApplicationArea = All;
                }

                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }

                field(DateOfManufacture; Rec.DateOfManufacture)
                {
                    ApplicationArea = All;
                }

                field(DateOfCivilInsurance; Rec.DateOfCivilInsurance)
                {
                    ApplicationArea = All;
                }

                field(TaExpiration; Rec.TaExpiration)
                {
                    ApplicationArea = All;
                }

                field(LocationCode; Rec.LocationCode)
                {
                    ApplicationArea = All;
                }

                field(RentalService; Rec.RentalService)
                {
                    ApplicationArea = All;
                }

                field(RentalPrice; Rec.RentalPrice)
                {
                    ApplicationArea = All;
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