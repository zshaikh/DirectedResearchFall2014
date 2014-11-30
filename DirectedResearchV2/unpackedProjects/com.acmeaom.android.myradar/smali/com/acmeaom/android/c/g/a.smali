.class public abstract Lcom/acmeaom/android/c/g/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static g:Ljava/lang/ref/WeakReference;


# instance fields
.field public final a:Lcom/acmeaom/android/c/g/b/d;

.field public final b:Lcom/acmeaom/android/c/g/b/f;

.field public final c:Lcom/acmeaom/android/c/g/b/g;

.field public final d:Lcom/acmeaom/android/c/g/b/g;

.field public final e:Lcom/acmeaom/android/c/g/b/g;

.field public final f:Lcom/acmeaom/android/c/g/b/c;

.field private final h:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/acmeaom/android/c/g/b/d;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/b/d;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->a:Lcom/acmeaom/android/c/g/b/d;

    .line 58
    new-instance v0, Lcom/acmeaom/android/c/g/b/f;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/b/f;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->b:Lcom/acmeaom/android/c/g/b/f;

    .line 59
    new-instance v0, Lcom/acmeaom/android/c/g/b/g;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/b/g;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->c:Lcom/acmeaom/android/c/g/b/g;

    .line 60
    new-instance v0, Lcom/acmeaom/android/c/g/b/b;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/b/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->d:Lcom/acmeaom/android/c/g/b/g;

    .line 61
    new-instance v0, Lcom/acmeaom/android/c/g/b/a;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/b/a;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->e:Lcom/acmeaom/android/c/g/b/g;

    .line 66
    new-instance v0, Lcom/acmeaom/android/c/g/b/c;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/b/c;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a;->h:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/c/b;)I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xde1

    .line 108
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 110
    if-nez p0, :cond_0

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/acmeaom/android/a/a/c/d;->c(Lcom/acmeaom/android/a/a/c/d;)I

    .line 115
    invoke-static {p0}, Lcom/acmeaom/android/a/a/c/d;->d(Lcom/acmeaom/android/a/a/c/d;)I

    .line 120
    const/16 v0, 0xcf5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 123
    new-array v0, v2, [I

    .line 124
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 125
    aget v2, v0, v1

    .line 127
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 129
    sget-object v0, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    if-ne p1, v0, :cond_1

    .line 130
    const/16 v0, 0x2600

    .line 134
    :goto_1
    const/16 v3, 0x2800

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 135
    const/16 v3, 0x2801

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 136
    const/16 v0, 0x2802

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 137
    const/16 v0, 0x2803

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 139
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-static {v4, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 143
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    move v0, v2

    .line 144
    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x2601

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const v5, 0x8b81

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 84
    new-array v1, v4, [I

    .line 86
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 87
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 88
    invoke-static {v0, v5, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 89
    aget v2, v1, v3

    .line 91
    if-nez v2, :cond_0

    .line 92
    invoke-static {v0, v5, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 93
    aget v1, v1, v3

    .line 94
    if-nez v1, :cond_0

    .line 95
    const-string v1, "Error in shader: %s, message: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    return v0
.end method

.method protected static a(Lcom/acmeaom/android/c/a;Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v4

    .line 154
    :goto_0
    if-ge v3, v2, :cond_1

    .line 156
    add-int v0, v3, v2

    div-int/lit8 v1, v0, 0x2

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 159
    invoke-interface {v0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v0

    invoke-interface {p0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v5

    if-gt v0, v5, :cond_0

    move v0, v1

    move v1, v3

    :goto_1
    move v2, v0

    move v3, v1

    .line 164
    goto :goto_0

    .line 162
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 165
    :cond_1
    invoke-interface {p1, v3, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    if-lez v3, :cond_5

    .line 170
    add-int/lit8 v0, v3, -0x1

    .line 173
    :goto_2
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 174
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 177
    :goto_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/c/a;

    .line 179
    invoke-interface {v0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v2

    invoke-interface {p0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-interface {p0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v2

    invoke-interface {v1}, Lcom/acmeaom/android/c/a;->e()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 180
    :cond_2
    const-string v2, "inserted graphic in wrong order, prev.weight == %d, graphic.weight == %d, next.weight == %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {p0}, Lcom/acmeaom/android/c/a;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-interface {v1}, Lcom/acmeaom/android/c/a;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private a(I)Z
    .locals 3

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 233
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 234
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->h:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 235
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    const-string v0, "weak reference missing"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sprite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/a;

    iget-object v0, v0, Lcom/acmeaom/android/c/g/a;->a:Lcom/acmeaom/android/c/g/b/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/d;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/a;

    iget-object v0, v0, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/c;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/a;

    iget-object v0, v0, Lcom/acmeaom/android/c/g/a;->b:Lcom/acmeaom/android/c/g/b/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/f;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/a;

    iget-object v0, v0, Lcom/acmeaom/android/c/g/a;->c:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/a;

    iget-object v0, v0, Lcom/acmeaom/android/c/g/a;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/c;->a()V

    .line 71
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->a:Lcom/acmeaom/android/c/g/b/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/d;->a()V

    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->c:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->b()V

    .line 73
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->d:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->b()V

    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->e:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->b()V

    .line 75
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->b:Lcom/acmeaom/android/c/g/b/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/f;->a()V

    .line 76
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->h:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/acmeaom/android/c/g/a;->g:Ljava/lang/ref/WeakReference;

    .line 78
    const-string v0, "base renderer initialized"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public b()Lcom/acmeaom/android/c/g/b/c;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/c;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/c;->c()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    return-object v0
.end method

.method public c()Lcom/acmeaom/android/c/g/b/d;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->a:Lcom/acmeaom/android/c/g/b/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/d;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->a:Lcom/acmeaom/android/c/g/b/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/d;->c()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->a:Lcom/acmeaom/android/c/g/b/d;

    return-object v0
.end method

.method public e()Lcom/acmeaom/android/c/g/b/g;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->c:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->c:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->f()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->c:Lcom/acmeaom/android/c/g/b/g;

    return-object v0
.end method

.method public g()Lcom/acmeaom/android/c/g/b/g;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->d:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->d:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->f()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->d:Lcom/acmeaom/android/c/g/b/g;

    return-object v0
.end method

.method public h()Lcom/acmeaom/android/c/g/b/g;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->e:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->e:Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/g;->f()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->e:Lcom/acmeaom/android/c/g/b/g;

    return-object v0
.end method

.method public i()Lcom/acmeaom/android/c/g/b/f;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->b:Lcom/acmeaom/android/c/g/b/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/f;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->b:Lcom/acmeaom/android/c/g/b/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/f;->c()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a;->b:Lcom/acmeaom/android/c/g/b/f;

    return-object v0
.end method
