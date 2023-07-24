page 50101 AutoSetupPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AutoSetupTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; Rec.CarNumberSeries)
                {
                    ApplicationArea = All;
                    ToolTip = 'Automobilių numerių serija';
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Aprašas';
                }

                field(RentalCardSeries; Rec.RentalCardSeries)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nuomos kortelės serija';
                }

                field(AttachmentLocation; Rec.AttachmentLocation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Priedų vieta';
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