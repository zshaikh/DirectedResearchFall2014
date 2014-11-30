.class Lcom/dolphin/browser/controls/f;
.super Lcom/dolphin/browser/controls/m;
.source "GridLayout.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/controls/e;

.field private e:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/controls/e;)V
    .locals 1

    .prologue
    .line 2552
    iput-object p1, p0, Lcom/dolphin/browser/controls/f;->a:Lcom/dolphin/browser/controls/e;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/controls/m;-><init>(Lcom/dolphin/browser/controls/a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/dolphin/browser/controls/h;I)I
    .locals 2

    .prologue
    .line 2580
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/controls/m;->a(Landroid/view/View;Lcom/dolphin/browser/controls/h;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected a(Z)I
    .locals 2

    .prologue
    .line 2575
    invoke-super {p0, p1}, Lcom/dolphin/browser/controls/m;->a(Z)I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/controls/f;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 2563
    invoke-super {p0}, Lcom/dolphin/browser/controls/m;->a()V

    .line 2564
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/controls/f;->e:I

    .line 2565
    return-void
.end method

.method protected a(II)V
    .locals 2

    .prologue
    .line 2569
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/controls/m;->a(II)V

    .line 2570
    iget v0, p0, Lcom/dolphin/browser/controls/f;->e:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/f;->e:I

    .line 2571
    return-void
.end method
