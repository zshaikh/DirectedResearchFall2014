.class public Ldolphin/webkit/dk;
.super Ldolphin/webkit/dr;
.source "HTML5VideoFullScreenEx.java"


# static fields
.field private static a:Lcom/dolphin/player/VideoPlayerView;


# instance fields
.field private b:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ldolphin/webkit/WebViewClassic;

.field private final p:Lcom/dolphin/player/bl;

.field private q:Lcom/dolphin/player/a/f;

.field private r:Lcom/dolphin/player/bm;

.field private s:Lcom/dolphin/player/bn;

.field private final t:Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ldolphin/webkit/dr;-><init>()V

    .line 130
    const/16 v0, 0x64

    iput v0, p0, Ldolphin/webkit/dk;->m:I

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/webkit/dk;->n:I

    .line 152
    new-instance v0, Ldolphin/webkit/dl;

    invoke-direct {v0, p0}, Ldolphin/webkit/dl;-><init>(Ldolphin/webkit/dk;)V

    iput-object v0, p0, Ldolphin/webkit/dk;->p:Lcom/dolphin/player/bl;

    .line 162
    new-instance v0, Ldolphin/webkit/dm;

    invoke-direct {v0, p0}, Ldolphin/webkit/dm;-><init>(Ldolphin/webkit/dk;)V

    iput-object v0, p0, Ldolphin/webkit/dk;->q:Lcom/dolphin/player/a/f;

    .line 170
    new-instance v0, Ldolphin/webkit/dn;

    invoke-direct {v0, p0}, Ldolphin/webkit/dn;-><init>(Ldolphin/webkit/dk;)V

    iput-object v0, p0, Ldolphin/webkit/dk;->r:Lcom/dolphin/player/bm;

    .line 186
    new-instance v0, Ldolphin/webkit/do;

    invoke-direct {v0, p0}, Ldolphin/webkit/do;-><init>(Ldolphin/webkit/dk;)V

    iput-object v0, p0, Ldolphin/webkit/dk;->s:Lcom/dolphin/player/bn;

    .line 197
    new-instance v0, Ldolphin/webkit/dp;

    invoke-direct {v0, p0}, Ldolphin/webkit/dp;-><init>(Ldolphin/webkit/dk;)V

    iput-object v0, p0, Ldolphin/webkit/dk;->t:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 35
    iput v1, p0, Ldolphin/webkit/dk;->b:I

    .line 36
    iput v1, p0, Ldolphin/webkit/dk;->l:I

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Ldolphin/webkit/dk;->a(IILcom/dolphin/player/aj;)V

    .line 39
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/dk;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Ldolphin/webkit/dk;->m:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/VideoPlayerView;
    .locals 0

    .prologue
    .line 23
    sput-object p0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    return-object p0
.end method

.method static synthetic a(Ldolphin/webkit/dk;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic a(Ldolphin/webkit/dk;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ldolphin/webkit/dk;->d(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {p1}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 239
    :cond_0
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/dk;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Ldolphin/webkit/dk;->m:I

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/dk;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Ldolphin/webkit/dk;->n:I

    return p1
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Z)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/dk;->e()V

    .line 110
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-super {p0, v0}, Ldolphin/webkit/dr;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    goto :goto_0
.end method

.method static synthetic g()Lcom/dolphin/player/VideoPlayerView;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/16 v0, 0x64

    iput v0, p0, Ldolphin/webkit/dk;->m:I

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/webkit/dk;->n:I

    .line 118
    invoke-virtual {p0}, Ldolphin/webkit/dk;->start()V

    .line 120
    :cond_0
    return-void
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 258
    iput-object p2, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 259
    iput-object p3, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    .line 261
    invoke-static {}, Lcom/dolphin/player/a/e;->a()Lcom/dolphin/player/a/e;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/dk;->q:Lcom/dolphin/player/a/f;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/a/e;->a(Lcom/dolphin/player/a/f;)V

    .line 263
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/dk;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldolphin/webkit/cx;->a()Ldolphin/webkit/cx;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/cx;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Ldolphin/webkit/cx;->a()Ldolphin/webkit/cx;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/dk;->t:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v1}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/WebChromeClient$CustomViewCallback;)Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    .line 265
    invoke-static {}, Ldolphin/webkit/cx;->a()Ldolphin/webkit/cx;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/cx;->c()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    .line 266
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->p:Lcom/dolphin/player/bl;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bl;)V

    .line 267
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->r:Lcom/dolphin/player/bm;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bm;)V

    .line 268
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->s:Lcom/dolphin/player/bn;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bn;)V

    .line 269
    iget v0, p0, Ldolphin/webkit/dk;->d:I

    invoke-virtual {p0, p2, p1, p4, v0}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/HTML5VideoViewProxy;ILjava/lang/String;I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->a(Landroid/content/Context;)V

    .line 274
    new-instance v0, Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/player/VideoPlayerView;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    .line 275
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 279
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->setVisibility(I)V

    .line 280
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->p:Lcom/dolphin/player/bl;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bl;)V

    .line 281
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->r:Lcom/dolphin/player/bm;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bm;)V

    .line 282
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/dk;->s:Lcom/dolphin/player/bn;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bn;)V

    .line 284
    iget-object v0, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_3

    .line 287
    iget-object v1, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    invoke-static {}, Ldolphin/webkit/Prereader;->b()Ldolphin/webkit/Prereader;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/Prereader;->a()Ldolphin/webkit/WebViewClassic;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 288
    const-string v0, "Media"

    const-string v1, "error:Prereader webviewclassic"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    goto :goto_0

    .line 293
    :cond_2
    sget-object v1, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, p0, Ldolphin/webkit/dk;->t:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    .line 296
    invoke-virtual {p0}, Ldolphin/webkit/dk;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Ldolphin/webkit/dk;->o:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->e()V

    .line 306
    :cond_3
    iget v0, p0, Ldolphin/webkit/dk;->d:I

    invoke-virtual {p0, p2, p1, p4, v0}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/HTML5VideoViewProxy;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/HTML5VideoViewProxy;ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Ldolphin/webkit/dk;->e()V

    .line 313
    iput-object p1, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 315
    iput p2, p0, Ldolphin/webkit/dk;->e:I

    .line 316
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-direct {p0}, Ldolphin/webkit/dk;->h()V

    .line 318
    sget-object v1, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v1, :cond_2

    .line 319
    new-instance v1, Lcom/dolphin/player/bq;

    invoke-direct {v1}, Lcom/dolphin/player/bq;-><init>()V

    .line 320
    iput-object p3, v1, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    .line 321
    const-string v2, ""

    iput-object v2, v1, Lcom/dolphin/player/bq;->b:Ljava/lang/String;

    .line 322
    iput-object v0, v1, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    .line 323
    const-string v0, ""

    iput-object v0, v1, Lcom/dolphin/player/bq;->d:Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Ldolphin/webkit/dk;->s()Z

    move-result v0

    iput-boolean v0, v1, Lcom/dolphin/player/bq;->g:Z

    .line 325
    div-int/lit16 v0, p4, 0x3e8

    iput v0, v1, Lcom/dolphin/player/bq;->f:I

    .line 326
    invoke-direct {p0}, Ldolphin/webkit/dk;->t()Z

    move-result v0

    iput-boolean v0, v1, Lcom/dolphin/player/bq;->i:Z

    .line 327
    invoke-virtual {p0}, Ldolphin/webkit/dk;->r()Z

    move-result v0

    iput-boolean v0, v1, Lcom/dolphin/player/bq;->h:Z

    .line 328
    invoke-virtual {p1}, Ldolphin/webkit/HTML5VideoViewProxy;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ldolphin/webkit/dk;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_3

    sget-object v0, Ldolphin/webkit/dk;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    .line 330
    sget-object v0, Ldolphin/webkit/dk;->f:Lcom/dolphin/player/aj;

    iput-object v0, v1, Lcom/dolphin/player/bq;->e:Lcom/dolphin/player/aj;

    .line 331
    sget-object v0, Ldolphin/webkit/dk;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    sget-object v0, Ldolphin/webkit/dk;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 332
    :cond_0
    sget-object v0, Ldolphin/webkit/dk;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->h()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/dk;->n:I

    .line 339
    :cond_1
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->k()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 340
    :goto_1
    sget-object v2, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bq;Z)V

    .line 342
    :cond_2
    return-void

    .line 336
    :cond_3
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/dolphin/player/bq;->e:Lcom/dolphin/player/aj;

    goto :goto_0

    .line 339
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "Media"

    const-string v1, "Fullscreen PausedInternel"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Ldolphin/webkit/dk;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Ldolphin/webkit/dk;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 77
    sget-object v0, Ldolphin/webkit/dk;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 78
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/dk;->i:Ljava/util/Timer;

    .line 80
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 134
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v0, :cond_1

    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget v0, p0, Ldolphin/webkit/dk;->n:I

    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    .line 136
    iget v0, p0, Ldolphin/webkit/dk;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/dk;->n:I

    .line 139
    :cond_0
    iget v0, p0, Ldolphin/webkit/dk;->n:I

    .line 142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Ldolphin/webkit/dk;->m:I

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p_()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Ldolphin/webkit/dk;->n:I

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/dolphin/player/aj;->a()Lcom/dolphin/player/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->e()V

    .line 70
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Ldolphin/webkit/dk;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->b()V

    .line 65
    :cond_0
    return-void
.end method
