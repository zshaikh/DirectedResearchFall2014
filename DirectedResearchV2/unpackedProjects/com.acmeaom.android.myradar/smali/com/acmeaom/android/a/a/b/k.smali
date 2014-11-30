.class public Lcom/acmeaom/android/a/a/b/k;
.super Ljava/util/AbstractMap;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/ad;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/b/k;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    .line 18
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    .line 14
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/f;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/k;
    .locals 5

    .prologue
    .line 38
    new-instance v1, Lcom/acmeaom/android/a/a/b/k;

    invoke-direct {v1}, Lcom/acmeaom/android/a/a/b/k;-><init>()V

    .line 39
    const/4 v0, 0x0

    :goto_0
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, v1, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    aget-object v4, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 42
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/a/b/k;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/acmeaom/android/a/a/b/k;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/a/b/k;-><init>(Lcom/acmeaom/android/a/a/b/k;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
