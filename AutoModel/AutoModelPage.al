page 50103 AutoModelPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AutoModelTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(MarkKey; Rec.MarkKey)
                {
                    ApplicationArea = All;
                    ToolTip = 'Markės kodas';
                }

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