.class public Lcom/acmeaom/android/a/g/u;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/acmeaom/android/a/g/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/g/u;->a:Z

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/g/u;->b:Ljava/lang/ThreadLocal;

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFF)Lcom/acmeaom/android/a/a/a/b;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    .line 21
    iput p0, v0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 22
    iput p1, v0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 23
    iput p2, v0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 24
    return-object v0
.end method

.method public static a(FFFF)Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;FFFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;
    .locals 2

    .prologue
    .line 165
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 166
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v1

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/g/u;->a([F[F)Z

    move-result v1

    .line 167
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/acmeaom/android/a/a/a/b;->a([F)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;FFF)Lcom/acmeaom/android/a/a/a/b;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    .line 29
    iput p1, v0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 30
    iput p2, v0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 31
    iput p3, v0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 32
    invoke-static {v0, p0}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;FFFF)Lcom/acmeaom/android/a/a/a/b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 54
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
    invoke-static {p1}, Lcom/acmeaom/android/a/g/w;->b(F)F

    move-result v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 56
    invoke-static {v0}, Lcom/acmeaom/android/a/a/a/b;->a([F)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;
    .locals 4

    .prologue
    .line 81
    sget-boolean v0, Lcom/acmeaom/android/a/g/u;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    .line 84
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 86
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->b:F

    .line 88
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->c:F

    .line 90
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->d:F

    .line 93
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->e:F

    .line 95
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 97
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->g:F

    .line 99
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->h:F

    .line 102
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->i:F

    .line 104
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->j:F

    .line 106
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 108
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 111
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 113
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 115
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 117
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v3, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->p:F

    .line 120
    return-object v0
.end method

.method public static a(FFFLcom/acmeaom/android/a/a/a/b;)V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 75
    iput p0, p3, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 76
    iput p1, p3, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 77
    iput p2, p3, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 78
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;FFFLcom/acmeaom/android/a/a/a/b;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/acmeaom/android/a/g/u;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/acmeaom/android/a/g/u;->b:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v1}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/g/u;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {p1, p2, p3, v0}, Lcom/acmeaom/android/a/g/u;->a(FFFLcom/acmeaom/android/a/a/a/b;)V

    .line 48
    sget-object v0, Lcom/acmeaom/android/a/g/u;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p0, p4}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 49
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 3

    .prologue
    .line 125
    sget-boolean v0, Lcom/acmeaom/android/a/g/u;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_1
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 129
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->b:F

    .line 131
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->c:F

    .line 133
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->d:F

    .line 136
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->e:F

    .line 138
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 140
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->g:F

    .line 142
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->h:F

    .line 145
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->i:F

    .line 147
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->j:F

    .line 149
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 151
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 154
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 156
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 158
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 160
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v1, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/acmeaom/android/a/a/a/b;->p:F

    .line 162
    return-void
.end method

.method static a([F[F)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 175
    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p0, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p0, v4

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, p0, v4

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, p0, v4

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v0

    .line 177
    aget v3, p0, v9

    neg-float v3, v3

    const/16 v4, 0xa

    aget v4, p0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p0, v4

    mul-float/2addr v3, v4

    aget v4, p0, v9

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p0, v4

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p0, v4

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0xc

    aget v4, p0, v4

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0xc

    aget v4, p0, v4

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v9

    .line 179
    const/16 v3, 0x8

    aget v4, p0, v9

    const/16 v5, 0x9

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v9

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xf

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 181
    const/16 v3, 0xc

    aget v4, p0, v9

    neg-float v4, v4

    const/16 v5, 0x9

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v9

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 183
    aget v3, p0, v1

    neg-float v3, v3

    const/16 v4, 0xa

    aget v4, p0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p0, v4

    mul-float/2addr v3, v4

    aget v4, p0, v1

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    aget v5, p0, v7

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    aget v5, p0, v8

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, p0, v4

    aget v5, p0, v7

    mul-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, p0, v4

    aget v5, p0, v8

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 185
    const/4 v3, 0x5

    aget v4, p0, v0

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0xf

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 187
    const/16 v3, 0x9

    aget v4, p0, v0

    neg-float v4, v4

    const/16 v5, 0x9

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xf

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 189
    const/16 v3, 0xd

    aget v4, p0, v0

    const/16 v5, 0x9

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 191
    aget v3, p0, v1

    const/4 v4, 0x6

    aget v4, p0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p0, v4

    mul-float/2addr v3, v4

    aget v4, p0, v1

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p0, v4

    aget v5, p0, v7

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p0, v4

    aget v5, p0, v8

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, p0, v4

    aget v5, p0, v7

    mul-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, p0, v4

    aget v5, p0, v8

    mul-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v7

    .line 193
    const/4 v3, 0x6

    aget v4, p0, v0

    neg-float v4, v4

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0xf

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 195
    const/16 v3, 0xa

    aget v4, p0, v0

    const/4 v5, 0x5

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xf

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 197
    const/16 v3, 0xe

    aget v4, p0, v0

    neg-float v4, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xe

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 199
    aget v3, p0, v1

    neg-float v3, v3

    const/4 v4, 0x6

    aget v4, p0, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xb

    aget v4, p0, v4

    mul-float/2addr v3, v4

    aget v4, p0, v1

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p0, v4

    aget v5, p0, v7

    mul-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p0, v4

    aget v5, p0, v8

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    aget v5, p0, v7

    mul-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    aget v5, p0, v8

    mul-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v8

    .line 201
    const/4 v3, 0x7

    aget v4, p0, v0

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 203
    const/16 v3, 0xb

    aget v4, p0, v0

    neg-float v4, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xb

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v8

    mul-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 205
    const/16 v3, 0xf

    aget v4, p0, v0

    const/4 v5, 0x5

    aget v5, p0, v5

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aget v5, p0, v0

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v1

    mul-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, p0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    aget v6, p0, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 208
    aget v3, p0, v0

    aget v4, v2, v0

    mul-float/2addr v3, v4

    aget v4, p0, v1

    aget v5, v2, v9

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aget v4, p0, v7

    const/16 v5, 0x8

    aget v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aget v4, p0, v8

    const/16 v5, 0xc

    aget v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 210
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 220
    :goto_0
    return v0

    .line 214
    :cond_0
    const/high16 v4, 0x3f800000

    div-float v3, v4, v3

    .line 216
    :goto_1
    const/16 v4, 0x10

    if-ge v0, v4, :cond_1

    .line 217
    aget v4, v2, v0

    mul-float/2addr v4, v3

    aput v4, p1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method public static b(FFF)Lcom/acmeaom/android/a/a/a/b;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    .line 66
    iput p0, v0, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 67
    iput p1, v0, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 68
    iput p2, v0, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 69
    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/a/a/b;FFF)Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 38
    invoke-static {p1, p2, p3}, Lcom/acmeaom/android/a/g/u;->b(FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/a/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
