.class Ldolphin/webkit/ck;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/GLSurfaceView;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljavax/microedition/khronos/opengles/GL10;

.field private i:Ldolphin/webkit/cm;

.field private j:Ldolphin/webkit/cj;


# direct methods
.method constructor <init>(Ldolphin/webkit/GLSurfaceView;Ldolphin/webkit/cm;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 966
    iput-object p1, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    .line 1103
    new-instance v0, Ldolphin/webkit/cj;

    iget-object v1, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    invoke-direct {v0, v1}, Ldolphin/webkit/cj;-><init>(Ldolphin/webkit/GLSurfaceView;)V

    iput-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    .line 967
    iput v2, p0, Ldolphin/webkit/ck;->f:I

    .line 968
    iput v2, p0, Ldolphin/webkit/ck;->g:I

    .line 969
    iput-object p2, p0, Ldolphin/webkit/ck;->i:Ldolphin/webkit/cm;

    .line 970
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ck;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Ldolphin/webkit/ck;->h()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Ldolphin/webkit/ck;->e:Z

    if-eqz v0, :cond_0

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ck;->e:Z

    .line 979
    iget-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    invoke-virtual {v0}, Ldolphin/webkit/cj;->d()V

    .line 981
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Ldolphin/webkit/ck;->d:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    invoke-virtual {v0}, Ldolphin/webkit/cj;->e()V

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ck;->d:Z

    .line 992
    :cond_0
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Ldolphin/webkit/ck;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/ck;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldolphin/webkit/ck;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Ldolphin/webkit/ck;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 996
    iget-boolean v0, p0, Ldolphin/webkit/ck;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/ck;->e:Z

    if-eqz v0, :cond_0

    .line 997
    invoke-direct {p0}, Ldolphin/webkit/ck;->g()V

    .line 1001
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/ck;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    iget-boolean v0, p0, Ldolphin/webkit/ck;->d:Z

    if-nez v0, :cond_1

    .line 1005
    iget-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    invoke-virtual {v0}, Ldolphin/webkit/cj;->a()V

    .line 1006
    iput-boolean v2, p0, Ldolphin/webkit/ck;->d:Z

    .line 1009
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/ck;->e:Z

    if-nez v0, :cond_4

    .line 1010
    iget-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    iget-object v1, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    invoke-virtual {v1}, Ldolphin/webkit/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/cj;->a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    .line 1011
    iget-object v0, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v0, :cond_3

    .line 1033
    :cond_2
    :goto_0
    return-void

    .line 1015
    :cond_3
    # getter for: Ldolphin/webkit/GLSurfaceView;->sEGLProviderInfo:Ldolphin/webkit/ch;
    invoke-static {}, Ldolphin/webkit/GLSurfaceView;->access$800()Ldolphin/webkit/ch;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Ldolphin/webkit/ch;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1016
    iput-boolean v2, p0, Ldolphin/webkit/ck;->e:Z

    .line 1017
    iget-object v0, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    # setter for: Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v0, v2}, Ldolphin/webkit/GLSurfaceView;->access$902(Ldolphin/webkit/GLSurfaceView;Z)Z

    .line 1018
    iget-object v0, p0, Ldolphin/webkit/ck;->i:Ldolphin/webkit/cm;

    iget-object v1, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    iget-object v2, v2, Ldolphin/webkit/cj;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Ldolphin/webkit/cm;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1021
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$900(Ldolphin/webkit/GLSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1022
    iget-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    invoke-virtual {v0}, Ldolphin/webkit/cj;->b()V

    .line 1023
    iget-object v0, p0, Ldolphin/webkit/ck;->i:Ldolphin/webkit/cm;

    iget-object v1, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Ldolphin/webkit/ck;->f:I

    iget v3, p0, Ldolphin/webkit/ck;->g:I

    invoke-interface {v0, v1, v2, v3}, Ldolphin/webkit/cm;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1024
    iget-object v0, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    const/4 v1, 0x0

    # setter for: Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v0, v1}, Ldolphin/webkit/GLSurfaceView;->access$902(Ldolphin/webkit/GLSurfaceView;Z)Z

    .line 1027
    :cond_5
    iget-object v0, p0, Ldolphin/webkit/ck;->i:Ldolphin/webkit/cm;

    iget-object v1, p0, Ldolphin/webkit/ck;->h:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ldolphin/webkit/cm;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1028
    iget-object v0, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    invoke-virtual {v0}, Ldolphin/webkit/cj;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1029
    invoke-direct {p0}, Ldolphin/webkit/ck;->g()V

    .line 1030
    invoke-direct {p0}, Ldolphin/webkit/ck;->h()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 1085
    iput p1, p0, Ldolphin/webkit/ck;->f:I

    .line 1086
    iput p2, p0, Ldolphin/webkit/ck;->g:I

    .line 1087
    iget-object v0, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    const/4 v1, 0x1

    # setter for: Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v0, v1}, Ldolphin/webkit/GLSurfaceView;->access$902(Ldolphin/webkit/GLSurfaceView;Z)Z

    .line 1090
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Ldolphin/webkit/ck;->a:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$1000(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/ck;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ck;->a()V

    .line 1046
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1049
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/ck;->c:Z

    .line 1052
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1055
    invoke-direct {p0}, Ldolphin/webkit/ck;->g()V

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ck;->c:Z

    .line 1057
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1062
    iget-boolean v1, p0, Ldolphin/webkit/ck;->e:Z

    if-eqz v1, :cond_0

    .line 1063
    invoke-direct {p0}, Ldolphin/webkit/ck;->g()V

    .line 1066
    :cond_0
    iput-boolean v0, p0, Ldolphin/webkit/ck;->b:Z

    .line 1067
    # getter for: Ldolphin/webkit/GLSurfaceView;->sEGLProviderInfo:Ldolphin/webkit/ch;
    invoke-static {}, Ldolphin/webkit/GLSurfaceView;->access$800()Ldolphin/webkit/ch;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ch;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    invoke-direct {p0}, Ldolphin/webkit/ck;->h()V

    .line 1076
    :goto_0
    return v0

    .line 1071
    :cond_1
    # getter for: Ldolphin/webkit/GLSurfaceView;->sEGLProviderInfo:Ldolphin/webkit/ch;
    invoke-static {}, Ldolphin/webkit/GLSurfaceView;->access$800()Ldolphin/webkit/ch;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ch;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1072
    iget-object v1, p0, Ldolphin/webkit/ck;->j:Ldolphin/webkit/cj;

    invoke-virtual {v1}, Ldolphin/webkit/cj;->e()V

    goto :goto_0

    .line 1076
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ck;->b:Z

    .line 1082
    return-void
.end method
