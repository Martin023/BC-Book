page 50102 "RC Radio shows Activities"
{
    Caption = 'Activities';
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
                field("Advertising Revenue"; Rec."Total radio revenue")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Advertising revenue';
                    Editable = false;
                    ToolTip = 'Advertising revenue';

                }

            }
            cuegroup(Group2)
            {
                // CuegroupLayout = Wide;
                Caption = 'User Info';
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
            cuegroup("action tiles")// an action cuegroup ie leads to other pages etc.
            {
                Caption = 'The Web';
                actions
                {
                    action(Google)
                    {
                        Image = TileCloud;

                        trigger OnAction()
                        begin
                            Hyperlink('https://google.com');
                        end;
                    }
                    action(Youtube)
                    {
                        Image = TileCamera;

                        trigger OnAction()
                        begin
                            Hyperlink('https://youtube.com');
                        end;
                    }
                }
            }
            cuegroup("action")// an action cuegroup ie leads to other pages etc.
            {
                Caption = 'Short-cuts';
                actions
                {
                    action("Bank reconcilliation")
                    {
                        Image = TileReport;
                        RunObject = page "Bank Acc. Reconciliation List";
                        Caption  = 'Bank acc reconcilliations';
                    }
                    action("Bank Statements")
                    {
                        Image = TileHelp;
                        RunObject = page "Bank Account Statement";
                        Caption = 'Bank statements';
                    }
                }
            }
        }
        
    }
    actions
    {
        area(Processing)
        {
            action("Cues Setup")
            {
                ApplicationArea = Basic,Suite;
                Caption = 'Cues set-up';
                Image = Setup;
                ToolTip = 'Set up cues related to RC';

                trigger OnAction()
                var 
                    CuesAndKPIs : Codeunit "Cues And KPIs";
                    CueRecordRef : RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKPIs.OpenCustomizePageForCurrentUser(CueRecordRef.Number);
                end;
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
