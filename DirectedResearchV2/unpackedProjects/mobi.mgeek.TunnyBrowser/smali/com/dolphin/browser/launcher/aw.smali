.class Lcom/dolphin/browser/launcher/aw;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/dolphin/browser/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/FolderIcon;Landroid/graphics/Rect;III)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/dolphin/browser/launcher/aw;->e:Lcom/dolphin/browser/launcher/FolderIcon;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iput p3, p0, Lcom/dolphin/browser/launcher/aw;->b:I

    iput p4, p0, Lcom/dolphin/browser/launcher/aw;->c:I

    iput p5, p0, Lcom/dolphin/browser/launcher/aw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 5

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/launcher/aw;->e:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolphin/browser/launcher/aw;->b:I

    iget-object v4, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 321
    iget-object v1, p0, Lcom/dolphin/browser/launcher/aw;->e:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolphin/browser/launcher/aw;->c:I

    iget-object v4, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 322
    iget-object v1, p0, Lcom/dolphin/browser/launcher/aw;->e:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolphin/browser/launcher/aw;->b:I

    iget v4, p0, Lcom/dolphin/browser/launcher/aw;->d:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 323
    iget-object v1, p0, Lcom/dolphin/browser/launcher/aw;->e:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolphin/browser/launcher/aw;->c:I

    iget v4, p0, Lcom/dolphin/browser/launcher/aw;->d:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/dolphin/browser/launcher/aw;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 324
    iget-object v0, p0, Lcom/dolphin/browser/launcher/aw;->e:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/FolderIcon;->invalidate()V

    .line 325
    return-void
.end method
