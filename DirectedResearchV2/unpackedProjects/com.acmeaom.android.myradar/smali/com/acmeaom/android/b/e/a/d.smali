.class public Lcom/acmeaom/android/b/e/a/d;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/e/a/c;


# instance fields
.field private a:Lcom/acmeaom/android/a/a/b/e;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 29
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "Warning: can not create geometry of type %@, expected point."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 35
    :cond_0
    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 36
    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-static {v0}, Lcom/acmeaom/android/b/e/a/f;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/d/a;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    const-string v2, "Warning: can not create geometry type point with coordinates: %@"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 42
    :cond_1
    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/e;->a(Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/e/a/d;->a:Lcom/acmeaom/android/a/a/b/e;

    .line 43
    return-void
.end method


# virtual methods
.method public b()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public c()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a/d;->a:Lcom/acmeaom/android/a/a/b/e;

    return-object v0
.end method

.method public c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Point"

    return-object v0
.end method
