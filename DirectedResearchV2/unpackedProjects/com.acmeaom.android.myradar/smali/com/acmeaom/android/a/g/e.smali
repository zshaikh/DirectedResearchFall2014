.class public Lcom/acmeaom/android/a/g/e;
.super Lcom/acmeaom/android/a/g/v;
.source "ProGuard"


# static fields
.field private static final c:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Lcom/acmeaom/android/a/a/b/ae;

.field private f:Lcom/android/a/a/n;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/acmeaom/android/a/g/e;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/acmeaom/android/a/g/v;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/acmeaom/android/a/g/e;->d:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/acmeaom/android/a/g/e;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/a/g/e;)Lcom/acmeaom/android/a/a/b/ae;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/a/g/e;->e:Lcom/acmeaom/android/a/a/b/ae;

    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/acmeaom/android/a/g/e;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/acmeaom/android/a/g/e;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/acmeaom/android/a/g/e;->f:Lcom/android/a/a/n;

    invoke-virtual {v0}, Lcom/android/a/a/n;->i()V

    .line 64
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/b/ae;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/acmeaom/android/a/g/e;->e:Lcom/acmeaom/android/a/a/b/ae;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/acmeaom/android/a/g/i;Ljava/lang/Object;Lcom/acmeaom/android/a/g/k;ZZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 77
    iput-boolean p5, p0, Lcom/acmeaom/android/a/g/e;->h:Z

    .line 78
    if-eqz p6, :cond_1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 79
    :goto_0
    new-instance v0, Lcom/acmeaom/android/a/g/j;

    new-instance v3, Lcom/acmeaom/android/a/g/f;

    invoke-direct {v3, p0, p2}, Lcom/acmeaom/android/a/g/f;-><init>(Lcom/acmeaom/android/a/g/e;Lcom/acmeaom/android/a/g/i;)V

    new-instance v7, Lcom/acmeaom/android/a/g/h;

    invoke-direct {v7, p0}, Lcom/acmeaom/android/a/g/h;-><init>(Lcom/acmeaom/android/a/g/e;)V

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/a/g/j;-><init>(Lcom/acmeaom/android/a/g/e;Ljava/lang/String;Lcom/android/a/v;IILandroid/graphics/Bitmap$Config;Lcom/android/a/u;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/e;->f:Lcom/android/a/a/n;

    .line 97
    iget-boolean v0, p0, Lcom/acmeaom/android/a/g/e;->g:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/acmeaom/android/a/g/e;->f:Lcom/android/a/a/n;

    invoke-virtual {v0, v4}, Lcom/android/a/a/n;->a(Z)Lcom/android/a/p;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/g/e;->f:Lcom/android/a/a/n;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/e;->a(Lcom/android/a/p;)V

    .line 102
    invoke-interface {p4, p0}, Lcom/acmeaom/android/a/g/k;->a(Lcom/acmeaom/android/a/g/e;)V

    .line 103
    return-void

    .line 78
    :cond_1
    sget-object v6, Lcom/acmeaom/android/a/g/e;->c:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/acmeaom/android/a/g/e;->g:Z

    .line 68
    return-void
.end method
