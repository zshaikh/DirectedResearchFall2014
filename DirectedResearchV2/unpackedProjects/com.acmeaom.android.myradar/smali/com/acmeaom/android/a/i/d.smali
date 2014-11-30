.class public Lcom/acmeaom/android/a/i/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/i/d;

.field private static final b:Lcom/acmeaom/android/a/i/d;

.field private static final c:Lcom/acmeaom/android/a/i/d;


# instance fields
.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x3f333333

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 7
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    sput-object v0, Lcom/acmeaom/android/a/i/d;->a:Lcom/acmeaom/android/a/i/d;

    .line 8
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    sput-object v0, Lcom/acmeaom/android/a/i/d;->b:Lcom/acmeaom/android/a/i/d;

    .line 9
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    sput-object v0, Lcom/acmeaom/android/a/i/d;->c:Lcom/acmeaom/android/a/i/d;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/acmeaom/android/a/i/d;->d:F

    .line 15
    iput p2, p0, Lcom/acmeaom/android/a/i/d;->e:F

    .line 16
    iput p3, p0, Lcom/acmeaom/android/a/i/d;->f:F

    .line 17
    iput p4, p0, Lcom/acmeaom/android/a/i/d;->g:F

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/i/d;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget v0, p1, Lcom/acmeaom/android/a/i/d;->d:F

    iput v0, p0, Lcom/acmeaom/android/a/i/d;->d:F

    .line 22
    iget v0, p1, Lcom/acmeaom/android/a/i/d;->e:F

    iput v0, p0, Lcom/acmeaom/android/a/i/d;->e:F

    .line 23
    iget v0, p1, Lcom/acmeaom/android/a/i/d;->f:F

    iput v0, p0, Lcom/acmeaom/android/a/i/d;->f:F

    .line 24
    iget v0, p1, Lcom/acmeaom/android/a/i/d;->g:F

    iput v0, p0, Lcom/acmeaom/android/a/i/d;->g:F

    .line 25
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/i/d;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    sget-object v1, Lcom/acmeaom/android/a/i/d;->c:Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/i/d;-><init>(Lcom/acmeaom/android/a/i/d;)V

    return-object v0
.end method

.method public static a(FF)Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, p0, p0, p0, p1}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    return-object v0
.end method

.method public static a(FFFF)Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    return-object v0
.end method

.method public static b()Lcom/acmeaom/android/a/i/d;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    sget-object v1, Lcom/acmeaom/android/a/i/d;->a:Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/i/d;-><init>(Lcom/acmeaom/android/a/i/d;)V

    return-object v0
.end method

.method public static c()Lcom/acmeaom/android/a/i/d;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    sget-object v1, Lcom/acmeaom/android/a/i/d;->b:Lcom/acmeaom/android/a/i/d;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/i/d;-><init>(Lcom/acmeaom/android/a/i/d;)V

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/high16 v4, 0x437f0000

    .line 40
    iget v0, p0, Lcom/acmeaom/android/a/i/d;->d:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/acmeaom/android/a/i/d;->e:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 42
    iget v2, p0, Lcom/acmeaom/android/a/i/d;->f:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 43
    iget v3, p0, Lcom/acmeaom/android/a/i/d;->g:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 44
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public e()Lcom/acmeaom/android/a/a/c/b;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/acmeaom/android/a/a/c/b;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/a/c/b;-><init>(Lcom/acmeaom/android/a/i/d;)V

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 71
    return-void
.end method

.method public g()Lcom/acmeaom/android/a/i/d;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lcom/acmeaom/android/a/i/d;

    iget v1, p0, Lcom/acmeaom/android/a/i/d;->d:F

    iget v2, p0, Lcom/acmeaom/android/a/i/d;->e:F

    iget v3, p0, Lcom/acmeaom/android/a/i/d;->f:F

    iget v4, p0, Lcom/acmeaom/android/a/i/d;->g:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    return-object v0
.end method
