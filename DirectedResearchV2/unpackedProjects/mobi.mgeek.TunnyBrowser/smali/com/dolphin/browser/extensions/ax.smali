.class public Lcom/dolphin/browser/extensions/ax;
.super Lcom/dolphin/browser/extensions/aw;
.source "PluginManager.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1507
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/aw;-><init>(Landroid/content/Context;)V

    .line 1508
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/extensions/ax;
    .locals 1

    .prologue
    .line 1502
    new-instance v0, Lcom/dolphin/browser/extensions/ax;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/ax;-><init>(Landroid/content/Context;)V

    .line 1503
    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1519
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ax;->a:[Lcom/dolphin/browser/extensions/n;

    aget-object v3, v0, p1

    .line 1520
    check-cast p2, Lcom/dolphin/browser/ui/y;

    .line 1521
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ax;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    :goto_1
    invoke-interface {p2, v3, v0, v1}, Lcom/dolphin/browser/ui/y;->a(Lcom/dolphin/browser/extensions/n;ZZ)V

    .line 1522
    invoke-interface {p2}, Lcom/dolphin/browser/ui/y;->a()V

    .line 1523
    return-void

    :cond_0
    move v0, v2

    .line 1521
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected d()Landroid/view/View;
    .locals 3

    .prologue
    .line 1512
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/ax;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->c(Landroid/content/Context;)Lcom/dolphin/browser/ui/y;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1513
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    return-object v0
.end method
