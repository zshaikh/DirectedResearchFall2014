.class public Lcom/dolphin/browser/k/k;
.super Ljava/util/Observable;
.source "PanelMenuStateObservable.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/dolphin/browser/k/l;

.field private b:Lcom/dolphin/browser/k/l;

.field private c:Lcom/dolphin/browser/k/l;

.field private d:Lcom/dolphin/browser/k/l;

.field private e:Lcom/dolphin/browser/k/l;

.field private f:Lcom/dolphin/browser/k/l;

.field private g:Lcom/dolphin/browser/k/l;

.field private h:Lcom/dolphin/browser/k/l;

.field private i:Lcom/dolphin/browser/k/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 31
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->a:Lcom/dolphin/browser/k/l;

    .line 32
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->b:Lcom/dolphin/browser/k/l;

    .line 33
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->c:Lcom/dolphin/browser/k/l;

    .line 34
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->d:Lcom/dolphin/browser/k/l;

    .line 35
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->e:Lcom/dolphin/browser/k/l;

    .line 36
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->f:Lcom/dolphin/browser/k/l;

    .line 37
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->g:Lcom/dolphin/browser/k/l;

    .line 38
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->h:Lcom/dolphin/browser/k/l;

    .line 39
    sget-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    iput-object v0, p0, Lcom/dolphin/browser/k/k;->i:Lcom/dolphin/browser/k/l;

    .line 43
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->b()V

    .line 46
    return-void
.end method

.method public static final a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, -0x1

    .line 28
    :goto_0
    return v0

    :cond_1
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static b(Z)Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    .line 274
    if-eqz p0, :cond_0

    .line 275
    sget-object v0, Lcom/dolphin/browser/k/l;->d:Lcom/dolphin/browser/k/l;

    .line 277
    :cond_0
    return-object v0
.end method

.method private c()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->a:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 291
    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 295
    const-string v1, ""

    .line 296
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    sget-object v0, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->h(Lcom/dolphin/browser/k/l;)V

    .line 302
    sget-object v0, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->i(Lcom/dolphin/browser/k/l;)V

    .line 303
    sget-object v0, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->g(Lcom/dolphin/browser/k/l;)V

    goto :goto_0

    .line 305
    :cond_2
    sget-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->h(Lcom/dolphin/browser/k/l;)V

    .line 306
    sget-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->i(Lcom/dolphin/browser/k/l;)V

    .line 307
    sget-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->g(Lcom/dolphin/browser/k/l;)V

    goto :goto_0
.end method

.method private d()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->b:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private e()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->c:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private f()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->d:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private g()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->e:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private h()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->f:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private i()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->h:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method private j()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->i:Lcom/dolphin/browser/k/l;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->g:Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method public a(I)Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    return-object v0

    .line 53
    :pswitch_1
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->c()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->d()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_3
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->e()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_4
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->f()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->g()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_6
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->h()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_7
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->a()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_8
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->i()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_9
    invoke-direct {p0}, Lcom/dolphin/browser/k/k;->j()Lcom/dolphin/browser/k/l;

    move-result-object v0

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->a:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->a:Lcom/dolphin/browser/k/l;

    .line 94
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->a(Lcom/dolphin/browser/k/l;)V

    .line 102
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    .line 224
    invoke-static {v0}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->a(Lcom/dolphin/browser/k/l;)V

    .line 226
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isMobileView()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 227
    :goto_0
    invoke-static {v0}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->b(Lcom/dolphin/browser/k/l;)V

    .line 229
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v4, v5, :cond_3

    .line 231
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v0

    .line 232
    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->c(Lcom/dolphin/browser/k/l;)V

    .line 237
    :goto_2
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    .line 238
    invoke-static {v0}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->d(Lcom/dolphin/browser/k/l;)V

    .line 240
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v0

    .line 241
    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->e(Lcom/dolphin/browser/k/l;)V

    .line 243
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    .line 244
    invoke-static {v0}, Lcom/dolphin/browser/k/k;->b(Z)Lcom/dolphin/browser/k/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->f(Lcom/dolphin/browser/k/l;)V

    .line 251
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 253
    const-string v0, ""

    .line 254
    if-eqz v3, :cond_0

    .line 255
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v3

    .line 259
    if-nez v3, :cond_5

    .line 260
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    :goto_4
    invoke-direct {p0, v1}, Lcom/dolphin/browser/k/k;->c(Z)V

    .line 269
    return-void

    :cond_1
    move v0, v2

    .line 226
    goto :goto_0

    :cond_2
    move v0, v2

    .line 232
    goto :goto_1

    .line 234
    :cond_3
    sget-object v0, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->c(Lcom/dolphin/browser/k/l;)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 241
    goto :goto_3

    .line 265
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_4
.end method

.method public b(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->b:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->b:Lcom/dolphin/browser/k/l;

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method

.method public c(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->c:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->c:Lcom/dolphin/browser/k/l;

    .line 127
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 128
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method public d(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->d:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->d:Lcom/dolphin/browser/k/l;

    .line 141
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 142
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 144
    :cond_0
    return-void
.end method

.method public e(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->e:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->e:Lcom/dolphin/browser/k/l;

    .line 155
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 156
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method public f(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->f:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->f:Lcom/dolphin/browser/k/l;

    .line 169
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 170
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method

.method public g(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->g:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 182
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->g:Lcom/dolphin/browser/k/l;

    .line 183
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 184
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 186
    :cond_0
    return-void
.end method

.method public h(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->h:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 196
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->h:Lcom/dolphin/browser/k/l;

    .line 197
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 198
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method

.method public i(Lcom/dolphin/browser/k/l;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/k/k;->i:Lcom/dolphin/browser/k/l;

    if-eq v0, p1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/dolphin/browser/k/k;->i:Lcom/dolphin/browser/k/l;

    .line 211
    invoke-virtual {p0}, Lcom/dolphin/browser/k/k;->setChanged()V

    .line 212
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/k;->notifyObservers(Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 282
    instance-of v0, p1, Lcom/dolphin/browser/k/e;

    if-eqz v0, :cond_0

    .line 283
    check-cast p1, Lcom/dolphin/browser/k/e;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/k/k;->c(Z)V

    .line 286
    :cond_0
    return-void
.end method
