.class Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;
.super Ljava/lang/Object;
.source "ContactPickerIdentityChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;

    invoke-static {v0, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;I)V

    .line 96
    return-void
.end method
