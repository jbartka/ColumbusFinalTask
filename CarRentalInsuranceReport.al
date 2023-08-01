report 50119 CarInsuranceReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './FinalProject/CarInsuranceReport.rdl';

    dataset
    {
        dataitem(AutoTable; AutoTable)
        {
            // Define columns to fetch data from the "Auto Rent Header" table
            column(Number; Number) { }
            column(Mark; Mark) { }
            column(Model; Model) { }
            column(RentalService; RentalService) { }
            column(RentalPrice; RentalPrice) { }
        }

        dataitem(AutoRentLineTable; AutoRentLineTable)
        {
            // Define columns to fetch data from the "Auto Rent Line" table
            column("Kiekis"; Quantity) { }
            column("Kaina"; Price) { }
            column("Suma"; Amount) { }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(General)
                {
                    field(No; AutoTable.Number)
                    {
                        ApplicationArea = All;
                    }

                    field(Marke; AutoTable.Mark)
                    {
                        ApplicationArea = All;
                    }

                    field(Modelis; AutoTable.Model)
                    {
                        ApplicationArea = All;
                    }

                    field(RentalService; AutoTable.RentalService)
                    {
                        ApplicationArea = All;
                    }

                    field(RentalPrice; AutoTable.RentalPrice)
                    {
                        ApplicationArea = All;
                    }

                    field(Quantity; AutoRentLineTable.Quantity)
                    {
                        ApplicationArea = All;
                    }

                    field(Price; AutoRentLineTable.Price)
                    {
                        ApplicationArea = All;
                    }

                    field(Amount; AutoRentLineTable.Amount)
                    {
                        ApplicationArea = All;
                    }
                }

                group(Summary)
                {
                    // Field for "Bendra visų nuomų suma"
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(PrintAction)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
