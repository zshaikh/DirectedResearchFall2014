.class public Ldolphin/webkit/dc;
.super Ldolphin/webkit/dr;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/dolphin/player/o;


# static fields
.field private static t:Landroid/view/View;

.field private static u:Landroid/widget/FrameLayout;


# instance fields
.field a:Landroid/view/SurfaceHolder$Callback;

.field b:Lcom/dolphin/player/p;

.field private l:Ldolphin/webkit/dj;

.field private m:I

.field private n:Landroid/widget/MediaController;

.field private o:Landroid/view/SurfaceHolder;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private v:I

.field private w:I

.field private final x:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

.field private y:Lcom/dolphin/player/k;


# direct methods
.method constructor <init>(Landroid/content/Context;IIZLcom/dolphin/player/j;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ldolphin/webkit/dr;-><init>()V

    .line 69
    iput-object v2, p0, Ldolphin/webkit/dc;->o:Landroid/view/SurfaceHolder;

    .line 87
    new-instance v0, Ldolphin/webkit/dd;

    invoke-direct {v0, p0}, Ldolphin/webkit/dd;-><init>(Ldolphin/webkit/dc;)V

    iput-object v0, p0, Ldolphin/webkit/dc;->a:Landroid/view/SurfaceHolder$Callback;

    .line 137
    new-instance v0, Ldolphin/webkit/df;

    invoke-direct {v0, p0}, Ldolphin/webkit/df;-><init>(Ldolphin/webkit/dc;)V

    iput-object v0, p0, Ldolphin/webkit/dc;->b:Lcom/dolphin/player/p;

    .line 271
    new-instance v0, Ldolphin/webkit/dg;

    invoke-direct {v0, p0}, Ldolphin/webkit/dg;-><init>(Ldolphin/webkit/dc;)V

    iput-object v0, p0, Ldolphin/webkit/dc;->x:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 424
    new-instance v0, Ldolphin/webkit/dh;

    invoke-direct {v0, p0}, Ldolphin/webkit/dh;-><init>(Ldolphin/webkit/dc;)V

    iput-object v0, p0, Ldolphin/webkit/dc;->y:Lcom/dolphin/player/k;

    .line 155
    new-instance v0, Ldolphin/webkit/dj;

    invoke-direct {v0, p0, p1}, Ldolphin/webkit/dj;-><init>(Ldolphin/webkit/dc;Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    .line 156
    iput v1, p0, Ldolphin/webkit/dc;->m:I

    .line 157
    iput v1, p0, Ldolphin/webkit/dc;->v:I

    .line 158
    iput v1, p0, Ldolphin/webkit/dc;->w:I

    .line 161
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 162
    :cond_0
    invoke-static {}, Lcom/dolphin/player/aj;->a()Lcom/dolphin/player/aj;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p5, p3}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/j;I)V

    .line 166
    :cond_1
    invoke-virtual {p0, p2, p3, v2}, Ldolphin/webkit/dc;->a(IILcom/dolphin/player/aj;)V

    .line 167
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/dc;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Ldolphin/webkit/dc;->v:I

    return v0
.end method

.method static synthetic a(Ldolphin/webkit/dc;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Ldolphin/webkit/dc;->m:I

    return p1
.end method

.method static synthetic a(Ldolphin/webkit/dc;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ldolphin/webkit/dc;->o:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic a(Ldolphin/webkit/dc;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    return-object p1
.end method

.method private a(Landroid/widget/MediaController;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    .line 171
    invoke-direct {p0}, Ldolphin/webkit/dc;->s()V

    .line 172
    return-void
.end method

.method static synthetic b(Ldolphin/webkit/dc;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Ldolphin/webkit/dc;->w:I

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/dc;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Ldolphin/webkit/dc;->v:I

    return p1
.end method

.method static synthetic c(Ldolphin/webkit/dc;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Ldolphin/webkit/dc;->w:I

    return p1
.end method

.method static synthetic c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic d(Ldolphin/webkit/dc;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Ldolphin/webkit/dc;->s:I

    return p1
.end method

.method static synthetic d(Ldolphin/webkit/dc;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ldolphin/webkit/dc;->t()V

    return-void
.end method

.method static synthetic e()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Ldolphin/webkit/dc;)Ldolphin/webkit/dj;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    return-object v0
.end method

.method static synthetic f(Ldolphin/webkit/dc;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ldolphin/webkit/dc;->h()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    return-object v0
.end method

.method private h()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 177
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    iget-object v1, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 193
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Ldolphin/webkit/di;

    iget-object v1, p0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/di;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 198
    invoke-direct {p0, v0}, Ldolphin/webkit/dc;->a(Landroid/widget/MediaController;)V

    .line 199
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->b(Z)V

    .line 200
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    iget-object v1, p0, Ldolphin/webkit/dc;->b:Lcom/dolphin/player/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/p;)V

    .line 201
    iget-object v0, p0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/HTML5VideoViewProxy;)V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    iget-object v1, p0, Ldolphin/webkit/dc;->o:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(Landroid/view/SurfaceHolder;)V

    .line 188
    :cond_0
    return-void
.end method

.method public a(ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 308
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iput v2, p0, Ldolphin/webkit/dc;->m:I

    .line 313
    iput v4, p0, Ldolphin/webkit/dc;->s:I

    .line 314
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    iget-object v1, p0, Ldolphin/webkit/dc;->y:Lcom/dolphin/player/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/k;)V

    .line 315
    iput-object p2, p0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 317
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0}, Ldolphin/webkit/dj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/dc;->a:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 318
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0}, Ldolphin/webkit/dj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 319
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0, v2}, Ldolphin/webkit/dj;->setFocusable(Z)V

    .line 320
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0, v2}, Ldolphin/webkit/dj;->setFocusableInTouchMode(Z)V

    .line 321
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0}, Ldolphin/webkit/dj;->requestFocus()Z

    .line 325
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    .line 326
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {v1, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 331
    sget-object v0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ldolphin/webkit/dc;->h()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    sget-object v0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 334
    invoke-virtual {p3}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    .line 336
    sget-object v2, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    iget-object v3, p0, Ldolphin/webkit/dc;->x:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    .line 339
    invoke-virtual {p0}, Ldolphin/webkit/dc;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-virtual {p3}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {p3}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/ViewManager;->e()V

    .line 348
    :cond_2
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    .line 349
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 352
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Ldolphin/webkit/dc;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 355
    :cond_3
    sget-object v0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

    sget-object v2, Ldolphin/webkit/dc;->t:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/dolphin/player/j;)V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0, p1}, Ldolphin/webkit/dr;->a(Lcom/dolphin/player/j;)V

    .line 217
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0, p0}, Ldolphin/webkit/dj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_0
    invoke-interface {p1}, Lcom/dolphin/player/j;->l()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/dc;->v:I

    .line 237
    invoke-interface {p1}, Lcom/dolphin/player/j;->m()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/dc;->w:I

    .line 239
    iget-object v0, p0, Ldolphin/webkit/dc;->l:Ldolphin/webkit/dj;

    invoke-virtual {v0}, Ldolphin/webkit/dj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Ldolphin/webkit/dc;->v:I

    iget v2, p0, Ldolphin/webkit/dc;->w:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 242
    iget-object v0, p0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->f()V

    .line 246
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/dc;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->c()V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/dc;->c(Z)V

    .line 255
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 258
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_3
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "HTML5VideoView"

    const-string v2, "onPrepared"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 443
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 444
    if-eqz p1, :cond_1

    .line 445
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    sget-object v0, Ldolphin/webkit/dc;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 268
    sget-object v0, Ldolphin/webkit/dc;->u:Landroid/widget/FrameLayout;

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
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Ldolphin/webkit/dc;->r:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Ldolphin/webkit/dc;->p:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Ldolphin/webkit/dc;->q:Z

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 399
    :cond_0
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 388
    sget-object v0, Ldolphin/webkit/dc;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Ldolphin/webkit/dc;->s:I

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onControllerHide()V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 419
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 434
    iget v0, p0, Ldolphin/webkit/dc;->m:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/dc;->n:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Ldolphin/webkit/dc;->u()V

    .line 438
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Ldolphin/webkit/dc;->m()V

    .line 411
    return-void
.end method
