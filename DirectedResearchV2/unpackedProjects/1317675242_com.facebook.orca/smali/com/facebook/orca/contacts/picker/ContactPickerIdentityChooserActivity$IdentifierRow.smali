.class Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;
.super Ljava/lang/Object;
.source "ContactPickerIdentityChooserActivity.java"


# instance fields
.field final a:Lcom/facebook/orca/users/UserCluster;

.field final b:Lcom/facebook/orca/users/UserInCluster;

.field final c:Lcom/facebook/orca/users/UserIdentifier;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/UserCluster;Lcom/facebook/orca/users/UserInCluster;Lcom/facebook/orca/users/UserIdentifier;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->a:Lcom/facebook/orca/users/UserCluster;

    .line 179
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    .line 180
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    .line 181
    return-void
.end method
