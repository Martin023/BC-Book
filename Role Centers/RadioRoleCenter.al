page 50105 "Radio MD "
{
    Caption = 'Radio MD Role Center';
    PageType = RoleCenter;

    layout
    {

        area(RoleCenter)
        {

            ////////////////////////////////////////////Headline Section start with it - order matters/////////////////////////

            part(HealineSection; "RC Radio Manager Headline")
            {
                ApplicationArea = All;
            }
        
            part(part3; "RC Radio shows Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part(part1; "Acc. Receivable Activities")
            {
                ApplicationArea = All;
            }
            part(part2; "Acc. Payables Activities")
            {
                ApplicationArea = All;
            }
            part(part4; "Email Activities")
            {
                ApplicationArea = All;
            }
            
            part(part7;"My Customers")
            {
                ApplicationArea = All;
            }
            part(part8; "My Vendors")
            {
                ApplicationArea = All;
            }
            part(part5; "Finance Performance")
            {
                ApplicationArea = All;
            }
            part(part6; "Power BI Report Spinner Part")
            {
                ApplicationArea = All;
            }
            systempart(Part9;MyNotes)
            {
                ApplicationArea = All;
            }
           
        }

    }
    actions
    {
        area(Sections) //navigation bar
        {
            group(General)
            {
                Caption = 'Radio Management';
                action("Radio Shows")
                {
                    RunObject = Page "Radio Show List";
                    ApplicationArea = Basic, Suite;

                }
                action("Permission Sets")
                {
                    RunObject = Page "Permission Sets";
                    ApplicationArea = Basic, Suite;
                }

                action("Users")
                {
                    RunObject = Page "Users";
                    ApplicationArea = Basic, Suite;
                }
            }
            group("Group2")
            {
                Caption = 'Receivables';
                action(Customers)
                {
                    RunObject = page "Customer List";
                    ApplicationArea = Basic, Suite;
                }
                action("Sales Orders")
                {
                    RunObject = page "Sales Order List";
                    ApplicationArea = Basic, Suite;
                }
                action("Posted Sales invoices")
                {
                    RunObject = page "Posted Sales Invoice";
                    ApplicationArea = Basic, Suite;

                }
                action("Sales Journal")
                {
                    RunObject = page "Sales Journal";
                    ApplicationArea = Basic,Suite;
                }
                
            }
            group(group3)
            {
                Caption = 'Payables';
                action("Vendors"){
                    RunObject = page "Vendor List";
                    ApplicationArea = Basic, Suite;
                }
                action ("Purchase Orders")
                {
                    RunObject = page "Purchase Order List";
                    ApplicationArea = Basic, Suite;
                }
                action ("Purchase Invoices")
                {
                    RunObject = page "Purchase Invoices";
                    ApplicationArea = Basic, Suite;
                }
                action (purchase)
                {
                    RunObject = page "Purchase Journal";
                    ApplicationArea = Basic,Suite;
                }

            }
            group(Reports)
            {
                Caption = 'Reports';
                action("Radio Shows Report")
                {
                    RunObject = Report "Radio Shows";
                    ApplicationArea = Basic, Suite;
                }
                action("Our vendors report")
                {
                    RunObject = Report "Vendor summary report";
                    ApplicationArea = Basic, Suite;
                }
                action ("Customers list")
                {
                    RunObject = report "Customer - List";
                    ApplicationArea = All;
                }
                action ("Top customers")
                {
                    RunObject = report "Customer - Top 10 List";
                    ApplicationArea = All;
                }
                action ("Yop Vendors")
                {
                    RunObject = report "Vendor - Top 10 List";
                    ApplicationArea = Basic,Suite;
                }


            }

        }
        area(Embedding) //Navigation menu area - used for actions related to master tables ie open pages
        {
            action("Our customers")
            {
                Caption = 'Our customers';
                Image = Customer;
                RunObject = Page "Customer List";
                ApplicationArea = Basic, Suite;
            }
            action("Our vendors")
            {
                Caption = 'Our vendors';
                Image = Vendor;
                RunObject = Page "Vendor List";
                ApplicationArea = Basic, Suite;
            }
            action("Our employees")
            {
                Caption = 'Our employees';
                Image = Employee;
                RunObject = Page "Employee List";
                ApplicationArea = Basic, Suite;
            }
            action("Our radio shows")
            {
                Caption = 'Our radio shows';
                Image = Item;
                RunObject = Page "Radio Show List";
                ApplicationArea = Basic, Suite;
            }
            action ("Chart of Accounts")
            {
                Caption = 'Chart of accounts';
                RunObject = page "Chart of Accounts";
            }
        }
        area(Creation) // Provides an area for actions that create new records
        {
            action("New customer")
            {
                Caption = 'New customer';
                Image = Customer;
                RunObject = Page "Customer Card";
                ApplicationArea = Basic, Suite;
            }
            action("New vendor")
            {
                Caption = 'New vendor';
                Image = Vendor;
                RunObject = Page "Vendor Card";
                ApplicationArea = Basic, Suite;
            }

            action("New radio show")
            {
                Caption = 'New radio show';
                Image = Item;
                RunObject = Page "Radio Show Card";
                ApplicationArea = Basic, Suite;
            }
        }
        area(Processing) // Provides an area for actions that process data
        {
            action("Make or receive payments")
            {
                Caption = 'Make or receive payments';
                Image = Payment;
                RunObject = Page "Payment Journal";
                ApplicationArea = Basic, Suite;
            }
            action("Make or receive invoices")
            {
                Caption = 'Payment Reconcilliations';
                Image = Invoice;
                RunObject = Page "Payment Reconciliation Journal";
                ApplicationArea = Basic, Suite;
            }
            // action("Make or receive credit memos")
            // {
            //     Caption = 'Make or receive credit memos';
            //     Image = CreditMemo;
            //     RunObject = Page "Credit Memo Journal";
            //     ApplicationArea = Basic, Suite;
            // }
        }

        area(Reporting)
        {
            action("Radio Shows Reports")
            {
                Caption = 'Radio shows list doc';
                Image = Report;
                ApplicationArea = Basic, Suite;
                RunObject = report "Radio Shows";
            }
            action("GL Registers delete empty")
            {
                Caption = 'GL Registers';
                Image = Report;
                ApplicationArea = Basic, Suite;
                RunObject = report "Delete Empty G/L Registers";
            }
        }

    }

}

profile SkizaRadioMD
{
    Caption = 'Skiza Radio MD';
    RoleCenter = "Radio MD ";
    ProfileDescription = 'Skiza Radio Manager';
}
