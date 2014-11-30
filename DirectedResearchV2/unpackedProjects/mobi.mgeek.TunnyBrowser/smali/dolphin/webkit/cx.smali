.class public Ldolphin/webkit/cx;
.super Ljava/lang/Object;
.source "HTML5FakeVideoPlayer.java"


# static fields
.field private static a:Lcom/dolphin/player/VideoPlayerView;

.field private static b:Ldolphin/webkit/cx;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldolphin/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

.field private final f:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

.field private final g:Lcom/dolphin/player/bl;

.field private final h:Lcom/dolphin/player/br;

.field private i:Lcom/dolphin/player/bp;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/cx;->e:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 21
    new-instance v0, Ldolphin/webkit/cy;

    invoke-direct {v0, p0}, Ldolphin/webkit/cy;-><init>(Ldolphin/webkit/cx;)V

    iput-object v0, p0, Ldolphin/webkit/cx;->f:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 73
    new-instance v0, Ldolphin/webkit/cz;

    invoke-direct {v0, p0}, Ldolphin/webkit/cz;-><init>(Ldolphin/webkit/cx;)V

    iput-object v0, p0, Ldolphin/webkit/cx;->g:Lcom/dolphin/player/bl;

    .line 85
    new-instance v0, Ldolphin/webkit/da;

    invoke-direct {v0, p0}, Ldolphin/webkit/da;-><init>(Ldolphin/webkit/cx;)V

    iput-object v0, p0, Ldolphin/webkit/cx;->h:Lcom/dolphin/player/br;

    .line 153
    new-instance v0, Ldolphin/webkit/db;

    invoke-direct {v0, p0}, Ldolphin/webkit/db;-><init>(Ldolphin/webkit/cx;)V

    iput-object v0, p0, Ldolphin/webkit/cx;->i:Lcom/dolphin/player/bp;

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/VideoPlayerView;
    .locals 0

    .prologue
    .line 14
    sput-object p0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    return-object p0
.end method

.method static synthetic a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Ldolphin/webkit/cx;->e:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method public static a()Ldolphin/webkit/cx;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ldolphin/webkit/cx;->b:Ldolphin/webkit/cx;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ldolphin/webkit/cx;

    invoke-direct {v0}, Ldolphin/webkit/cx;-><init>()V

    sput-object v0, Ldolphin/webkit/cx;->b:Ldolphin/webkit/cx;

    .line 66
    :cond_0
    sget-object v0, Ldolphin/webkit/cx;->b:Ldolphin/webkit/cx;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Ldolphin/webkit/cx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Ldolphin/webkit/cx;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ldolphin/webkit/cx;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Ldolphin/webkit/cx;->b:Ldolphin/webkit/cx;

    return-object v0
.end method

.method static synthetic e()Lcom/dolphin/player/VideoPlayerView;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    return-object v0
.end method


# virtual methods
.method public a(Ldolphin/webkit/WebChromeClient$CustomViewCallback;)Lcom/dolphin/player/VideoPlayerView;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 134
    sget-object v1, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/cx;->e:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 138
    sget-object v1, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    .line 139
    sput-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    move-object v0, v1

    .line 140
    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 94
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-object p4, p0, Ldolphin/webkit/cx;->d:Ljava/lang/String;

    .line 100
    iput-object v3, p0, Ldolphin/webkit/cx;->e:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    .line 103
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->a(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {v0, p1}, Lcom/dolphin/player/VideoPlayerView;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    .line 105
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 110
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    iget-object v1, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ldolphin/webkit/Prereader;->b()Ldolphin/webkit/Prereader;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/Prereader;->a()Ldolphin/webkit/WebViewClassic;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 114
    const-string v0, "Media"

    const-string v1, "error:Prereader webviewclassic"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sput-object v3, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    goto :goto_0

    .line 119
    :cond_1
    sget-object v1, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, p0, Ldolphin/webkit/cx;->f:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    .line 124
    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->e()V

    .line 127
    :cond_2
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/cx;->i:Lcom/dolphin/player/bp;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bp;)V

    .line 128
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/cx;->g:Lcom/dolphin/player/bl;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bl;)V

    .line 129
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Ldolphin/webkit/cx;->h:Lcom/dolphin/player/br;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/br;)V

    .line 130
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    const-string v1, ""

    invoke-virtual {v0, v1, p4}, Lcom/dolphin/player/VideoPlayerView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0, p1}, Lcom/dolphin/player/VideoPlayerView;->a(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Ldolphin/webkit/cx;->a:Lcom/dolphin/player/VideoPlayerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ldolphin/webkit/cx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method
