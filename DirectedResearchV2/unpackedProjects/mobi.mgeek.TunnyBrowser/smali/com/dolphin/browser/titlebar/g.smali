.class public Lcom/dolphin/browser/titlebar/g;
.super Lcom/dolphin/browser/titlebar/k;
.source "OverlapTitleBar.java"


# instance fields
.field private a:Landroid/view/ViewManager;

.field private b:Lcom/dolphin/browser/ui/c;

.field private c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private d:Landroid/widget/Button;


# direct methods
.method private p()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 155
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/g;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 162
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 165
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->showZoomButton()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    const/16 v3, 0x53

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    :goto_1
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 173
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->a:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/g;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 170
    :cond_2
    const/16 v3, 0x55

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private q()V
    .locals 3

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/g;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->a:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 187
    :cond_0
    return-void
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/g;->n()V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/g;->e(Z)V

    .line 277
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 249
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/g;->p()V

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/g;->s()V

    .line 258
    :cond_0
    return-void

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/g;->q()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->b:Lcom/dolphin/browser/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/c;->b()V

    .line 264
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/g;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 292
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->draw(Landroid/graphics/Canvas;)V

    .line 293
    return-void
.end method

.method public m_()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/g;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/titlebar/k;->m_()V

    .line 86
    return-void
.end method
