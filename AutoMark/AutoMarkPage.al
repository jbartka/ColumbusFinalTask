page 50102 AutoMarkPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AutoMarkTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CodeKey; Rec.CodeKey)
                {
                    ApplicationArea = All;
                    ToolTip = 'Kodas';
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Aprašas';
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