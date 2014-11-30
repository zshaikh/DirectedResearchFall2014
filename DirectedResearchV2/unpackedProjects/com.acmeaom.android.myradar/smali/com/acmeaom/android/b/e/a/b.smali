.class public Lcom/acmeaom/android/b/e/a/b;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/a/a/b/e;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 29
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    const-string v1, "FeatureCollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "Can not create feature collection with type == %@"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 35
    :cond_0
    const-string v0, "features"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/acmeaom/android/a/a/b/e;

    if-nez v1, :cond_1

    .line 37
    const-string v1, "Feature collection does not contain features list."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 41
    :cond_1
    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/e/a/b;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/e/a/b;->a:Lcom/acmeaom/android/a/a/b/e;

    .line 42
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 52
    const/4 v2, 0x0

    .line 54
    :try_start_0
    new-instance v1, Lcom/acmeaom/android/b/e/a/a;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/b/e/a/a;-><init>(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 59
    :goto_1
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v3, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 64
    :cond_1
    return-object v3
.end method


# virtual methods
.method public b()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a/b;->a:Lcom/acmeaom/android/a/a/b/e;

    return-object v0
.end method
