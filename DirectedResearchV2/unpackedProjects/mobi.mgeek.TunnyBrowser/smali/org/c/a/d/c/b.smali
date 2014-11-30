.class public Lorg/c/a/d/c/b;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field protected static a:Ljava/util/Properties;

.field public static b:Ljava/lang/String;

.field public static c:Z

.field private static final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/c/a/d/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lorg/c/a/d/c/d;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/c/a/d/c/b;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/c/a/d/c/b;->a:Ljava/util/Properties;

    .line 85
    new-instance v0, Lorg/c/a/d/c/c;

    invoke-direct {v0}, Lorg/c/a/d/c/c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lorg/c/a/d/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/c/a/d/c/d;"
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/String;)Lorg/c/a/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lorg/c/a/d/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    const/4 v0, 0x0

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 438
    :cond_1
    if-nez p0, :cond_2

    .line 439
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    goto :goto_0

    .line 441
    :cond_2
    sget-object v0, Lorg/c/a/d/c/b;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/c/d;

    .line 442
    if-nez v0, :cond_0

    .line 443
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0, p0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;)Lorg/c/a/d/c/d;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 177
    if-eqz p0, :cond_0

    sget-boolean v0, Lorg/c/a/d/c/b;->c:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    :cond_0
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    if-nez v0, :cond_1

    .line 184
    const-class v0, Lorg/c/a/d/c/e;

    .line 185
    new-instance v1, Lorg/c/a/d/c/e;

    invoke-direct {v1}, Lorg/c/a/d/c/e;-><init>()V

    sput-object v1, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    .line 186
    sget-object v1, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    const-string v2, "Logging to {} via {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return v1

    .line 147
    :cond_0
    const-class v3, Lorg/c/a/d/c/b;

    monitor-enter v3

    .line 149
    :try_start_0
    sget-boolean v0, Lorg/c/a/d/c/b;->f:Z

    if-eqz v0, :cond_2

    .line 151
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v1, v2

    .line 151
    goto :goto_1

    .line 153
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lorg/c/a/d/c/b;->f:Z

    .line 154
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    const-class v0, Lorg/c/a/d/c/b;

    sget-object v3, Lorg/c/a/d/c/b;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/c/a/d/j;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 159
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/c/d;

    sput-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    .line 162
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    const-string v4, "Logging to {} via {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-interface {v0, v4, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :cond_4
    :goto_2
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 168
    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 171
    goto :goto_3
.end method

.method public static b()Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lorg/c/a/d/c/b;->a()Z

    .line 211
    sget-object v0, Lorg/c/a/d/c/b;->e:Lorg/c/a/d/c/d;

    return-object v0
.end method

.method static c()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/c/a/d/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lorg/c/a/d/c/b;->d:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/c/a/d/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    sget-object v0, Lorg/c/a/d/c/b;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
