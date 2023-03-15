page 50102 "RC Radio shows Activities"
{
    Caption = 'Radio Activities';
    PageType = CardPart;
    SourceTable = "Radio Shows Number cue";
    RefreshOnActivate = true;


    layout
    {
        area(content)
        {
            cuegroup(Group1)
            {
                CuegroupLayout = Wide;
                ShowCaption = false;
                field("Radio Shows No."; Rec."Number Of Radio Shows")
                {
                    ApplicationArea = All;
                    Caption = 'Radio Shows';
                    Editable = false;
                    ToolTip = 'Radio Shows';
                    DrillDownPageId = "Radio Show List";
                }
                field("Total log Time"; Rec."Total Month Log Time")
                {
                    ApplicationArea = All;
                    Caption = 'Total log time';
                    Editable = false;
                    ToolTip = 'Total Log Time';
                    DrillDownPageId = "User Time Registers";

                }

            }
            cuegroup(Group2)
            {
                // CuegroupLayout = Wide;
                ShowCaption = false;
                field("Current Users"; Rec."Number Of Current Users")
                {
                    ApplicationArea = All;
                    Caption = 'Concurrent Users';
                    Editable = false;
                    ToolTip = 'Concurrent Users';
                    DrillDownPageId = "Concurrent Session List";
                }
                field("Total Shows Air Time"; Rec."Total Shows Time")
                {
                    ApplicationArea = All;
                    Caption = 'Total Shows Air Time';
                    Editable = false;
                    ToolTip = 'Total Shows Air Time';
                    DrillDownPageId = "Radio Show List";
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;

    trigger OnAfterGetCurrRecord()
    begin
        rec."Total Month Log Time" := rec.GetTotalMonthLogTime();
        rec."Number Of Radio Shows" := rec.GetNumberOfRadioShows();

    end;

}
