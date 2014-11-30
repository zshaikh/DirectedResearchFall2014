.class public Lcom/acmeaom/android/c/g/c/b;
.super Lcom/acmeaom/android/c/g/c/c;
.source "ProGuard"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Ljava/util/List;F)V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/acmeaom/android/c/g/c/b;->a(Ljava/util/List;)[Lcom/acmeaom/android/a/g/n;

    move-result-object v1

    invoke-static {p1}, Lcom/acmeaom/android/c/g/c/b;->b(Ljava/util/List;)[S

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/acmeaom/android/c/g/c/c;-><init>(I[Lcom/acmeaom/android/a/g/n;[S)V

    .line 36
    iput p2, p0, Lcom/acmeaom/android/c/g/c/b;->a:F

    .line 37
    return-void
.end method

.method private static a(Ljava/util/List;)[Lcom/acmeaom/android/a/g/n;
    .locals 3

    .prologue
    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 41
    const-string v0, "not a path"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/acmeaom/android/a/g/n;

    .line 46
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 47
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    .line 48
    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;

    move-result-object v0

    aput-object v0, v2, v1

    .line 46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_1
    return-object v2
.end method

.method private static b(Ljava/util/List;)[S
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 63
    :goto_0
    new-array v3, v0, [S

    move v2, v1

    .line 64
    :goto_1
    if-ge v1, v0, :cond_1

    .line 65
    aput-short v2, v3, v1

    .line 66
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 67
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    .line 64
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 70
    :cond_1
    return-object v3
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 80
    invoke-virtual {p5}, Lcom/acmeaom/android/c/g/a;->b()Lcom/acmeaom/android/c/g/b/c;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/c/g/c/b;->a:F

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/c;->a(F)V

    .line 82
    invoke-super/range {p0 .. p5}, Lcom/acmeaom/android/c/g/c/c;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V

    .line 84
    return-void
.end method
