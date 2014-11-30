.class public Lmobi/mgeek/TunnyBrowser/SplashParentView;
.super Landroid/widget/LinearLayout;
.source "SplashParentView.java"


# instance fields
.field private a:Z

.field private b:Lmobi/mgeek/TunnyBrowser/hk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->a:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->a:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->a:Z

    .line 15
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 35
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->a:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->a:Z

    .line 39
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->b:Lmobi/mgeek/TunnyBrowser/hk;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SplashParentView;->b:Lmobi/mgeek/TunnyBrowser/hk;

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/hk;->a()V

    goto :goto_0
.end method
