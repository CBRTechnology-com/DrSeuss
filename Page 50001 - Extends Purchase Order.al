pageextension 50001 ExtendsPurchaseOrder extends "Purchase Order"
{
    layout
    {
        addafter("Purchaser Code")
        {
            field("Campaign No."; "Campaign No.")
            {
                Caption = 'Campaign No.';
                ApplicationArea = All;
                Importance = Additional;

            }

        }
    }

    actions
    {

    }

    var
        myInt: Integer;
}