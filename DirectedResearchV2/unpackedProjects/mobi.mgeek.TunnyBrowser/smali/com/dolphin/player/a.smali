.class public Lcom/dolphin/player/a;
.super Ljava/lang/Object;
.source "CameraPlayer.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Lcom/dolphin/player/j;


# static fields
.field private static b:Lcom/dolphin/player/a;

.field private static c:Landroid/hardware/Camera$Size;


# instance fields
.field private a:I

.field private d:Lcom/dolphin/player/m;

.field private e:Lcom/dolphin/player/o;

.field private f:Lcom/dolphin/player/n;

.field private g:Z

.field private h:Landroid/hardware/Camera;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Landroid/view/SurfaceHolder;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/Context;

.field private m:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/player/a;->a:I

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/player/a;->g:Z

    .line 338
    const/16 v0, 0x5a

    iput v0, p0, Lcom/dolphin/player/a;->m:I

    .line 280
    iput-object p1, p0, Lcom/dolphin/player/a;->l:Landroid/content/Context;

    .line 281
    new-instance v0, Lcom/dolphin/player/b;

    invoke-direct {v0, p0}, Lcom/dolphin/player/b;-><init>(Lcom/dolphin/player/a;)V

    iput-object v0, p0, Lcom/dolphin/player/a;->k:Landroid/os/Handler;

    .line 298
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/player/a;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/dolphin/player/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/dolphin/player/a;

    invoke-direct {v0, p0}, Lcom/dolphin/player/a;-><init>(Landroid/content/Context;)V

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v0, "CameraPlayer"

    const-string v1, "Trying to create CameraPlayer while camera is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/player/a;)Lcom/dolphin/player/o;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/player/a;->e:Lcom/dolphin/player/o;

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/player/a;->b:Lcom/dolphin/player/a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Lcom/dolphin/player/a;->n()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 257
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 260
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/player/a;->c(I)I

    move-result v2

    .line 261
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 262
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 264
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/player/a;)Lcom/dolphin/player/n;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/player/a;->f:Lcom/dolphin/player/n;

    return-object v0
.end method

.method private static c(I)I
    .locals 1

    .prologue
    .line 301
    packed-switch p0, :pswitch_data_0

    .line 315
    const/4 v0, -0x1

    .line 318
    :goto_0
    return v0

    .line 303
    :pswitch_0
    const/4 v0, 0x0

    .line 304
    goto :goto_0

    .line 306
    :pswitch_1
    const/16 v0, -0x5a

    .line 307
    goto :goto_0

    .line 309
    :pswitch_2
    const/16 v0, 0xb4

    .line 310
    goto :goto_0

    .line 312
    :pswitch_3
    const/16 v0, 0x5a

    .line 313
    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Lcom/dolphin/player/a;->n()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 269
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 271
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/player/a;->c(I)I

    move-result v3

    .line 272
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 273
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 276
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static g()Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 136
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 138
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    .line 144
    :cond_0
    return-object v0

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static n()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/dolphin/player/a;->c:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/dolphin/player/a;->g()Landroid/hardware/Camera;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    sput-object v1, Lcom/dolphin/player/a;->c:Landroid/hardware/Camera$Size;

    .line 250
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 252
    :cond_0
    sget-object v0, Lcom/dolphin/player/a;->c:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method private p()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    sget-object v0, Lcom/dolphin/player/a;->b:Lcom/dolphin/player/a;

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Lcom/dolphin/player/a;->g()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    .line 153
    sget-object v0, Lcom/dolphin/player/a;->c:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    sput-object v0, Lcom/dolphin/player/a;->c:Landroid/hardware/Camera$Size;

    .line 156
    :cond_0
    sput-object p0, Lcom/dolphin/player/a;->b:Lcom/dolphin/player/a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 170
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 171
    iput-object v1, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/player/a;->g:Z

    .line 173
    sput-object v1, Lcom/dolphin/player/a;->b:Lcom/dolphin/player/a;

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "NewApi"
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/player/a;->p()Landroid/hardware/Camera;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/dolphin/player/a;->l:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 83
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/player/a;->c(I)I

    move-result v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 85
    iput v0, p0, Lcom/dolphin/player/a;->m:I

    .line 86
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 87
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 89
    iput-object p1, p0, Lcom/dolphin/player/a;->i:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/player/a;->p()Landroid/hardware/Camera;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 68
    iput-object p1, p0, Lcom/dolphin/player/a;->j:Landroid/view/SurfaceHolder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/player/k;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public a(Lcom/dolphin/player/l;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public a(Lcom/dolphin/player/m;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dolphin/player/a;->d:Lcom/dolphin/player/m;

    .line 47
    return-void
.end method

.method public a(Lcom/dolphin/player/n;)V
    .locals 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/player/a;->f:Lcom/dolphin/player/n;

    .line 51
    iget-object v0, p0, Lcom/dolphin/player/a;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 52
    iget-object v0, p0, Lcom/dolphin/player/a;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    return-void
.end method

.method public a(Lcom/dolphin/player/o;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dolphin/player/a;->e:Lcom/dolphin/player/o;

    .line 39
    iget-object v0, p0, Lcom/dolphin/player/a;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void
.end method

.method public a(Lcom/dolphin/player/p;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/dolphin/player/a;->p()Landroid/hardware/Camera;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-static {p1}, Lcom/dolphin/player/a;->c(I)I

    move-result v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 242
    iput v1, p0, Lcom/dolphin/player/a;->m:I

    .line 244
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/dolphin/player/a;->g:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    move v0, v1

    .line 105
    :goto_1
    invoke-direct {p0}, Lcom/dolphin/player/a;->p()Landroid/hardware/Camera;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/dolphin/player/a;->j:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/dolphin/player/a;->j:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/dolphin/player/a;->a(Landroid/view/SurfaceHolder;)V

    .line 115
    :cond_2
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 116
    iput-boolean v1, p0, Lcom/dolphin/player/a;->g:Z

    goto :goto_0

    .line 104
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/dolphin/player/a;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/dolphin/player/a;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/dolphin/player/a;->a(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2
.end method

.method public d()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/dolphin/player/a;->q()V

    .line 123
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/dolphin/player/a;->q()V

    .line 127
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/dolphin/player/a;->q()V

    .line 178
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/dolphin/player/a;->g:Z

    return v0
.end method

.method public l()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 198
    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget v0, p0, Lcom/dolphin/player/a;->m:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public m()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/dolphin/player/a;->h:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 209
    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    iget v0, p0, Lcom/dolphin/player/a;->m:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/dolphin/player/a;->a:I

    return v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/player/a;->d:Lcom/dolphin/player/m;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dolphin/player/a;->d:Lcom/dolphin/player/m;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/dolphin/player/m;->a(Lcom/dolphin/player/j;II)Z

    .line 235
    :cond_0
    return-void
.end method
