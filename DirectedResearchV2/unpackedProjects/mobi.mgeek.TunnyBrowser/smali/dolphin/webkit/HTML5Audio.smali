.class Ldolphin/webkit/HTML5Audio;
.super Ldolphin/util/j;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static b:Z

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private c:Ldolphin/webkit/cu;

.field private l:I

.field private m:Ljava/lang/String;

.field private mNativePointer:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Ldolphin/webkit/HTML5Audio;->b:Z

    .line 62
    sput v0, Ldolphin/webkit/HTML5Audio;->d:I

    .line 63
    const/4 v0, 0x1

    sput v0, Ldolphin/webkit/HTML5Audio;->e:I

    .line 64
    const/4 v0, 0x2

    sput v0, Ldolphin/webkit/HTML5Audio;->f:I

    .line 65
    const/4 v0, 0x4

    sput v0, Ldolphin/webkit/HTML5Audio;->g:I

    .line 66
    const/4 v0, 0x5

    sput v0, Ldolphin/webkit/HTML5Audio;->h:I

    .line 67
    const/4 v0, 0x6

    sput v0, Ldolphin/webkit/HTML5Audio;->i:I

    .line 68
    const/4 v0, -0x2

    sput v0, Ldolphin/webkit/HTML5Audio;->j:I

    .line 69
    const/4 v0, -0x1

    sput v0, Ldolphin/webkit/HTML5Audio;->k:I

    return-void
.end method

.method public constructor <init>(Ldolphin/webkit/WebViewCore;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 71
    sget v0, Ldolphin/webkit/HTML5Audio;->d:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 74
    iput-boolean v1, p0, Ldolphin/webkit/HTML5Audio;->n:Z

    .line 75
    iput-boolean v1, p0, Ldolphin/webkit/HTML5Audio;->o:Z

    .line 76
    iput-boolean v1, p0, Ldolphin/webkit/HTML5Audio;->p:Z

    .line 195
    iput p2, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    .line 196
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    .line 197
    invoke-virtual {p1}, Ldolphin/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/HTML5Audio;->q:Landroid/content/Context;

    .line 198
    new-instance v0, Ldolphin/webkit/cu;

    invoke-virtual {p1}, Ldolphin/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1}, Ldolphin/webkit/WebViewCore;->getWebViewClassic()Ldolphin/webkit/WebViewClassic;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldolphin/webkit/cu;-><init>(Ldolphin/webkit/HTML5Audio;Landroid/os/Looper;Ldolphin/webkit/WebViewClassic;)V

    iput-object v0, p0, Ldolphin/webkit/HTML5Audio;->c:Ldolphin/webkit/cu;

    .line 200
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    .line 208
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 209
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 210
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 211
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 212
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 214
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 217
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    .line 218
    sget v0, Ldolphin/webkit/HTML5Audio;->d:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 219
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private getMaxTimeSeekable()F
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 366
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->f:I

    if-lt v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnBuffering(II)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRequestPlay(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private pause()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 333
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->g:I

    if-ne v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 337
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 338
    sget v0, Ldolphin/webkit/HTML5Audio;->i:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 340
    :cond_1
    return-void
.end method

.method private play()V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 301
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->h:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ldolphin/webkit/HTML5Audio;->o:Z

    if-ne v0, v2, :cond_1

    .line 303
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 304
    sget v0, Ldolphin/webkit/HTML5Audio;->g:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->k:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->f:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    .line 310
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldolphin/webkit/HTML5Audio;->setDataSource(Ljava/lang/String;)V

    .line 311
    iput-boolean v2, p0, Ldolphin/webkit/HTML5Audio;->n:Z

    .line 314
    :cond_2
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->f:I

    if-lt v0, v1, :cond_0

    .line 315
    sget-boolean v0, Ldolphin/webkit/HTML5Audio;->b:Z

    if-nez v0, :cond_3

    .line 316
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->q:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 317
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 319
    if-ne v0, v2, :cond_0

    .line 320
    sput-boolean v2, Ldolphin/webkit/HTML5Audio;->b:Z

    .line 321
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 322
    sget v0, Ldolphin/webkit/HTML5Audio;->g:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 326
    sget v0, Ldolphin/webkit/HTML5Audio;->g:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    goto :goto_0
.end method

.method private seek(I)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 344
    iget-boolean v0, p0, Ldolphin/webkit/HTML5Audio;->p:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->h:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 345
    iput-boolean v2, p0, Ldolphin/webkit/HTML5Audio;->o:Z

    .line 347
    :cond_0
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->f:I

    if-lt v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 350
    :cond_1
    return-void
.end method

.method private setDataSource(Ljava/lang/String;)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x80

    .line 224
    iput-object p1, p0, Ldolphin/webkit/HTML5Audio;->m:Ljava/lang/String;

    .line 226
    :try_start_0
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->d:I

    if-eq v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    .line 229
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/HTML5Audio;->c:Ldolphin/webkit/cu;

    invoke-virtual {v1}, Ldolphin/webkit/cu;->a()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    if-eqz v0, :cond_1

    .line 235
    const-string v2, "Cookie"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->c:Ldolphin/webkit/cu;

    invoke-virtual {v0}, Ldolphin/webkit/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const-string v0, "x-hide-urls-from-log"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    :goto_0
    sget v0, Ldolphin/webkit/HTML5Audio;->e:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 250
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 260
    :goto_1
    return-void

    .line 243
    :cond_3
    const-string v0, "file:///data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    iget-object v1, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Ldolphin/webkit/HTML5Audio;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    :cond_4
    const-string v1, "HTML5Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t load the resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    goto :goto_1

    .line 248
    :cond_5
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_6
    const-string v1, "HTML5Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t load the resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    goto/16 :goto_1
.end method

.method private teardown()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    .line 360
    sget v0, Ldolphin/webkit/HTML5Audio;->k:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    :try_start_0
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 132
    iget v1, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/HTML5Audio;->nativeOnTimeupdate(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget v0, Ldolphin/webkit/HTML5Audio;->k:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 266
    :pswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/webkit/HTML5Audio;->b:Z

    .line 268
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    goto :goto_0

    .line 270
    :cond_1
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 272
    sget v0, Ldolphin/webkit/HTML5Audio;->g:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    goto :goto_0

    .line 278
    :pswitch_2
    sput-boolean v0, Ldolphin/webkit/HTML5Audio;->b:Z

    .line 279
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 281
    sget v0, Ldolphin/webkit/HTML5Audio;->j:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    goto :goto_0

    .line 292
    :pswitch_3
    sput-boolean v0, Ldolphin/webkit/HTML5Audio;->b:Z

    .line 293
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    sget v1, Ldolphin/webkit/HTML5Audio;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->pause()V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, p2, v0}, Ldolphin/webkit/HTML5Audio;->nativeOnBuffering(II)V

    .line 148
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    sget v0, Ldolphin/webkit/HTML5Audio;->h:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 153
    iput-boolean v2, p0, Ldolphin/webkit/HTML5Audio;->p:Z

    .line 154
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Ldolphin/webkit/HTML5Audio;->nativeOnEnded(I)V

    .line 155
    iput-boolean v1, p0, Ldolphin/webkit/HTML5Audio;->p:Z

    .line 156
    iget-boolean v0, p0, Ldolphin/webkit/HTML5Audio;->o:Z

    if-ne v0, v2, :cond_0

    .line 157
    iget v0, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Ldolphin/webkit/HTML5Audio;->nativeOnRequestPlay(I)V

    .line 158
    iput-boolean v1, p0, Ldolphin/webkit/HTML5Audio;->o:Z

    .line 160
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 164
    sget v0, Ldolphin/webkit/HTML5Audio;->k:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 165
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->a()V

    .line 166
    sget v0, Ldolphin/webkit/HTML5Audio;->d:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v6, 0x0

    .line 172
    sget v0, Ldolphin/webkit/HTML5Audio;->f:I

    iput v0, p0, Ldolphin/webkit/HTML5Audio;->l:I

    .line 173
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ldolphin/webkit/HTML5Audio;->r:Ljava/util/Timer;

    new-instance v1, Ldolphin/webkit/cw;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Ldolphin/webkit/cw;-><init>(Ldolphin/webkit/HTML5Audio;Ldolphin/webkit/ct;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget v1, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v6, v6, v1}, Ldolphin/webkit/HTML5Audio;->nativeOnPrepared(IIII)V

    .line 178
    iget-boolean v0, p0, Ldolphin/webkit/HTML5Audio;->n:Z

    if-eqz v0, :cond_1

    .line 179
    iput-boolean v6, p0, Ldolphin/webkit/HTML5Audio;->n:Z

    .line 180
    invoke-direct {p0}, Ldolphin/webkit/HTML5Audio;->play()V

    .line 182
    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Ldolphin/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/HTML5Audio;->nativeOnTimeupdate(II)V

    .line 187
    return-void
.end method
