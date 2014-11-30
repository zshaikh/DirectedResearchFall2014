.class public Lcom/acmeaom/android/b/e/a/e;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/e/a/c;


# instance fields
.field private a:Lcom/acmeaom/android/a/a/b/o;


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
    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "Error : feature type mismatch. Got %@, expected Polygon"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/e/a/e;->a(Ljava/util/HashMap;)Lcom/acmeaom/android/a/a/b/o;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v2

    if-nez v2, :cond_1

    .line 37
    const-string v2, "Error: there is no geometry for feature: %@"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 41
    :cond_1
    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/o;->c(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/e/a/e;->a:Lcom/acmeaom/android/a/a/b/o;

    .line 42
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    .line 92
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v0

    if-ge v0, v8, :cond_0

    .line 93
    const-string v0, "Error: Polygon can not have less then 3 points. Current points array: %@"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v1

    .line 98
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    .line 101
    invoke-static {v0}, Lcom/acmeaom/android/b/e/a/f;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/d/a;

    move-result-object v4

    .line 102
    if-nez v4, :cond_1

    .line 103
    const-string v4, "Warning: can not create location from point: %@, igonring"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v2, v4}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/o;->a()I

    move-result v0

    if-ge v0, v8, :cond_3

    .line 110
    const-string v0, "Error: Not enough locations after parsing points, got locations: %@ from points array: %@"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object p1, v3, v7

    invoke-static {v0, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 115
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private a(Ljava/util/HashMap;)Lcom/acmeaom/android/a/a/b/o;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v4

    .line 59
    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    instance-of v1, v0, Lcom/acmeaom/android/a/a/b/e;

    if-nez v1, :cond_0

    .line 61
    const-string v1, "Error: can not parse cooridnates: %@"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 86
    :goto_0
    return-object v0

    .line 65
    :cond_0
    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    .line 67
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const-string v0, "Error: corrdinates array is empty"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 69
    goto :goto_0

    :cond_1
    move v2, v3

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 73
    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/e;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 74
    instance-of v5, v1, Lcom/acmeaom/android/a/a/b/e;

    if-eqz v5, :cond_3

    .line 75
    check-cast v1, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {p0, v1}, Lcom/acmeaom/android/b/e/a/e;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v1

    .line 76
    if-nez v1, :cond_2

    .line 72
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v4, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 81
    :cond_3
    const-string v5, "Can not load geometry for polygon! Got %@, expected array"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, v4

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public b()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a/e;->a:Lcom/acmeaom/android/a/a/b/o;

    return-object v0
.end method

.method public c()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "Polygon"

    return-object v0
.end method
