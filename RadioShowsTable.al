table 50100 RadioShow
{
    // DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"No."; Code[20])
        {
            // DataClassification = ToBeClassified;
            
        }

        field(10;"Radio show Type";Code[10]){}
        field(20; "Name"; Text[50]) { }

        field(40; "Run time"; Duration) { }
        field(50;"Host code";Code[20]){}
        field(60;"Host Name";Text[50]){}
        field(100;"Average Listeners";Decimal){}
        field(110;"Audience Share";Decimal){}

        Field(120;"Advertising revenue";Decimal){}
        field(130;"Royalty Cost";Decimal){}

    }
    
    // keys
    // {
    //     key(PK; "No.")
    //     {
    //         Clustered = true;
    //     }
    // }
    
    // var
    //     myInt: Integer;
    
    // trigger OnInsert()
    // begin
        
    // end;
    
    // trigger OnModify()
    // begin
        
    // end;
    
    // trigger OnDelete()
    // begin
        
    // end;
    
    // trigger OnRename()
    // begin
        
    // end;
    
}