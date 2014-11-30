.class public Lcom/dolphin/browser/sidebar/v;
.super Ljava/lang/Object;
.source "LeftBarController.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/dolphin/browser/sidebar/t;

.field private f:Lcom/dolphin/browser/sidebar/i;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/sidebar/v;->g:I

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/v;->a:Landroid/content/Context;

    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030099

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 32
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/v;->b:Landroid/widget/LinearLayout;

    .line 33
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/v;->d:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08025c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/v;->c:Landroid/widget/LinearLayout;

    .line 37
    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->setHardwareAccelerated(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/v;->e()V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->f:Lcom/dolphin/browser/sidebar/i;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->f:Lcom/dolphin/browser/sidebar/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/i;->a()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->e:Lcom/dolphin/browser/sidebar/t;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->e:Lcom/dolphin/browser/sidebar/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/t;->a()V

    .line 75
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/v;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/v;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dolphin/browser/sidebar/v;->h:Z

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->f:Lcom/dolphin/browser/sidebar/i;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/dolphin/browser/sidebar/i;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/v;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/sidebar/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/v;->f:Lcom/dolphin/browser/sidebar/i;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/v;->f:Lcom/dolphin/browser/sidebar/i;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sidebar/v;->h:Z

    .line 57
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/v;->d()V

    .line 58
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/a/a;->addObserver(Ljava/util/Observer;)V

    .line 60
    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/v;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/v;->d()V

    .line 79
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 91
    instance-of v0, p1, Lcom/dolphin/browser/ui/a/a;

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/v;->e()V

    .line 94
    :cond_0
    return-void
.end method
