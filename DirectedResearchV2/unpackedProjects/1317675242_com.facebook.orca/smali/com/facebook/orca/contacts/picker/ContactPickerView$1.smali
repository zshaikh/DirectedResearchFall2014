.class Lcom/facebook/orca/contacts/picker/ContactPickerView$1;
.super Ljava/lang/Object;
.source "ContactPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView;)Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V

    goto :goto_0
.end method
