.class public Lcom/dolphin/browser/theme/data/e;
.super Lcom/dolphin/browser/theme/data/t;
.source "CustomColor.java"


# instance fields
.field private p:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x2

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dolphin/browser/theme/data/e;->n:I

    if-eq v0, p1, :cond_0

    .line 36
    iput p1, p0, Lcom/dolphin/browser/theme/data/e;->n:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/e;->j:Z

    .line 39
    :cond_0
    return-void
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/e;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->r()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/e;->o:Landroid/graphics/drawable/Drawable;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/e;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/dolphin/browser/theme/data/e;->n:I

    iput v0, p0, Lcom/dolphin/browser/theme/data/e;->p:I

    .line 53
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/dolphin/browser/theme/data/e;->p:I

    iput v0, p0, Lcom/dolphin/browser/theme/data/e;->n:I

    .line 57
    return-void
.end method
