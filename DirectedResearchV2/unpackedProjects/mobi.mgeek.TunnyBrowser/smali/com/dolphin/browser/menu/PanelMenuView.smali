.class public Lcom/dolphin/browser/menu/PanelMenuView;
.super Landroid/support/v4/view/ViewPager;
.source "PanelMenuView.java"


# instance fields
.field private a:Lcom/dolphin/browser/menu/ao;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuView;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;)Lcom/dolphin/browser/menu/ak;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuView;->b(Landroid/content/Context;)Lcom/dolphin/browser/menu/ak;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/content/Context;)Lcom/dolphin/browser/menu/an;
    .locals 6

    .prologue
    .line 97
    new-instance v1, Lcom/dolphin/browser/menu/an;

    invoke-direct {v1, p0, p2, p1}, Lcom/dolphin/browser/menu/an;-><init>(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;I)V

    .line 98
    sget-object v0, Lcom/dolphin/browser/menu/v;->a:[I

    aget v2, v0, p1

    .line 100
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 101
    sget-object v3, Lcom/dolphin/browser/menu/v;->d:[[I

    aget-object v3, v3, p1

    aget v3, v3, v0

    .line 102
    const/4 v4, 0x2

    if-ne v4, v3, :cond_0

    .line 103
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v4

    .line 105
    sget-object v5, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-eq v5, v4, :cond_0

    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v4, Lcom/dolphin/browser/menu/ae;

    invoke-direct {v4, v3}, Lcom/dolphin/browser/menu/ae;-><init>(I)V

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b00cb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/menu/ae;->b(I)V

    .line 113
    new-instance v3, Lcom/dolphin/browser/c/r;

    invoke-virtual {v4}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/dolphin/browser/c/r;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/menu/ae;->a(Lcom/dolphin/browser/c/a;)V

    .line 114
    new-instance v3, Lcom/dolphin/browser/menu/ac;

    invoke-direct {v3, p2}, Lcom/dolphin/browser/menu/ac;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v3, v4}, Lcom/dolphin/browser/menu/ac;->a(Lcom/dolphin/browser/menu/ae;)V

    .line 116
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/menu/an;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 118
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/PanelMenuView;ILandroid/content/Context;)Lcom/dolphin/browser/menu/an;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/menu/PanelMenuView;->a(ILandroid/content/Context;)Lcom/dolphin/browser/menu/an;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dolphin/browser/menu/PanelMenuView;->b:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/dolphin/browser/menu/ao;

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/menu/ao;-><init>(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuView;->a:Lcom/dolphin/browser/menu/ao;

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuView;->a:Lcom/dolphin/browser/menu/ao;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Landroid/support/v4/view/ae;)V

    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuView;->l()V

    .line 76
    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/dolphin/browser/menu/ak;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/dolphin/browser/menu/ak;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/menu/ak;-><init>(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;)V

    .line 124
    invoke-static {v0}, Lcom/dolphin/browser/menu/ak;->a(Lcom/dolphin/browser/menu/ak;)V

    .line 125
    return-object v0
.end method


# virtual methods
.method public l()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuView;->a:Lcom/dolphin/browser/menu/ao;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuView;->a:Lcom/dolphin/browser/menu/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ao;->d()V

    .line 83
    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuView;->a(I)V

    .line 93
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
