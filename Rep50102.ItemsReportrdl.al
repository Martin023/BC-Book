report 50102 "Items Report rdl"
{
    ApplicationArea = All;
    Caption = 'Items Report rdl';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Items Report.RDL';
    DefaultLayout = RDLC;
    
    dataset
    {
        dataitem(Item; Item)
        {
            column(Id; Id)
            {
            }
            column(Inventory; Inventory)
            {
            }
            column(No; "No.")
            {
            }
            column(SalesLCY; "Sales (LCY)")
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
