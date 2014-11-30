.class public Lcom/acmeaom/android/b/c/h/a;
.super Lcom/acmeaom/android/b/c/h/k;
.source "ProGuard"


# static fields
.field private static b:Lcom/acmeaom/android/a/a/b/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4072c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/h/a;->b:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\^i"

    invoke-static {p3}, Lcom/acmeaom/android/b/c/h/a;->a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/acmeaom/android/b/c/h/k;-><init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V

    .line 20
    return-void
.end method

.method private static a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide/high16 v1, 0x404e000000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 24
    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide/high16 v4, -0x3fec000000000000L

    mul-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 26
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->c()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    iget-wide v2, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    sget-object v0, Lcom/acmeaom/android/b/c/h/a;->b:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v4, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    add-double/2addr v2, v4

    iget-wide v0, v1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    div-double v0, v2, v0

    double-to-int v0, v0

    .line 30
    if-lez v0, :cond_0

    .line 31
    const-string v1, "-m%dm"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    mul-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
