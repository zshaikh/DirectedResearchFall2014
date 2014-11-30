.class public Ldolphin/webkit/dq;
.super Ldolphin/webkit/dr;
.source "HTML5VideoInline.java"


# static fields
.field private static a:Ldolphin/webkit/JSurfaceTexture;

.field private static b:[I

.field private static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    .line 26
    sput-object v0, Ldolphin/webkit/dq;->b:[I

    .line 29
    const/4 v0, -0x1

    sput v0, Ldolphin/webkit/dq;->l:I

    return-void
.end method

.method constructor <init>(IILcom/dolphin/player/aj;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ldolphin/webkit/dr;-><init>()V

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Ldolphin/webkit/dq;->a(IILcom/dolphin/player/aj;)V

    .line 42
    return-void
.end method

.method public static a(I)Ldolphin/webkit/JSurfaceTexture;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    sget v0, Ldolphin/webkit/dq;->l:I

    if-ne p0, v0, :cond_0

    sget-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dq;->b:[I

    if-nez v0, :cond_1

    .line 80
    :cond_0
    new-array v0, v2, [I

    sput-object v0, Ldolphin/webkit/dq;->b:[I

    .line 81
    sget-object v0, Ldolphin/webkit/dq;->b:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 82
    sget-object v0, Ldolphin/webkit/dq;->b:[I

    aget v0, v0, v1

    invoke-static {v0}, Ldolphin/webkit/JSurfaceTexture;->a(I)Ldolphin/webkit/JSurfaceTexture;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    .line 84
    :cond_1
    sput p0, Ldolphin/webkit/dq;->l:I

    .line 85
    sget-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    return-object v0
.end method

.method private a(Ldolphin/webkit/eg;)V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    invoke-virtual {v0, p1}, Ldolphin/webkit/JSurfaceTexture;->a(Ldolphin/webkit/eg;)V

    .line 117
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    invoke-virtual {v0}, Ldolphin/webkit/JSurfaceTexture;->release()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    .line 102
    const/4 v0, -0x1

    sput v0, Ldolphin/webkit/dq;->l:I

    .line 103
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/dq;->o()I

    move-result v0

    invoke-static {v0}, Ldolphin/webkit/dq;->a(I)Ldolphin/webkit/JSurfaceTexture;

    move-result-object v0

    .line 47
    sget-object v1, Ldolphin/webkit/dq;->f:Lcom/dolphin/player/aj;

    iget-object v0, v0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Lcom/dolphin/player/aj;->a(Landroid/graphics/SurfaceTexture;)V

    .line 48
    return-void
.end method

.method public a(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Ldolphin/webkit/dr;->a(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 55
    invoke-direct {p0, p1}, Ldolphin/webkit/dq;->a(Ldolphin/webkit/eg;)V

    .line 58
    iget-object v0, p0, Ldolphin/webkit/dq;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Ldolphin/webkit/dq;->f:Lcom/dolphin/player/aj;

    invoke-virtual {p1}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/player/aj;->a(Landroid/content/Context;I)V

    .line 62
    :cond_0
    return-void
.end method

.method public b(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Ldolphin/webkit/dr;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 68
    return-void
.end method

.method public i()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    sget-object v1, Ldolphin/webkit/dq;->b:[I

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Ldolphin/webkit/dq;->b:[I

    aget v0, v1, v0

    .line 111
    :cond_0
    return v0
.end method

.method public q_()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Ldolphin/webkit/dq;->a:Ldolphin/webkit/JSurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r_()V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Ldolphin/webkit/dq;->h()V

    .line 95
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Ldolphin/webkit/dq;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0}, Ldolphin/webkit/dr;->start()V

    .line 37
    :cond_0
    return-void
.end method
