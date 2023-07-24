report 50114 CarRentalInsuranceReport
{
    dataset
    {
        dataitem(1; "AutoRentTable";
            AutoRentTable)
        {
            DataItemTableView = Table;
        }
        dataitem(2; "AutoRentLine";
            AutoRentLine)
        {
            DataItemTableView = FlowFilter;
            DataItemLink = "Document No." = FIELD(AutoRentLine.No);
        }
    }

        repeater(AutoRentLine)
        {
            dataitem("Auto Rent Line")
            {
                DataItemTableView = FlowFilter;
                DataItemLink = "Document No." = FIELD("Auto Rent Header", "No.");
            }
        }

        group(Summary)
        {
            field("Nuomos suma"; "Nuomos suma")
            {
                DataItem = "Auto Rent Line";
                Width = 15.0cm;
                CalcFormula = "SUM("Amount")";
            }
            field("Bendra paslaugų suma"; "Bendra paslaugų suma")
            {
                DataItem = "Auto Rent Line";
                Width = 15.0cm;
                CalcFormula = "SUM("Amount") WHERE "Type" = 2";
            }
            field("Bendra nuomos suma su paslaugomis"; "Bendra nuomos suma su paslaugomis")
            {
                DataItem = "Auto Rent Line";
                Width = 15.0cm;
                CalcFormula = "SUM("Amount") WHERE "Type" = 1";
            }
        }
    }
}
