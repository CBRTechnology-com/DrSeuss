pageextension 50003 ExtendPostedPurchInvSubform extends "Posted Purch. Invoice Subform"
{
    Editable = true;
    layout
    {

        modify(Type)
        {
            ApplicationArea = Basic, Suite;
            Caption = 'Type';
            ToolTip = 'Specifies the type of transaction that was posted with the line.';
            Editable = false;
        }
        modify("No.")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
            Editable = false;
        }
        modify("Cross-Reference No.")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the cross-referenced item number. If you enter a cross reference between yours and your vendor''s or customer''s item number, then this number will override the standard item number when you enter the cross-reference number on a sales or purchase document.';
            Visible = false;
            Editable = false;
        }
        modify("IC Partner Code")
        {
            ApplicationArea = Intercompany;
            ToolTip = 'Specifies the code of the intercompany partner that the transaction is related to if the entry was created from an intercompany transaction.';
            Visible = false;
            Editable = false;
        }
        modify("Variant Code")
        {
            ApplicationArea = Planning;
            ToolTip = 'Specifies the variant of the item on the line.';
            Visible = false;
            Editable = false;
        }
        modify(Description)
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies either the name of, or a description of, the item or general ledger account.';
            Editable = true;
        }
        modify("Return Reason Code")
        {
            ApplicationArea = Suite;
            ToolTip = 'Specifies the code explaining why the item was returned.';
            Visible = false;
            Editable = false;
        }
        modify(Quantity)
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the quantity posted from the line.';
            Editable = false;
        }
        modify("Unit of Measure Code")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies how each unit of the item or resource is measured, such as in pieces or hours. By default, the value in the Base Unit of Measure field on the item or resource card is inserted.';
            Editable = false;
        }
        modify("Unit of Measure")
        {
            ApplicationArea = Suite;
            ToolTip = 'Specifies the name of the item or resource''s unit of measure, such as piece or hour.';
            Visible = false;
            Editable = false;
        }
        modify("Direct Unit Cost")
        {
            ApplicationArea = Basic, Suite;

            ToolTip = 'Specifies the cost of one unit of the selected item or resource.';
            Editable = false;
        }
        modify("Indirect Cost %")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the percentage of the item''s last purchase cost that includes indirect costs, such as freight that is associated with the purchase of the item.';
            Visible = false;
            Editable = false;
        }
        modify("Unit Cost (LCY)")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the cost, in $, of one unit of the item or resource on the line.';
            Visible = false;
            Editable = false;
        }
        modify("Unit Price (LCY)")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the price, in $, of one unit of the item or resource. You can enter a price manually or have it entered according to the Price/Profit Calculation field on the related card.';
            Editable = false;
        }
        modify("Tax Liable")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies if the customer or vendor is liable for sales tax.';
            Visible = false;
            Editable = false;
        }
        modify("Tax Area Code")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the tax area that is used to calculate and post sales tax.';
            Visible = false;
            Editable = false;
        }
        modify("Provincial Tax Area Code")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the Canadian provincial tax area code for the purchase invoice line. This code is used to calculate sales tax charges defined by the Provincial Sales Tax (PST) rate.';
            Visible = false;
            Editable = false;
        }
        modify("Tax Group Code")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the tax group that is used to calculate and post sales tax.';
            Editable = false;
        }
        modify("Use Tax")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies that the purchase is subject to use tax. Use tax is a sales tax that is paid on items that are purchased by a company and are used by that company instead of being sold to a customer.';
            Visible = false;
            Editable = false;
        }
        modify("Line Discount %")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the discount percentage that is granted for the item on the line.';
            Editable = false;
        }
        modify("Line Amount")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the net amount, excluding any invoice discount amount, that must be paid for products on the line.';
            Editable = false;
        }
        modify("Line Discount Amount")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the discount amount that is granted for the item on the line.';
            Visible = false;
            Editable = false;
        }
        modify("Allow Invoice Disc.")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies whether the invoice line could have been included in an invoice discount calculation.';
            Visible = false;
            Editable = false;
        }
        modify("Job No.")
        {
            ApplicationArea = Jobs;
            ToolTip = 'Specifies the number of the related job.';
            Editable = false;
        }
        modify("Job Task No.")
        {
            ApplicationArea = Jobs;
            ToolTip = 'Specifies the number of the related job task.';
            Visible = false;
            Editable = false;
        }
        modify("Insurance No.")
        {
            ApplicationArea = FixedAssets;
            ToolTip = 'Specifies the insurance number on the purchase invoice line.';
            Visible = false;
            Editable = false;
        }
        modify("Budgeted FA No.")
        {
            ApplicationArea = FixedAssets;
            ToolTip = 'Specifies the number of a fixed asset with the Budgeted Asset check box selected. When you post the journal or document line, an additional entry is created for the budgeted fixed asset where the amount has the opposite sign.';
            Visible = false;
            Editable = false;
        }
        modify("FA Posting Type")
        {
            ApplicationArea = FixedAssets;
            ToolTip = 'Specifies the posting type, if Account Type field contains Fixed Asset.';
            Visible = false;
            Editable = false;
        }
        modify("Depr. until FA Posting Date")
        {
            ApplicationArea = FixedAssets;
            ToolTip = 'Specifies if depreciation was calculated until the FA posting date of the line.';
            Visible = false;
            Editable = false;
        }
        modify("Depreciation Book Code")
        {
            ApplicationArea = FixedAssets;
            ToolTip = 'Specifies the code for the depreciation book to which the line will be posted if you have selected Fixed Asset in the Type field for this line.';
            Visible = false;
            Editable = false;
        }
        modify("Depr. Acquisition Cost")
        {
            ApplicationArea = FixedAssets;
            ToolTip = 'Specifies if, when this line was posted, the additional acquisition cost posted on the line was depreciated in proportion to the amount by which the fixed asset had already been depreciated.';
            Visible = false;
            Editable = false;
        }
        modify("Appl.-to Item Entry")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies the number of the item ledger entry that the document or journal line is applied to.';
            Visible = false;
            Editable = false;
        }
        modify("Deferral Code")
        {
            ApplicationArea = Suite;
            ToolTip = 'Specifies the deferral template that governs how expenses paid with this purchase document are deferred to the different accounting periods when the expenses were incurred.';
            Editable = false;
        }
        modify("Shortcut Dimension 1 Code")
        {
            ApplicationArea = Dimensions;
            ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
            Visible = false;
            Editable = false;
        }
        modify("Shortcut Dimension 2 Code")
        {
            ApplicationArea = Dimensions;
            ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
            Visible = false;
            Editable = false;
        }
        modify("IRS 1099 Liable")
        {
            ApplicationArea = Basic, Suite;
            ToolTip = 'Specifies if the purchase invoice line record is a 1099 liable tax that must be reported to the Internal Revenue Service (IRS).';
            Visible = false;
            Editable = false;
        }

    }

    actions
    {
        addafter("&Line")
        {
            action("Update Line Description")
            {
                ApplicationArea = all;
                Caption = 'Update Line Description';
                Visible = false;
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Clear(UpdateDescription);
                    UpdateDescription.UpdateDescrLine("Document No.", "Line No.");
                    UpdateDescription.SetTableView(Rec);
                    UpdateDescription.SetRecord(Rec);
                    if UpdateDescription.RunModal = Action::OK then;

                end;

            }
        }
    }

    var
        myInt: Integer;
        UpdateDescription: Page "Update Line Description";
}