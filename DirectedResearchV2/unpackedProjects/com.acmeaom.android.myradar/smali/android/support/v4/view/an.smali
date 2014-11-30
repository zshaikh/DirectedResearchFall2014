.class final Landroid/support/v4/view/an;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/aq;Landroid/support/v4/view/aq;)I
    .locals 2

    .prologue
    .line 119
    iget v0, p1, Landroid/support/v4/view/aq;->b:I

    iget v1, p2, Landroid/support/v4/view/aq;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 116
    check-cast p1, Landroid/support/v4/view/aq;

    check-cast p2, Landroid/support/v4/view/aq;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/an;->a(Landroid/support/v4/view/aq;Landroid/support/v4/view/aq;)I

    move-result v0

    return v0
.end method
