.class public Lcom/acmeaom/android/c/g/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/c/g/a/a;


# static fields
.field private static final a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field private b:Lcom/acmeaom/android/a/a/b/aj;

.field private final c:Lcom/acmeaom/android/a/a/c/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x3f91111120000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/c/g/a/b;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/acmeaom/android/c/g/a/b;->a:Lcom/acmeaom/android/a/a/b/aj;

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    .line 28
    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a/b;->c:Lcom/acmeaom/android/a/a/c/l;

    .line 29
    return-void
.end method

.method public static a()Lcom/acmeaom/android/c/g/a/b;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/acmeaom/android/c/g/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/c/g/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/a/b;
    .locals 5

    .prologue
    .line 32
    iget-wide v0, p1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    iget-object v2, p0, Lcom/acmeaom/android/c/g/a/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v2, Lcom/acmeaom/android/a/a/b/aj;->b:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->a(D)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 34
    const-wide/high16 v1, 0x3fe0000000000000L

    float-to-double v3, v0

    sub-double v0, v1, v3

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 35
    iget-object v1, p0, Lcom/acmeaom/android/c/g/a/b;->c:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/c/g/a/b;->c:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    const/high16 v3, 0x3f800000

    invoke-static {v0, v1, v2, v3}, Lcom/acmeaom/android/a/g/u;->a(FFFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {v0, p1, p2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/a/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    .line 52
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/c/g/a/b;->c:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 60
    return-void
.end method
