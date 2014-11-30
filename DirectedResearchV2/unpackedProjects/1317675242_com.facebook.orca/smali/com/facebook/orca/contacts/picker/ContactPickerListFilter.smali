.class abstract Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
.super Landroid/widget/Filter;
.source "ContactPickerListFilter.java"


# instance fields
.field private a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 56
    return-object v0
.end method

.method a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 24
    return-void
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a()V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->a()I

    move-result v2

    iget-object v3, v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->b:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(ILcom/google/common/collect/ImmutableList;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V

    goto :goto_0
.end method
