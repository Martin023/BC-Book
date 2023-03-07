report 50100 "Radio Shows"
{
    ApplicationArea = All;
    Caption = 'Radio Shows';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'RadioShows.docx';
    //ExcelLayout = 'RadioShows.xlsx';
    // RDLCLayout = 'RadioShows.RDLC';
    DefaultLayout = Word;

    dataset
    {
        dataitem(RadioShows; RadioShow)
        {
            column(No_; "No.") { }
            column(Name; Name) { }

            column(RadioshowType_RadioShows; "Radio show Type")
            {}
            column(Runtime_RadioShows; "Run time")
            {
            }
            
            column(HostName_RadioShows; "Host Name")
            {
            }
            
            column(RoyaltyCost_RadioShows; "Royalty Cost")
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
