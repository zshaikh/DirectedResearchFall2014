.class Lcom/facebook/orca/contacts/picker/BasketItemConstants;
.super Ljava/lang/Object;
.source "BasketItemConstants.java"


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->a:I

    .line 22
    invoke-static {p1, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->b:I

    .line 23
    return-void
.end method
