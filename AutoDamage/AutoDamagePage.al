page 50107 AutoDamagePage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AutoDamageTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(AutoNumber; Rec.AutoNo)
                {
                    ApplicationArea = All;
                    caption = 'Automobilio Nr.';
                }

                field(LineNo; Rec.LineNo)
                {
                    ApplicationArea = All;
                    caption = 'Eilutės Nr.';
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Aprašas';
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Statusas';
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