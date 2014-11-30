.class Lcom/dolphin/browser/launcher/c;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Lcom/dolphin/browser/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;IIIILandroid/view/View;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/dolphin/browser/launcher/c;->g:Lcom/dolphin/browser/launcher/CellLayout;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/c;->a:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    iput p3, p0, Lcom/dolphin/browser/launcher/c;->b:I

    iput p4, p0, Lcom/dolphin/browser/launcher/c;->c:I

    iput p5, p0, Lcom/dolphin/browser/launcher/c;->d:I

    iput p6, p0, Lcom/dolphin/browser/launcher/c;->e:I

    iput-object p7, p0, Lcom/dolphin/browser/launcher/c;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    .line 755
    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 756
    iget-object v1, p0, Lcom/dolphin/browser/launcher/c;->a:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/dolphin/browser/launcher/c;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/launcher/c;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 757
    iget-object v1, p0, Lcom/dolphin/browser/launcher/c;->a:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/dolphin/browser/launcher/c;->d:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/launcher/c;->e:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 758
    iget-object v0, p0, Lcom/dolphin/browser/launcher/c;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 759
    return-void
.end method
