.class Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;
.super Ljava/lang/Object;
.source "ContactPickerAddPhoneOrEmailRow.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    return-object v0
.end method
