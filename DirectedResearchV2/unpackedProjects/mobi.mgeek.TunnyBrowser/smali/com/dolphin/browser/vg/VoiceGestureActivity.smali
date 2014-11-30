.class public Lcom/dolphin/browser/vg/VoiceGestureActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "VoiceGestureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/vg/ui/a;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/dolphin/browser/vg/ui/SwitcherView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

.field private i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

.field private j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

.field private k:Lcom/dolphin/browser/vg/ui/PannelViewBase;

.field private l:Z

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/view/animation/Animation$AnimationListener;

.field private t:Landroid/view/animation/Animation$AnimationListener;

.field private u:Lcom/dolphin/browser/vg/ui/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->l:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    .line 152
    new-instance v0, Lcom/dolphin/browser/vg/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/b;-><init>(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->s:Landroid/view/animation/Animation$AnimationListener;

    .line 171
    new-instance v0, Lcom/dolphin/browser/vg/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/c;-><init>(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->t:Landroid/view/animation/Animation$AnimationListener;

    .line 238
    new-instance v0, Lcom/dolphin/browser/vg/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/vg/d;-><init>(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->u:Lcom/dolphin/browser/vg/ui/c;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/VoiceGestureActivity;)Lcom/dolphin/browser/vg/ui/PannelViewBase;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 190
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    if-ne v0, p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    .line 195
    iput p1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    .line 196
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    iput-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->k:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    .line 197
    if-nez p1, :cond_4

    .line 198
    invoke-direct {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->c()V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->a(Lcom/dolphin/browser/vg/ui/a;)V

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    .line 218
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->k:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->k:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->k:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->b()V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->c()V

    goto :goto_0

    .line 205
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->d()V

    .line 207
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-nez v1, :cond_5

    .line 208
    new-instance v1, Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    .line 209
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->a(Lcom/dolphin/browser/vg/ui/a;)V

    .line 210
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    if-eq v0, v4, :cond_5

    .line 212
    const-string v0, "Sonar"

    const-string v1, "launchby"

    const-string v2, "gesture_switch"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/VoiceGestureActivity;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/vg/VoiceGestureActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/vg/VoiceGestureActivity;)Lcom/dolphin/browser/vg/ui/PannelViewBase;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->k:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0152

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->d:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->e:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020269

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0155

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->n:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0202af

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->o:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020144

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->p:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/vg/VoiceGestureActivity;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->o:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 231
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->n:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 236
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/vg/VoiceGestureActivity;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->l:Z

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 298
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    if-nez v0, :cond_0

    .line 301
    const-string v0, "gesture"

    .line 302
    const-string v2, "gesture"

    const-string v3, "clickbtn"

    const-string v4, "gesturesettings"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    const-string v2, "tab"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    return-void

    .line 304
    :cond_0
    const-string v0, "voice"

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v2

    .line 375
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a(Z)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    instance-of v0, v0, Lcom/dolphin/browser/vg/ui/VoicePannelView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    check-cast v0, Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f()V

    .line 370
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->setVisibility(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    .line 383
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 384
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 385
    return-void

    :cond_0
    move v0, v1

    .line 383
    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a()V

    .line 364
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 353
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    if-nez v0, :cond_0

    .line 354
    const-string v0, "gesture"

    const-string v1, "hardkey"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onBackPressed()V

    .line 360
    return-void

    .line 356
    :cond_0
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "cancel_using"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->d:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 285
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    if-nez v0, :cond_2

    .line 286
    const-string v0, "gesture"

    const-string v1, "clickbtn"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->finish()V

    .line 295
    :cond_1
    :goto_1
    return-void

    .line 287
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    const-string v0, "Sonar"

    const-string v1, "Error"

    const-string v2, "cancel_using"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->e:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->e()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->a()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->a()V

    .line 348
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/m/d;->a()Lcom/dolphin/browser/m/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/m/d;->b()V

    .line 349
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->f()V

    .line 80
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03011c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->setContentView(I)V

    .line 84
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a:Landroid/view/View;

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803db

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/vg/ui/SwitcherView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->c:Landroid/view/ViewGroup;

    .line 87
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->d:Landroid/view/View;

    .line 88
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->e:Landroid/view/View;

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->f:Landroid/widget/TextView;

    .line 90
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->g:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->u:Lcom/dolphin/browser/vg/ui/c;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(Lcom/dolphin/browser/vg/ui/c;)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803dc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->n:Landroid/view/View;

    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803da

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->o:Landroid/view/View;

    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->p:Landroid/view/View;

    .line 100
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/vg/ui/SwitcherView;->setVisibility(I)V

    .line 105
    :cond_0
    const/high16 v0, 0x10a0000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->q:Landroid/view/animation/Animation;

    .line 106
    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->r:Landroid/view/animation/Animation;

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->q:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->s:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->r:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->t:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    const-string v0, "com.dolphin.brwoser.action.ACTION_VOICE"

    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iput-boolean v2, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->l:Z

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(IZ)V

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b()V

    .line 122
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->i()V

    .line 131
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_display_tab"

    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/vg/a/a;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->b:Lcom/dolphin/browser/vg/ui/SwitcherView;

    invoke-virtual {v1, v0, v3}, Lcom/dolphin/browser/vg/ui/SwitcherView;->a(IZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->h:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->d()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->i:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->d()V

    .line 337
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPause()V

    .line 322
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->b()V

    .line 325
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/vg/a;->a(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V

    .line 326
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/vg/VoiceGestureActivity;->j:Lcom/dolphin/browser/vg/ui/PannelViewBase;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->c()V

    .line 316
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/vg/a;->a(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V

    .line 317
    return-void
.end method
