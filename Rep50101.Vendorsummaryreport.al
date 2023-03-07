report 50101 "Vendor summary report"
{
    ApplicationArea = All;
    Caption = 'Vendor summary report';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = 'Vendor summary report.xlsx';
    DefaultLayout = Excel;
    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(Balance; Balance)
            {
            }
            column(OutstandingOrders; "Outstanding Orders")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
