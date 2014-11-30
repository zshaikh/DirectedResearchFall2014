.class Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter$1;
.super Ljava/lang/Object;
.source "ContactPickerNewListFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/users/UserCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserCluster;Lcom/facebook/orca/users/UserCluster;)I
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->g()F

    move-result v0

    .line 298
    invoke-virtual {p2}, Lcom/facebook/orca/users/UserCluster;->g()F

    move-result v1

    .line 299
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 300
    const/4 v0, -0x1

    .line 304
    :goto_0
    return v0

    .line 301
    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 294
    check-cast p1, Lcom/facebook/orca/users/UserCluster;

    check-cast p2, Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter$1;->a(Lcom/facebook/orca/users/UserCluster;Lcom/facebook/orca/users/UserCluster;)I

    move-result v0

    return v0
.end method
