.class public Lcom/acmeaom/android/b/e/a/a;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lcom/acmeaom/android/b/e/a/c;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 32
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    const-string v1, "Feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string v1, "Error: can not create feature with type: %@"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 38
    :cond_0
    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    instance-of v1, v0, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 40
    const-string v1, "Error: can not read geometry for feature. Current geometry is: %@ must be dictionary"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 46
    :cond_1
    check-cast v0, Ljava/util/HashMap;

    .line 48
    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/util/HashMap;)Lcom/acmeaom/android/b/e/a/c;

    move-result-object v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to parse geometry info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    instance-of v2, v0, Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 55
    const-string v2, "Warning: can not read geometry properties: %@"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_3
    iput-object v1, p0, Lcom/acmeaom/android/b/e/a/a;->b:Lcom/acmeaom/android/b/e/a/c;

    .line 59
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/acmeaom/android/b/e/a/a;->a:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method private a(Ljava/util/HashMap;)Lcom/acmeaom/android/b/e/a/c;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    .line 65
    const-string v1, "type"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 67
    const-string v2, "Error: can not identify geometry type: %@"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v2, "Point"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    new-instance v0, Lcom/acmeaom/android/b/e/a/d;

    invoke-direct {v0, p1}, Lcom/acmeaom/android/b/e/a/d;-><init>(Ljava/util/HashMap;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v2, "Polygon"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v0, Lcom/acmeaom/android/b/e/a/e;

    invoke-direct {v0, p1}, Lcom/acmeaom/android/b/e/a/e;-><init>(Ljava/util/HashMap;)V

    goto :goto_0

    .line 76
    :cond_2
    const-string v2, "Error: Unsupported geometry type: %@"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a/a;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public c()Lcom/acmeaom/android/b/e/a/c;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a/a;->b:Lcom/acmeaom/android/b/e/a/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v0, "%s, geometry = %s, properties: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acmeaom/android/b/e/a/a;->b:Lcom/acmeaom/android/b/e/a/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/acmeaom/android/b/e/a/a;->a:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
