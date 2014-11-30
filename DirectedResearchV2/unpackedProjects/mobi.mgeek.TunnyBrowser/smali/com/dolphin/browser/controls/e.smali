.class final Lcom/dolphin/browser/controls/e;
.super Lcom/dolphin/browser/controls/h;
.source "GridLayout.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2541
    invoke-direct {p0}, Lcom/dolphin/browser/controls/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)I
    .locals 3

    .prologue
    const/high16 v0, -0x80000000

    .line 2543
    if-nez p1, :cond_1

    .line 2547
    :cond_0
    :goto_0
    return v0

    .line 2546
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 2547
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a()Lcom/dolphin/browser/controls/m;
    .locals 1

    .prologue
    .line 2552
    new-instance v0, Lcom/dolphin/browser/controls/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/controls/f;-><init>(Lcom/dolphin/browser/controls/e;)V

    return-object v0
.end method
