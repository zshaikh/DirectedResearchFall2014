.class public Lcom/dolphin/browser/theme/data/t;
.super Lcom/dolphin/browser/theme/data/a;
.source "ThemeColor.java"


# static fields
.field public static final m:Lcom/dolphin/browser/theme/data/t;


# instance fields
.field protected n:I

.field protected o:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/dolphin/browser/theme/data/t;

    const/4 v1, 0x0

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ak;->p()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    sput-object v0, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/data/a;-><init>(I)V

    .line 30
    iput p2, p0, Lcom/dolphin/browser/theme/data/t;->n:I

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/dolphin/browser/theme/c/k;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/theme/c/k;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)V

    return-object v0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/t;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/dolphin/browser/theme/data/t;->n:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/t;->o:Landroid/graphics/drawable/Drawable;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/t;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/dolphin/browser/theme/data/t;->n:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->g()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->h()I

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
