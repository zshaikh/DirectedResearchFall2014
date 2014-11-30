.class public Lcom/dolphin/browser/theme/c/k;
.super Lcom/dolphin/browser/theme/c/j;
.source "ThemeColorResources.java"


# instance fields
.field private b:[I

.field private c:Lcom/dolphin/browser/theme/c/f;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/theme/c/j;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->m()[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/k;->b:[I

    .line 36
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->a()Lcom/dolphin/browser/theme/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/k;->c:Lcom/dolphin/browser/theme/c/f;

    .line 37
    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/k;->b:[I

    .line 42
    if-eqz v1, :cond_1

    .line 43
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 44
    if-ne p1, v3, :cond_0

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/k;->c:Lcom/dolphin/browser/theme/c/f;

    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->e()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/dolphin/browser/theme/c/f;->a(II)I

    move-result v0

    .line 49
    :goto_1
    return v0

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/j;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/j;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/c/k;->c:Lcom/dolphin/browser/theme/c/f;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->a(Landroid/content/res/ColorStateList;Lcom/dolphin/browser/theme/c/f;)Lcom/dolphin/browser/theme/data/ColorStateListWrapper;

    move-result-object v0

    return-object v0
.end method
