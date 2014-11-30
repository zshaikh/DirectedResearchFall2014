.class Lcom/dolphin/browser/launcher/bc;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/launcher/az;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/az;I)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bc;->b:Lcom/dolphin/browser/launcher/az;

    iput p2, p0, Lcom/dolphin/browser/launcher/bc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000

    .line 197
    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bc;->b:Lcom/dolphin/browser/launcher/az;

    sub-float v0, v3, v0

    const v2, 0x3e4ccccd

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iget v2, p0, Lcom/dolphin/browser/launcher/bc;->a:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/dolphin/browser/launcher/az;->c:F

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bc;->b:Lcom/dolphin/browser/launcher/az;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bc;->b:Lcom/dolphin/browser/launcher/az;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->invalidate()V

    .line 202
    :cond_0
    return-void
.end method
