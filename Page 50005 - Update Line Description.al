page 50005 "Update Line Description"
{
    PageType = StandardDialog;
    UsageCategory = Administration;
    SourceTable = "Purch. Inv. Line";
    Permissions = tabledata 122 = rmid, tabledata 123 = rmid;


    layout
    {
        area(Content)
        {
            group("Update Purch. Inv Line Description")
            {
                field(UpdatePostDescription; UpdatePostDescription)
                {
                    ApplicationArea = All;
                    Caption = 'Change Line Description';
                    Editable = true;

                }
            }
        }
    }

    actions
    {

    }
    procedure UpdateDescrLine(LineDocNo: Code[20]; LineNo: integer)
    begin
        GlobalLineDocNumber := LineDocNo;
        GlobalLineNo := LineNo;
    end;

    procedure ChangeLineDescription(LineNewDescription: Text[50]; LineDocumentNo: code[20]; LineNo: Integer)
    begin
        IF PurchInvLine.Get(LineDocumentNo, LineNo) AND (LineNewDescription <> '') then begin
            PurchInvLine.Description := LineNewDescription;
            PurchInvLine.Modify();
            CurrPage.Update(false);

        end;
    end;

    var
        myInt: Integer;
        GlobalLineDocNumber: Code[20];
        GlobalLineNo: Integer;
        UpdatePostDescription: Text[50];
        PurchInvLine: Record "Purch. Inv. Line";


    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction IN [ACTION::OK, Action::LookupOK] then
            ChangeLineDescription(UpdatePostDescription, GlobalLineDocNumber, GlobalLineNo);
    end;

    trigger OnOpenPage()
    begin
        Clear(UpdatePostDescription);
    end;

}