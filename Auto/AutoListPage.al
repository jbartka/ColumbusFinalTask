page 50104 AutoListPage
{
    PageType = List;
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

    trigger OnAfterGetRecord()
    var
        AutoModel: Record AutoModelTable;
        FilterString: Text;
    begin
        if Rec.Get('Mark', AutoModel."MarkKey") then begin
            // Construct the filter string based on the current record's "Mark" value and the related "MarkKey" value in AutoModelTable
            FilterString := Format('Model="%1"', 100, AutoModel.MarkKey);

            // Set the filter on the "Model" field to show only related records
            Rec.SetFilter("Model", FilterString);
        end
        else begin
            // If no matching record is found, remove the filter on the "Model" field to show all records
            Rec.SetFilter("Model", '');
        end;
    end;
}