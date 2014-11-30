.class Lcom/facebook/orca/contacts/picker/ContactPickerRow;
.super Ljava/lang/Object;
.source "ContactPickerRow.java"


# instance fields
.field private final a:Lcom/facebook/orca/users/UserCluster;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/UserCluster;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->a:Lcom/facebook/orca/users/UserCluster;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/UserCluster;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->a:Lcom/facebook/orca/users/UserCluster;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->a:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->e()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
