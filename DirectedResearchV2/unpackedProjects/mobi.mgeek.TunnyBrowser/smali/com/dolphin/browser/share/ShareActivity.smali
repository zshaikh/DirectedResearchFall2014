.class public Lcom/dolphin/browser/share/ShareActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "ShareActivity.java"


# instance fields
.field a:Lcom/dolphin/browser/share/h;

.field b:Lcom/dolphin/browser/share/f;

.field private c:I

.field private d:Lcom/dolphin/browser/share/o;

.field private e:Lcom/dolphin/browser/share/b/j;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/dolphin/browser/share/n;

.field private h:Lcom/dolphin/browser/share/TitleBar;

.field private i:Lcom/dolphin/browser/share/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 156
    new-instance v0, Lcom/dolphin/browser/share/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/i;-><init>(Lcom/dolphin/browser/share/ShareActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->i:Lcom/dolphin/browser/share/s;

    .line 230
    new-instance v0, Lcom/dolphin/browser/share/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/k;-><init>(Lcom/dolphin/browser/share/ShareActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->a:Lcom/dolphin/browser/share/h;

    .line 269
    new-instance v0, Lcom/dolphin/browser/share/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/l;-><init>(Lcom/dolphin/browser/share/ShareActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->b:Lcom/dolphin/browser/share/f;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->e:Lcom/dolphin/browser/share/b/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/b/j;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/share/ShareActivity;->c:I

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->c()V

    .line 102
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->b()Lcom/dolphin/browser/share/b/c;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/dolphin/browser/share/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/b/c;)V

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/dolphin/browser/share/ShareActivity;->c:I

    if-ne v0, v1, :cond_2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->c()V

    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->c()V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 199
    if-eqz p2, :cond_1

    const-string v0, "success"

    .line 201
    :goto_0
    if-ne p1, v3, :cond_2

    .line 202
    const-string v1, "facebook share"

    const-string v2, "post"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->e:Lcom/dolphin/browser/share/b/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/share/b/j;->d()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 205
    invoke-static {}, Lcom/dolphin/browser/s/b;->a()Lcom/dolphin/browser/s/b;

    move-result-object v1

    const-string v2, "share_dolphin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "facebook_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/s/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_1
    return-void

    .line 199
    :cond_1
    const-string v0, "failure"

    goto :goto_0

    .line 209
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 210
    const-string v1, "twitter share"

    const-string v2, "tweet"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->e:Lcom/dolphin/browser/share/b/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/share/b/j;->d()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 213
    invoke-static {}, Lcom/dolphin/browser/s/b;->a()Lcom/dolphin/browser/s/b;

    move-result-object v1

    const-string v2, "share_dolphin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "twitter_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/s/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 218
    const-string v1, "evernote share"

    const-string v2, "save"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/share/ShareActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/ShareActivity;IZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/share/ShareActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/ShareActivity;Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/a;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Lcom/dolphin/browser/share/a;)V

    .line 310
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/share/b/c;)V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->setContentView(I)V

    .line 137
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/ShareActivity;->b(Lcom/dolphin/browser/share/b/c;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/ShareActivity;->c(Lcom/dolphin/browser/share/b/c;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/ShareActivity;->d(Lcom/dolphin/browser/share/b/c;)V

    .line 140
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->d()V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->d:Lcom/dolphin/browser/share/o;

    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/o;->a(I)V

    .line 142
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/share/ShareActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()Lcom/dolphin/browser/share/b/c;
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/dolphin/browser/share/ShareActivity;->c:I

    invoke-static {v0}, Lcom/dolphin/browser/share/b/d;->a(I)Lcom/dolphin/browser/share/b/c;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->d:Lcom/dolphin/browser/share/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/o;->a()I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/browser/share/b/d;->a(I)Lcom/dolphin/browser/share/b/c;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/b/c;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :cond_0
    return-object v0
.end method

.method private b(Lcom/dolphin/browser/share/b/c;)V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08026f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/TitleBar;

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->h:Lcom/dolphin/browser/share/TitleBar;

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->h:Lcom/dolphin/browser/share/TitleBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/share/TitleBar;->a(Lcom/dolphin/browser/share/b/c;)V

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->h:Lcom/dolphin/browser/share/TitleBar;

    iget-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->i:Lcom/dolphin/browser/share/s;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/TitleBar;->a(Lcom/dolphin/browser/share/s;)V

    .line 154
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/share/ShareActivity;)Lcom/dolphin/browser/share/TitleBar;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->h:Lcom/dolphin/browser/share/TitleBar;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    const/4 v1, 0x5

    iget v2, p0, Lcom/dolphin/browser/share/ShareActivity;->c:I

    if-ne v1, v2, :cond_0

    .line 121
    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shared_platform"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {p0, v0}, Lcom/dolphin/browser/share/m;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->finish()V

    .line 132
    return-void

    .line 123
    :cond_0
    const-class v1, Lcom/dolphin/browser/share/ShareLoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private c(Lcom/dolphin/browser/share/b/c;)V
    .locals 3

    .prologue
    .line 224
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 225
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->e:Lcom/dolphin/browser/share/b/j;

    iget-object v2, p0, Lcom/dolphin/browser/share/ShareActivity;->a:Lcom/dolphin/browser/share/h;

    invoke-virtual {p1, p0, v1, v2}, Lcom/dolphin/browser/share/b/c;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    .line 227
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/share/ShareActivity;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    return-void
.end method

.method private d(Lcom/dolphin/browser/share/b/c;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080270

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->f:Landroid/widget/LinearLayout;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->b:Lcom/dolphin/browser/share/f;

    invoke-virtual {p1, p0, v0}, Lcom/dolphin/browser/share/b/c;->a(Landroid/content/Context;Lcom/dolphin/browser/share/f;)Landroid/widget/ListView;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    .line 264
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareActivity;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 315
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->b()Lcom/dolphin/browser/share/b/c;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/dolphin/browser/share/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/b/c;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 297
    const-string v0, "share integration"

    const-string v1, "back"

    const-string v2, "hardkey"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shared_platform"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->c()V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareActivity;->setRequestedOrientation(I)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    const-string v1, "shared_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "shared_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string v3, "shared_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v4, "shared_source"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 69
    const-string v5, "shared_platform"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/share/ShareActivity;->c:I

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareActivity;->finish()V

    .line 77
    :goto_1
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Lcom/dolphin/browser/share/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->d:Lcom/dolphin/browser/share/o;

    .line 75
    new-instance v0, Lcom/dolphin/browser/share/b/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/share/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->e:Lcom/dolphin/browser/share/b/j;

    .line 76
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareActivity;->a()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStart()V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    invoke-interface {v0}, Lcom/dolphin/browser/share/n;->a()V

    .line 285
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStop()V

    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareActivity;->g:Lcom/dolphin/browser/share/n;

    invoke-interface {v0}, Lcom/dolphin/browser/share/n;->b()V

    .line 293
    :cond_0
    return-void
.end method
