.class Lcom/dolphin/browser/launcher/ah;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/dolphin/browser/launcher/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/ag;FF)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    iput p2, p0, Lcom/dolphin/browser/launcher/ah;->a:F

    iput p3, p0, Lcom/dolphin/browser/launcher/ah;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000

    .line 82
    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/ag;->a(Lcom/dolphin/browser/launcher/ag;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    .line 85
    iget-object v2, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    invoke-static {v2}, Lcom/dolphin/browser/launcher/ag;->b(Lcom/dolphin/browser/launcher/ag;)F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    .line 87
    iget-object v3, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/dolphin/browser/launcher/ag;->a(Lcom/dolphin/browser/launcher/ag;F)F

    .line 88
    iget-object v3, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    int-to-float v4, v2

    invoke-static {v3, v4}, Lcom/dolphin/browser/launcher/ag;->b(Lcom/dolphin/browser/launcher/ag;F)F

    .line 89
    iget-object v3, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    iget v4, p0, Lcom/dolphin/browser/launcher/ah;->a:F

    iget v5, p0, Lcom/dolphin/browser/launcher/ah;->b:F

    iget v6, p0, Lcom/dolphin/browser/launcher/ah;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/g/c/a;->e(Landroid/view/View;F)V

    .line 90
    iget-object v3, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    iget v4, p0, Lcom/dolphin/browser/launcher/ah;->a:F

    iget v5, p0, Lcom/dolphin/browser/launcher/ah;->b:F

    iget v6, p0, Lcom/dolphin/browser/launcher/ah;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/g/c/a;->f(Landroid/view/View;F)V

    .line 91
    invoke-static {}, Lcom/dolphin/browser/launcher/ag;->f()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    invoke-static {}, Lcom/dolphin/browser/launcher/ag;->f()F

    move-result v4

    mul-float/2addr v4, v0

    sub-float v0, v7, v0

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/launcher/ag;->a(F)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/g/a/an;->b()V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    invoke-static {v3}, Lcom/g/c/a;->c(Landroid/view/View;)F

    move-result v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/g/c/a;->g(Landroid/view/View;F)V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ah;->c:Lcom/dolphin/browser/launcher/ag;

    invoke-static {v1}, Lcom/g/c/a;->d(Landroid/view/View;)F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    goto :goto_0
.end method
