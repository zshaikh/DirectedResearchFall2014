.class public Lcom/dolphin/browser/menu/ap;
.super Ljava/lang/Object;
.source "SwipeDolphinKeyGuide.java"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 26
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dolphin/browser/menu/ap;->a:Landroid/view/WindowManager;

    .line 29
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0075

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x3eb

    const/16 v4, 0x8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ap;->b:Landroid/view/WindowManager$LayoutParams;

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/menu/ap;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/menu/ap;->b:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0074

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 39
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ap;->c:Landroid/widget/FrameLayout;

    .line 41
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ce

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0184

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 48
    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a015d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0076

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/menu/ap;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/ap;->e:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/ap;->e:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/menu/ap;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/dolphin/browser/menu/ap;->a:Landroid/view/WindowManager;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/ap;->e:Z

    .line 67
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/ap;->e:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/menu/ap;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ap;->a:Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/ap;->e:Z

    .line 74
    :cond_0
    return-void
.end method
