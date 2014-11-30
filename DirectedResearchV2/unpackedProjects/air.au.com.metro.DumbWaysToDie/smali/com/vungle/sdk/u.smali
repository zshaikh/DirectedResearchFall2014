.class public Lcom/vungle/sdk/u;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/vungle/sdk/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/vungle/sdk/u;

    sput-object v0, Lcom/vungle/sdk/u;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/sdk/ap;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/vungle/sdk/u;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/vungle/sdk/u;->b:Lcom/vungle/sdk/ap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)Lcom/vungle/sdk/ap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 14
    sget-object v0, Lcom/vungle/sdk/u;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/vungle/sdk/u;->b:Lcom/vungle/sdk/ap;

    if-nez v1, :cond_4

    .line 16
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/vungle/sdk/af;

    invoke-direct {v3, p0}, Lcom/vungle/sdk/af;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/vungle/sdk/as;

    invoke-direct {v2}, Lcom/vungle/sdk/as;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Lcom/vungle/sdk/bd;

    invoke-direct {v5}, Lcom/vungle/sdk/bd;-><init>()V

    new-instance v6, Lcom/vungle/sdk/bd;

    invoke-direct {v6}, Lcom/vungle/sdk/bd;-><init>()V

    invoke-static {v2, v1}, Lcom/vungle/sdk/az;->a(Lcom/vungle/sdk/aw;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/sdk/ay;

    iget-object v7, p0, Lcom/vungle/sdk/ay;->a:[Ljava/lang/String;

    array-length v8, v7

    move v9, v12

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    invoke-virtual {p0}, Lcom/vungle/sdk/ay;->a()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/vungle/sdk/ay;->b:[Ljava/lang/Class;

    array-length v8, v7

    move v9, v12

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    iget-boolean v7, p0, Lcom/vungle/sdk/ay;->c:Z

    if-eqz v7, :cond_2

    move-object v7, v6

    :goto_3
    invoke-virtual {p0, v7}, Lcom/vungle/sdk/ay;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    move-object v7, v5

    .line 16
    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v1, Lcom/vungle/sdk/av;

    new-instance v7, Lcom/vungle/sdk/bc;

    invoke-direct {v7}, Lcom/vungle/sdk/bc;-><init>()V

    invoke-direct {v1, v2, v7}, Lcom/vungle/sdk/av;-><init>(Lcom/vungle/sdk/aw;Lcom/vungle/sdk/av$b;)V

    invoke-virtual {v1, v5}, Lcom/vungle/sdk/av;->a(Ljava/util/Map;)V

    invoke-virtual {v1, v6}, Lcom/vungle/sdk/av;->a(Ljava/util/Map;)V

    new-instance v5, Lcom/vungle/sdk/ap$a;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/vungle/sdk/ap$a;-><init>(Lcom/vungle/sdk/av;Lcom/vungle/sdk/aw;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v5, Lcom/vungle/sdk/u;->b:Lcom/vungle/sdk/ap;

    .line 18
    :cond_4
    sget-object v1, Lcom/vungle/sdk/u;->b:Lcom/vungle/sdk/ap;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method
