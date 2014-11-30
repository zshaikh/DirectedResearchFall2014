.class public Lcom/dolphin/browser/gesture/ui/ai;
.super Landroid/widget/FrameLayout;
.source "RecommendGestureItem.java"


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/dolphin/browser/gesture/a/a;

.field private f:Lcom/dolphin/browser/gesture/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/ai;->a:I

    .line 21
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/ai;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/ai;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300cc

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/gesture/ui/ai;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->c:Landroid/widget/ImageView;

    .line 38
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->d:Landroid/widget/TextView;

    .line 39
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->f:Lcom/dolphin/browser/gesture/i;

    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/ai;->a()V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 8

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ai;->e:Lcom/dolphin/browser/gesture/a/a;

    .line 51
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "help"

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->f:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->h()Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    iget-object v7, p0, Lcom/dolphin/browser/gesture/ui/ai;->c:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/browser/gesture/ui/ai;->b:I

    sget v2, Lcom/dolphin/browser/gesture/ui/ai;->b:I

    sget v3, Lcom/dolphin/browser/gesture/ui/ai;->a:I

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a00cd

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    const/high16 v5, 0x40400000

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/gesture/Gesture;->a(IIIIFI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ai;->f:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method
