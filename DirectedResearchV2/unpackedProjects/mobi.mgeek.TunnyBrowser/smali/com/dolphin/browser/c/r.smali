.class public Lcom/dolphin/browser/c/r;
.super Lcom/dolphin/browser/c/a;
.source "PanelMenuCommand.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/c/r;-><init>(IZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/c/r;->a:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/c/r;->b:Z

    .line 41
    iput p1, p0, Lcom/dolphin/browser/c/r;->a:I

    .line 42
    iput-boolean p2, p0, Lcom/dolphin/browser/c/r;->b:Z

    .line 43
    return-void
.end method

.method static synthetic a(Z)Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/dolphin/browser/c/r;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/c/r;->b:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->d()V

    .line 60
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->f()V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->e()V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->g()V

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->h()V

    goto :goto_0

    .line 74
    :pswitch_4
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->i()V

    goto :goto_0

    .line 77
    :pswitch_5
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->j()V

    goto :goto_0

    .line 80
    :pswitch_6
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->k()V

    goto :goto_0

    .line 83
    :pswitch_7
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->l()V

    goto :goto_0

    .line 86
    :pswitch_8
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->m()V

    goto :goto_0

    .line 89
    :pswitch_9
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->n()V

    goto :goto_0

    .line 92
    :pswitch_a
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->c()V

    goto :goto_0

    .line 95
    :pswitch_b
    invoke-direct {p0}, Lcom/dolphin/browser/c/r;->b()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic a(Lcom/dolphin/browser/c/r;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/c/r;->a(ZLandroid/content/Context;)V

    return-void
.end method

.method private a(ZLandroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    .line 315
    sget-object v0, Lcom/dolphin/browser/menu/v;->e:[[I

    iget v1, p0, Lcom/dolphin/browser/c/r;->a:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz p1, :cond_0

    .line 317
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03fd

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_0
    invoke-static {p2, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    return-void

    .line 319
    :cond_0
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03fc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Z)Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    .line 306
    if-eqz p0, :cond_0

    .line 307
    sget-object v0, Lcom/dolphin/browser/k/l;->d:Lcom/dolphin/browser/k/l;

    .line 309
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionDownload2()Z

    .line 107
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchTheme()Z

    .line 114
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C()V

    .line 119
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v3

    .line 124
    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 128
    :goto_1
    invoke-virtual {v3, v1, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZZ)V

    .line 129
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-static {v1}, Lcom/dolphin/browser/c/r;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/k;->a(Lcom/dolphin/browser/k/l;)V

    .line 131
    invoke-direct {p0, v1, v3}, Lcom/dolphin/browser/c/r;->a(ZLandroid/content/Context;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 127
    goto :goto_1
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v4

    .line 137
    if-nez v4, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v5

    .line 141
    if-eqz v5, :cond_0

    .line 144
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isMobileView()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 146
    :goto_1
    if-nez v1, :cond_3

    move v1, v0

    .line 147
    :goto_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v6

    if-nez v1, :cond_4

    move v3, v0

    :goto_3
    invoke-virtual {v6, v4, v3, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setMobileView(Landroid/content/Context;ZZ)V

    .line 148
    invoke-direct {p0, v1, v4}, Lcom/dolphin/browser/c/r;->a(ZLandroid/content/Context;)V

    .line 149
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-static {v1}, Lcom/dolphin/browser/c/r;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/k;->b(Lcom/dolphin/browser/k/l;)V

    .line 151
    invoke-interface {v5}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-interface {v5}, Lcom/dolphin/browser/core/ITab;->reload()V

    .line 156
    invoke-static {v4, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 145
    goto :goto_1

    :cond_3
    move v1, v2

    .line 146
    goto :goto_2

    :cond_4
    move v3, v2

    .line 147
    goto :goto_3
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 161
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v2, v3, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v2

    .line 164
    if-ne v2, v0, :cond_1

    .line 165
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/ui/a/a;->a(I)V

    .line 169
    :goto_0
    if-ne v2, v4, :cond_2

    move v1, v0

    .line 170
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-static {v1}, Lcom/dolphin/browser/c/r;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/k;->c(Lcom/dolphin/browser/k/l;)V

    .line 172
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/c/r;->a(ZLandroid/content/Context;)V

    .line 184
    :cond_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/a/a;->a(I)V

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1
.end method

.method private h()V
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 189
    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionToggleNightMode()Z

    move-result v2

    .line 193
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-static {v2}, Lcom/dolphin/browser/c/r;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/k/k;->d(Lcom/dolphin/browser/k/l;)V

    .line 195
    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/c/r;->a(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v4

    .line 201
    if-nez v4, :cond_0

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 206
    :goto_1
    invoke-virtual {v0, v4, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setLoadImagesEnabled(Landroid/content/Context;Z)V

    .line 207
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/dolphin/browser/c/r;->a(ZLandroid/content/Context;)V

    .line 208
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    if-nez v1, :cond_3

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/c/r;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/k;->e(Lcom/dolphin/browser/k/l;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 205
    goto :goto_1

    :cond_2
    move v0, v3

    .line 207
    goto :goto_2

    :cond_3
    move v2, v3

    .line 208
    goto :goto_3
.end method

.method private j()V
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v2

    .line 220
    new-instance v3, Lcom/dolphin/browser/c/s;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/dolphin/browser/c/s;-><init>(Lcom/dolphin/browser/c/r;Lmobi/mgeek/TunnyBrowser/BrowserSettings;ZLmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-static {v0, v3}, Lcom/mgeek/android/util/n;->a(Landroid/content/Context;Lcom/mgeek/android/util/s;)V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 239
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 242
    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v3, Lcom/dolphin/browser/titlebar/u;

    invoke-direct {v3, v0, v2, v1}, Lcom/dolphin/browser/titlebar/u;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3}, Lcom/dolphin/browser/titlebar/u;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-static {v3}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 253
    :cond_1
    invoke-virtual {v3}, Lcom/dolphin/browser/titlebar/u;->a()V

    .line 255
    invoke-static {v3}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 260
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 263
    if-nez v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 269
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    const-string v4, "shared_url"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "shared_title"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "shared_type"

    const-string v2, "page"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 278
    new-instance v0, Lcom/dolphin/browser/c/l;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/c/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/l;->a()Z

    .line 279
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->findOnPage(Ljava/lang/String;)V

    .line 292
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/dolphin/browser/c/r;->a:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/r;->a(I)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
