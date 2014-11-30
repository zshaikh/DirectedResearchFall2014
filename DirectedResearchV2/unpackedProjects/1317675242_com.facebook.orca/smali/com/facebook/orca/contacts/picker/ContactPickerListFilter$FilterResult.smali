.class Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;
.super Ljava/lang/Object;
.source "ContactPickerListFilter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;


# instance fields
.field final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->a:Lcom/google/common/collect/ImmutableList;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->b:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 38
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->b:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
