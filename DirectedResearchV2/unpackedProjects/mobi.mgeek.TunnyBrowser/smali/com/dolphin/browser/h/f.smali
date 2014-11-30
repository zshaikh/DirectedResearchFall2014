.class public Lcom/dolphin/browser/h/f;
.super Lcom/dolphin/browser/h/a;
.source "ShowCloseTabPopListener.java"


# static fields
.field private static r:Z


# instance fields
.field private s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/h/a;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 77
    new-instance v0, Lcom/dolphin/browser/h/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/h/g;-><init>(Lcom/dolphin/browser/h/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/h/f;->s:Ljava/lang/Runnable;

    .line 22
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/h/f;->s:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 75
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/dolphin/browser/h/a;->a()V

    .line 27
    invoke-static {}, Lcom/dolphin/browser/h/e;->b()Z

    move-result v0

    sput-boolean v0, Lcom/dolphin/browser/h/f;->r:Z

    .line 29
    new-instance v0, Lcom/dolphin/browser/c/h;

    iget-object v1, p0, Lcom/dolphin/browser/h/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/c/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/h/f;->q:Lcom/dolphin/browser/c/a;

    .line 30
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/dolphin/browser/h/a;->b()V

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/h/f;->i:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 41
    sget-boolean v0, Lcom/dolphin/browser/h/f;->r:Z

    if-nez v0, :cond_0

    .line 42
    iget-boolean v0, p0, Lcom/dolphin/browser/h/f;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05ef

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/h/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    sput-boolean v3, Lcom/dolphin/browser/h/f;->r:Z

    .line 46
    invoke-static {v3}, Lcom/dolphin/browser/h/e;->a(Z)V

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/h/f;->c:Z

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "toolbar"

    const-string v1, "longpress"

    const-string v2, "tablist"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    return-void

    .line 42
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05ee

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/h/f;->f()V

    .line 57
    iget-boolean v0, p0, Lcom/dolphin/browser/h/f;->c:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "toolbar"

    const-string v1, "longpress"

    const-string v2, "close"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/h/f;->f()V

    .line 66
    iget-boolean v0, p0, Lcom/dolphin/browser/h/f;->c:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "toolbar"

    const-string v1, "swipe"

    const-string v2, "close"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
