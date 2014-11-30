.class public Lcom/dolphin/browser/gesture/ui/GesturePannelView;
.super Lcom/dolphin/browser/vg/ui/PannelViewBase;
.source "GesturePannelView.java"


# instance fields
.field private a:Lcom/dolphin/browser/gesture/ui/aj;

.field private b:Lcom/dolphin/browser/gesture/GestureOverlayView;

.field private c:Lcom/dolphin/browser/gesture/GestureAnimationView;

.field private d:Landroid/content/Context;

.field private e:Lcom/dolphin/browser/gesture/i;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/dolphin/browser/gesture/ui/ag;

.field private h:I

.field private i:Z

.field private j:Ljava/util/Observer;

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/dolphin/browser/gesture/n;

.field private m:Lcom/dolphin/browser/gesture/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i:Z

    .line 74
    new-instance v0, Lcom/dolphin/browser/gesture/ui/y;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/y;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j:Ljava/util/Observer;

    .line 82
    new-instance v0, Lcom/dolphin/browser/gesture/ui/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/z;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->k:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/dolphin/browser/gesture/ui/aa;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/aa;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->l:Lcom/dolphin/browser/gesture/n;

    .line 159
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/ab;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->m:Lcom/dolphin/browser/gesture/o;

    .line 53
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i:Z

    .line 74
    new-instance v0, Lcom/dolphin/browser/gesture/ui/y;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/y;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j:Ljava/util/Observer;

    .line 82
    new-instance v0, Lcom/dolphin/browser/gesture/ui/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/z;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->k:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/dolphin/browser/gesture/ui/aa;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/aa;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->l:Lcom/dolphin/browser/gesture/n;

    .line 159
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/ab;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->m:Lcom/dolphin/browser/gesture/o;

    .line 58
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/aj;)Lcom/dolphin/browser/gesture/ui/aj;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a:Lcom/dolphin/browser/gesture/ui/aj;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f()V

    .line 64
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h()V

    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g()V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/ag;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->addObserver(Ljava/util/Observer;)V

    .line 72
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/ag;->b()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ad;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/ad;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    .line 96
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i:Z

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->y()I

    move-result v0

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/gesture/ui/ac;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/y;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    .line 100
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i:Z

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->b()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Z)V

    .line 105
    :cond_3
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i:Z

    .line 106
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ae;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/ae;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    goto :goto_0
.end method

.method static synthetic g(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030088

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureOverlayView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->m:Lcom/dolphin/browser/gesture/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/o;)V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->l:Lcom/dolphin/browser/gesture/n;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/n;)V

    .line 117
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureAnimationView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->b(F)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->c(I)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureAnimationView;->b(J)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->f()V

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080245

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f:Landroid/widget/TextView;

    .line 124
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i()V

    .line 125
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a()V

    .line 126
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureOverlayView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const v4, 0x7f0a0062

    .line 129
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(I)V

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201b4

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureAnimationView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureAnimationView;->b(I)V

    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0094

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureAnimationView;->a(I)V

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0093

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02014a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a:Lcom/dolphin/browser/gesture/ui/aj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const v4, 0x7f0b0159

    .line 169
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 170
    iget v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h:I

    if-ne v0, v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 179
    :cond_0
    iput v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h:I

    .line 180
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 181
    packed-switch v0, :pswitch_data_0

    .line 197
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0155

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 198
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 200
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 201
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0157

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 202
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b0153

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 204
    iget-object v5, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    invoke-virtual {v5, v0, v3, v0, v4}, Lcom/dolphin/browser/gesture/GestureAnimationView;->setPadding(IIII)V

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 207
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 208
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->requestLayout()V

    goto :goto_0

    .line 183
    :pswitch_0
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0156

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 184
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 186
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 187
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0158

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 188
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b0154

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 190
    iget-object v5, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c:Lcom/dolphin/browser/gesture/GestureAnimationView;

    invoke-virtual {v5, v0, v3, v0, v4}, Lcom/dolphin/browser/gesture/GestureAnimationView;->setPadding(IIII)V

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 193
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 194
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 234
    if-nez v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown gesture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/gesture/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    const-string v1, "gesture"

    const-string v2, "action"

    const-string v3, "loadpage"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 245
    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 242
    :cond_2
    :try_start_1
    const-string v1, "gesture"

    const-string v2, "action"

    invoke-static {v1, v2, p1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->b:Lcom/dolphin/browser/gesture/GestureOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 217
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/ag;->a()V

    .line 222
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e:Lcom/dolphin/browser/gesture/i;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->deleteObserver(Ljava/util/Observer;)V

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g:Lcom/dolphin/browser/gesture/ui/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/ag;->b()V

    .line 228
    return-void
.end method
