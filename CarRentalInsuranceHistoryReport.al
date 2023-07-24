report 50119 CarInsuranceHistoryReport
{
    layout
    {
        group(General)
        {
            field("Automobilio Nr."; "Automobilio Nr.")
            {
                DataItem = "Auto Rent Header";
                Width = 15.0cm;
            }
            field("Marke"; "Marke")
            {
                DataItem = "Auto Rent Header";
                Width = 15.0cm;
            }
            field("Modelis"; "Modelis")
            {
                DataItem = "Auto Rent Header";
                Width = 15.0cm;
            }
        }

        repeater(RentalHistory)
        {
            dataitem("Auto Rent Header")
            {
                DataItemTableView = "Rental History Filter";
                DataItemLink = "No." = FIELD("Auto Rent Header", "No.");
                filters
                {
                    filter("Data nuo"; "Data nuo") { };
                    filter("Data iki"; "Data iki") { };
                }
            }

            field("Data nuo"; "Data nuo")
            {
                DataItem = "Auto Rent Header";
                Width = 15.0cm;
            }
            field("Data iki"; "Data iki")
            {
                DataItem = "Auto Rent Header";
                Width = 15.0cm;
            }
            field("Kliento pavadinimas"; "Kliento pavadinimas")
            {
                DataItem = "Auto Rent Header";
                Width = 15.0cm;
            }
            field("Bendra Nuomos suma su paslaugomis"; "Bendra Nuomos suma su paslaugomis")
            {
                DataItem = "Auto Rent Line";
                Width = 15.0cm;
                CalcFormula = "SUM(\"Amount\") WHERE \"Type\" = 1 AND \"Document No.\" = FIELD(\"Auto Rent Header\", \"No.\")";
            }
        }

        group(Summary)
        {
            field("Bendra visų nuomų suma"; "Bendra visų nuomų suma")
            {
                DataItem = "Auto Rent Line";
                Width = 15.0cm;
                CalcFormula = "SUM(\"Amount\") WHERE \"Document No.\" = FIELD(\"Auto Rent Header\", \"No.\")";
            }
        }
    }
}
