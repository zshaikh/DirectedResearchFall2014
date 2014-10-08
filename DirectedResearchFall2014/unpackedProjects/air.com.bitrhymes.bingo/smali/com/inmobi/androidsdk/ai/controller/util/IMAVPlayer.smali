.class public Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
.super Landroid/widget/VideoView;
.source "IMAVPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;,
        Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;
    }
.end annotation


# static fields
.field public static final MINIMAL_LAYOUT_PARAM:I = 0x1

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

.field private b:Landroid/media/AudioManager;

.field private c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/RelativeLayout;

.field private l:Z

.field private m:Z

.field private n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

.field private s:Landroid/media/MediaPlayer;

.field private t:Z

.field private u:Landroid/view/ViewGroup;

.field private v:Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

.field private w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "play"

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->f:Ljava/lang/String;

    .line 52
    const-string v0, "pause"

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->g:Ljava/lang/String;

    .line 53
    const-string v0, "ended"

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->h:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->i:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->j:I

    .line 61
    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->k:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->l:Z

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->m:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->q:I

    .line 584
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setZOrderOnTop(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    const-string v1, "audio"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    .line 114
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 115
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setFocusableInTouchMode(Z)V

    .line 118
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    .line 119
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->p:I

    .line 121
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 144
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 212
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 216
    :goto_1
    return-object v0

    .line 206
    :cond_0
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_1

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v2

    invoke-static {v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    aget-byte v3, v0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMAVPlayer Error convert"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setMediaController(Landroid/widget/MediaController;)V

    .line 166
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 168
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaErrorEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaTimeUpdateEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;II)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a(II)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaCloseEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 512
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)Z
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->l()Z

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->INIT:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 181
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e()V

    .line 183
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a()V

    .line 187
    invoke-virtual {p0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 188
    invoke-virtual {p0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    invoke-virtual {p0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 191
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->p:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaTrackingEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->SHOWING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_2

    .line 224
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->COMPLETED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    :goto_0
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 231
    :cond_0
    :goto_1
    return-void

    .line 224
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PAUSED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->INIT:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->mute()V

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->start()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->q:I

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMAVPlayer removeView Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 393
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    .line 394
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 398
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 399
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 406
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 408
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 409
    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->g()V

    return-void
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->q:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 417
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 419
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaVolumeChangeEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isMediaMuted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 523
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;->sendEmptyMessage(I)Z

    .line 528
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$a;->removeMessages(I)V

    .line 532
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PAUSED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->HIDDEN:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PLAYING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 636
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->p:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 637
    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 816
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 816
    goto :goto_0
.end method


# virtual methods
.method public getBackGroundLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->u:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->v:Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    return-object v0
.end method

.method public getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public getPropertyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    return-object v0
.end method

.method public getVolume()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 704
    const-class v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    monitor-enter v0

    .line 705
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    .line 704
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/2addr v0, v1

    return v0

    .line 704
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->pause()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->u:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 725
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->HIDDEN:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMAVPlayer hide exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isInlineVideo()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMediaMuted()Z
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mute()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->g()V

    .line 652
    :cond_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMAVPlayer mute exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const-string v2, "InMobiAndroidSDK_3.6.2"

    .line 255
    :try_start_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "AVPlayer-> onCompletion"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->COMPLETED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->m:Z

    .line 260
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->i()V

    .line 265
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->start()V

    .line 267
    :cond_0
    monitor-exit p0

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMAvplayer onCompletion exception "

    invoke-static {v2, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVPlayer-> Player error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->f()V

    .line 288
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 290
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;->onError(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    .line 294
    :cond_0
    sget v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->i:I

    .line 295
    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 296
    sget v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->j:I

    .line 298
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a(I)V

    .line 300
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const-string v3, "InMobiAndroidSDK_3.6.2"

    .line 306
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->s:Landroid/media/MediaPlayer;

    .line 312
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "AVPlayer-> onPrepared"

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->f()V

    .line 323
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;->onPrepared(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    .line 326
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->l:Z

    .line 327
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c()V

    .line 329
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMAvplayer onPrepared exception "

    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 804
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMAVPlayer onWindowVisibility exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PAUSED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 473
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 467
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PAUSED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 469
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->i()V

    .line 471
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "AVPlayer-> pause"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b()V

    .line 239
    return-void
.end method

.method public releasePlayer(Z)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 351
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$2;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$2;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    :cond_0
    monitor-enter p0

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    monitor-exit p0

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 370
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->q:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->q:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a(ZI)V

    .line 372
    iput v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->q:I

    .line 375
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->i()V

    .line 377
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->unMute()V

    .line 378
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->m()V

    .line 380
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->stopPlayback()V

    .line 381
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d()V

    .line 383
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;->onComplete(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1
.end method

.method public seekPlayer(I)V
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 747
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->seekTo(I)V

    .line 749
    :cond_0
    return-void
.end method

.method public setBackGroundLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->u:Landroid/view/ViewGroup;

    .line 758
    return-void
.end method

.method public setListener(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->c:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;

    .line 249
    return-void
.end method

.method public setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->a:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 155
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->d:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPlayDimensions(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->v:Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    .line 794
    return-void
.end method

.method public setVolume(I)V
    .locals 4

    .prologue
    .line 685
    const-class v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    monitor-enter v0

    .line 687
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b(I)I

    move-result v1

    .line 688
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    .line 685
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->o:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 691
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->unMute()V

    .line 695
    :goto_0
    return-void

    .line 685
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->g()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 735
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->SHOWING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 736
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 737
    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setVisibility(I)V

    .line 738
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->n:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$3;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$3;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PLAYING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 455
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    :cond_2
    :try_start_1
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 443
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PLAYING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->r:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->m:Z

    .line 446
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->h()V

    .line 448
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "AVPlayer-> start playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->l:Z

    if-eqz v0, :cond_1

    .line 452
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unMute()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->t:Z

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->s:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->g()V

    .line 667
    :cond_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMAVPlayer unmute exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
