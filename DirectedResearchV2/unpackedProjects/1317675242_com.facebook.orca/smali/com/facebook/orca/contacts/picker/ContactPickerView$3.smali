.class Lcom/facebook/orca/contacts/picker/ContactPickerView$3;
.super Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;
.source "ContactPickerView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

.field final synthetic b:Lcom/facebook/orca/contacts/picker/ContactPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    if-ne p1, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Lcom/facebook/orca/contacts/picker/ContactPickerView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
