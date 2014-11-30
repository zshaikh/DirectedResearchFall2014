.class Ldolphin/webkit/ch;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ca;)V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0}, Ldolphin/webkit/ch;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1175
    iget-boolean v0, p0, Ldolphin/webkit/ch;->a:Z

    if-nez v0, :cond_1

    .line 1176
    const-string v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/ch;->b:I

    .line 1179
    iget v0, p0, Ldolphin/webkit/ch;->b:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1180
    iput-boolean v2, p0, Ldolphin/webkit/ch;->d:Z

    .line 1182
    :cond_0
    iput-boolean v2, p0, Ldolphin/webkit/ch;->a:Z

    .line 1184
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1161
    iget-boolean v0, p0, Ldolphin/webkit/ch;->c:Z

    if-nez v0, :cond_3

    .line 1162
    invoke-direct {p0}, Ldolphin/webkit/ch;->c()V

    .line 1163
    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 1164
    iget v0, p0, Ldolphin/webkit/ch;->b:I

    const/high16 v4, 0x20000

    if-ge v0, v4, :cond_0

    .line 1165
    const-string v0, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldolphin/webkit/ch;->d:Z

    .line 1167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1169
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/ch;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "Adreno"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Ldolphin/webkit/ch;->e:Z

    .line 1170
    iput-boolean v1, p0, Ldolphin/webkit/ch;->c:Z

    .line 1172
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1165
    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1148
    invoke-direct {p0}, Ldolphin/webkit/ch;->c()V

    .line 1152
    iget-boolean v0, p0, Ldolphin/webkit/ch;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1156
    invoke-direct {p0}, Ldolphin/webkit/ch;->c()V

    .line 1157
    iget-boolean v0, p0, Ldolphin/webkit/ch;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
