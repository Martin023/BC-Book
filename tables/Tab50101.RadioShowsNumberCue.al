table 50101 "Radio Shows Number Cue"
{
    Caption = 'Radio Shows Number Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary key"; Code[20])
        {
            Caption = 'Primary key';
            DataClassification = ToBeClassified;
        }
        field(2; "Number Of Radio Shows"; Integer)
        {
            Caption = 'Number Of Radio Shows';
            DataClassification = ToBeClassified;
            
        }
        field(3; "Total Shows Time"; Duration)
        {
            Caption = 'Total Shows Time';
            FieldClass = FlowField;
            CalcFormula = Sum(SkizaRadioShows."Run time" where(Active = filter(true)));
        }
        field(4; "Number Of Current Users"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Active Session" where("Client Type" = CONST("Web Client")));
        }
        field(5; "Total Month Log Time"; Decimal)
        {
            Caption = 'Monthly log time';
        }
        field(6;"Total radio revenue"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(SkizaRadioShows."Advertising revenue" where (Active = const(true)));
        }
    }
    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
    procedure GetTotalMonthLogTime() MonthlyLogTime: Decimal
    var
        UserTimeRegister: Record "User Time Register";
    begin
        UserTimeRegister.Reset();
        UserTimeRegister.SetRange(Date, CalcDate('-CM', Today), CalcDate('CM', Today));
        if UserTimeRegister.FindFirst() then begin
            UserTimeRegister.CalcSums(Minutes);
            MonthlyLogTime := UserTimeRegister.Minutes;
        end;
        // repeat
        //     MonthlyLogTime += UserTmeRegister.Minutes;
        // until UserTmeRegister.Next() = 0;
    end;

    procedure GetNumberOfRadioShows() NumberOfRadioShows: Integer
    var 
       RadioShowsTable : Record SkizaRadioShows;
    begin
        NumberOfRadioShows := RadioShowsTable.Count;
    end;
    
    

}
