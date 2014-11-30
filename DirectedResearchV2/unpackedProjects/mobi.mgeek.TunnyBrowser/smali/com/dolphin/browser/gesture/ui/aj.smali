.class public Lcom/dolphin/browser/gesture/ui/aj;
.super Landroid/widget/FrameLayout;
.source "RecommendGestureView.java"


# instance fields
.field private a:I

.field private b:Landroid/widget/GridView;

.field private c:Lcom/dolphin/browser/gesture/ui/al;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/dolphin/browser/vg/ui/a;

.field private h:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/vg/ui/a;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->a:I

    .line 80
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/ak;-><init>(Lcom/dolphin/browser/gesture/ui/aj;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 55
    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/aj;->g:Lcom/dolphin/browser/vg/ui/a;

    .line 56
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/aj;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/aj;)Lcom/dolphin/browser/gesture/ui/al;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->c:Lcom/dolphin/browser/gesture/ui/al;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 222
    if-ne p1, v1, :cond_1

    .line 223
    const/4 v0, 0x4

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->a:I

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->b:Landroid/widget/GridView;

    iget v1, p0, Lcom/dolphin/browser/gesture/ui/aj;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 228
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    iput v1, p0, Lcom/dolphin/browser/gesture/ui/aj;->a:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/aj;->e:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->d:Ljava/util/Set;

    .line 63
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300cd

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/gesture/ui/aj;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802e0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->b:Landroid/widget/GridView;

    .line 65
    new-instance v0, Lcom/dolphin/browser/gesture/ui/al;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dolphin/browser/gesture/ui/al;-><init>(Lcom/dolphin/browser/gesture/ui/aj;Landroid/content/Context;Lcom/dolphin/browser/gesture/ui/ak;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->c:Lcom/dolphin/browser/gesture/ui/al;

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/aj;->c:Lcom/dolphin/browser/gesture/ui/al;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/aj;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/aj;->c()V

    .line 70
    const-string v0, "gesture"

    const-string v1, "launch"

    const-string v2, "recommendgesture"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private a(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/dolphin/browser/gesture/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->g:Lcom/dolphin/browser/vg/ui/a;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->g:Lcom/dolphin/browser/vg/ui/a;

    invoke-interface {v0}, Lcom/dolphin/browser/vg/ui/a;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/aj;Lcom/dolphin/browser/gesture/a/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/aj;->a(Lcom/dolphin/browser/gesture/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/aj;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->d:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const v2, 0x7f0a0062

    .line 74
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02030a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/aj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->b:Landroid/widget/GridView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->f:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->f:Z

    .line 128
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 130
    :try_start_0
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->f:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->f:Z

    .line 110
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/aj;->d:Ljava/util/Set;

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->c:Lcom/dolphin/browser/gesture/ui/al;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/al;->b()V

    .line 112
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 113
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 114
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 116
    const/16 v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 117
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 118
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    sget-object v2, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v2, 0x7f0f0001

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 120
    invoke-static {p0, v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/aj;->f:Z

    return v0
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/aj;->a(I)V

    .line 219
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/aj;->a()V

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/aj;->a(I)V

    .line 203
    return-void
.end method
