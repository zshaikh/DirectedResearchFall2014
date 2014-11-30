.class final Ldolphin/webkit/gu;
.super Ljava/lang/Object;
.source "SslClientCertLookupTable.java"


# static fields
.field private static a:Ldolphin/webkit/gu;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gu;->b:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gu;->c:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gu;->d:Ljava/util/Set;

    .line 45
    return-void
.end method

.method public static declared-synchronized a()Ldolphin/webkit/gu;
    .locals 2

    .prologue
    .line 35
    const-class v1, Ldolphin/webkit/gu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/gu;->a:Ldolphin/webkit/gu;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ldolphin/webkit/gu;

    invoke-direct {v0}, Ldolphin/webkit/gu;-><init>()V

    sput-object v0, Ldolphin/webkit/gu;->a:Ldolphin/webkit/gu;

    .line 38
    :cond_0
    sget-object v0, Ldolphin/webkit/gu;->a:Ldolphin/webkit/gu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ldolphin/webkit/gu;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Ldolphin/webkit/gu;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Ldolphin/webkit/gu;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ldolphin/webkit/gu;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldolphin/webkit/gu;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldolphin/webkit/gu;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    return-object v0
.end method

.method public e(Ljava/lang/String;)[[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/webkit/gu;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method
