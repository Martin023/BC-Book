page 50101 "Radio Show Card"
{
    Caption = 'Radio Show Card';
    PageType = Card;
    SourceTable = RadioShow;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Unique no to identify the radio show';
                }
                field("Advertising revenue"; Rec."Advertising revenue")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Advertising revenue field.';
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Audience Share field.';
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Average Listeners field.';
                }
                field("Host Name"; Rec."Host Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Host Name field.';
                }
                field("Host code"; Rec."Host code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Host code field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Radio show Type"; Rec."Radio show Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Radio show Type field.';
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Royalty Cost field.';
                }
                field("Run time"; Rec."Run time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Run time field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
            }
        }
    }
}
