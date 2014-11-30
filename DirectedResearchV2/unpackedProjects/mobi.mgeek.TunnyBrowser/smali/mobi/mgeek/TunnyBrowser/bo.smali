.class Lmobi/mgeek/TunnyBrowser/bo;
.super Landroid/widget/FrameLayout;
.source "BrowserActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 3162
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3163
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/bo;->setBackgroundColor(I)V

    .line 3164
    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3210
    const/16 v0, 0x505

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/bo;->setSystemUiVisibility(I)V

    .line 3215
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->recomputeViewAttributes(Landroid/view/View;)V

    .line 3175
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/bo;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3158
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/bo;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 3202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3203
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/bo;->a()V

    .line 3204
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 3169
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 3195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3196
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/bo;->a()V

    .line 3197
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3183
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bp;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/bp;-><init>(Lmobi/mgeek/TunnyBrowser/bo;Landroid/view/View;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 3190
    return-void
.end method
