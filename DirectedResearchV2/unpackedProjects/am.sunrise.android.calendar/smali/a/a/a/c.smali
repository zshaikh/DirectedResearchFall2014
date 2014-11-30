.class public La/a/a/c;
.super Ljava/lang/Object;
.source "EventBus.java"


# static fields
.field static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Ljava/lang/String;

.field private static volatile c:La/a/a/c;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "La/a/a/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "La/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private final k:La/a/a/i;

.field private final l:La/a/a/b;

.field private final m:La/a/a/a;

.field private final n:La/a/a/o;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, La/a/a/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 44
    const-string v0, "Event"

    sput-object v0, La/a/a/c;->b:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/c;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, La/a/a/d;

    invoke-direct {v0, p0}, La/a/a/d;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->h:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, La/a/a/e;

    invoke-direct {v0, p0}, La/a/a/e;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->i:Ljava/lang/ThreadLocal;

    .line 68
    const-string v0, "onEvent"

    iput-object v0, p0, La/a/a/c;->j:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, La/a/a/c;->g:Ljava/util/Map;

    .line 117
    new-instance v0, La/a/a/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, La/a/a/i;-><init>(La/a/a/c;Landroid/os/Looper;I)V

    iput-object v0, p0, La/a/a/c;->k:La/a/a/i;

    .line 118
    new-instance v0, La/a/a/b;

    invoke-direct {v0, p0}, La/a/a/b;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->l:La/a/a/b;

    .line 119
    new-instance v0, La/a/a/a;

    invoke-direct {v0, p0}, La/a/a/a;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->m:La/a/a/a;

    .line 120
    new-instance v0, La/a/a/o;

    invoke-direct {v0}, La/a/a/o;-><init>()V

    iput-object v0, p0, La/a/a/c;->n:La/a/a/o;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/c;->p:Z

    .line 122
    return-void
.end method

.method public static a()La/a/a/c;
    .locals 2

    .prologue
    .line 80
    sget-object v0, La/a/a/c;->c:La/a/a/c;

    if-nez v0, :cond_1

    .line 81
    const-class v1, La/a/a/c;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, La/a/a/c;->c:La/a/a/c;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, La/a/a/c;

    invoke-direct {v0}, La/a/a/c;-><init>()V

    sput-object v0, La/a/a/c;->c:La/a/a/c;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, La/a/a/c;->c:La/a/a/c;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(La/a/a/p;Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 414
    sget-object v0, La/a/a/f;->a:[I

    iget-object v1, p1, La/a/a/p;->b:La/a/a/n;

    iget-object v1, v1, La/a/a/n;->b:La/a/a/q;

    invoke-virtual {v1}, La/a/a/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, La/a/a/p;->b:La/a/a/n;

    iget-object v2, v2, La/a/a/n;->b:La/a/a/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_0
    invoke-virtual {p0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    .line 438
    :goto_0
    return-void

    .line 419
    :pswitch_1
    if-eqz p3, :cond_0

    .line 420
    invoke-virtual {p0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, La/a/a/c;->k:La/a/a/i;

    invoke-virtual {v0, p1, p2}, La/a/a/i;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :pswitch_2
    if-eqz p3, :cond_1

    .line 427
    iget-object v0, p0, La/a/a/c;->l:La/a/a/b;

    invoke-virtual {v0, p1, p2}, La/a/a/b;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, La/a/a/c;->m:La/a/a/a;

    invoke-virtual {v0, p1, p2}, La/a/a/a;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;La/a/a/n;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 229
    iput-boolean v2, p0, La/a/a/c;->o:Z

    .line 230
    iget-object v3, p2, La/a/a/n;->c:Ljava/lang/Class;

    .line 231
    iget-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 232
    new-instance v4, La/a/a/p;

    invoke-direct {v4, p1, p2}, La/a/a/p;-><init>(Ljava/lang/Object;La/a/a/n;)V

    .line 233
    if-nez v0, :cond_3

    .line 234
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 235
    iget-object v1, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    iget-object v1, p2, La/a/a/n;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 249
    if-nez v0, :cond_1

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    if-eqz p3, :cond_2

    .line 257
    iget-object v1, p0, La/a/a/c;->g:Ljava/util/Map;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, La/a/a/c;->g:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v3, :cond_2

    .line 261
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_0
    invoke-direct {p0, v4, v3, v0}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;Z)V

    .line 264
    :cond_2
    return-void

    .line 237
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/p;

    .line 238
    invoke-virtual {v1, v4}, La/a/a/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    new-instance v0, La/a/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already registered to event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 261
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 290
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/p;

    iget-object v1, v1, La/a/a/p;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 292
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 293
    add-int/lit8 v1, v2, -0x1

    .line 294
    add-int/lit8 v2, v3, -0x1

    .line 290
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 298
    :cond_0
    return-void

    :cond_1
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, La/a/a/c;->n:La/a/a/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, La/a/a/o;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/n;

    .line 175
    invoke-direct {p0, p1, v0, p3}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/n;Z)V

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private varargs declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 212
    iget-object v1, p0, La/a/a/c;->n:La/a/a/o;

    invoke-virtual {v1, v0, p2}, La/a/a/o;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/n;

    .line 215
    iget-object v1, v0, La/a/a/n;->c:Ljava/lang/Class;

    if-ne p4, v1, :cond_1

    .line 216
    invoke-direct {p0, p1, v0, p3}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/n;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_1
    if-eqz p5, :cond_0

    .line 218
    :try_start_1
    array-length v3, p5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, p5, v1

    .line 219
    iget-object v5, v0, La/a/a/n;->c:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    .line 220
    invoke-direct {p0, p1, v0, p3}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/n;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private a(Ljava/lang/Object;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 389
    invoke-direct {p0, v3}, La/a/a/c;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 391
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    .line 392
    :goto_0
    if-ge v2, v5, :cond_1

    .line 393
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v6, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 397
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/p;

    .line 400
    invoke-direct {p0, v0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 397
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 402
    :cond_0
    const/4 v0, 0x1

    .line 392
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 405
    :cond_1
    if-nez v1, :cond_2

    .line 406
    sget-object v0, La/a/a/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subscripers registered for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-class v0, La/a/a/j;

    if-eq v3, v0, :cond_2

    const-class v0, La/a/a/m;

    if-eq v3, v0, :cond_2

    .line 408
    new-instance v0, La/a/a/j;

    invoke-direct {v0, p0, p1}, La/a/a/j;-><init>(La/a/a/c;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 411
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 460
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 461
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, La/a/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 442
    sget-object v2, La/a/a/c;->d:Ljava/util/Map;

    monitor-enter v2

    .line 443
    :try_start_0
    sget-object v0, La/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 444
    if-nez v0, :cond_1

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    .line 447
    :goto_0
    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, La/a/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 450
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 452
    :cond_0
    sget-object v1, La/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1
    monitor-exit v2

    return-object v0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, La/a/a/c;->g:Ljava/util/Map;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, La/a/a/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(La/a/a/k;)V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p1, La/a/a/k;->a:Ljava/lang/Object;

    .line 470
    iget-object v1, p1, La/a/a/k;->b:La/a/a/p;

    .line 471
    invoke-static {p1}, La/a/a/k;->a(La/a/a/k;)V

    .line 472
    invoke-virtual {p0, v1, v0}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method a(La/a/a/p;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 477
    :try_start_0
    iget-object v0, p1, La/a/a/p;->b:La/a/a/n;

    iget-object v0, v0, La/a/a/n;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, La/a/a/p;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 480
    instance-of v1, p2, La/a/a/m;

    if-eqz v1, :cond_0

    .line 482
    sget-object v1, La/a/a/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, La/a/a/p;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    check-cast p2, La/a/a/m;

    .line 485
    sget-object v0, La/a/a/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, La/a/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caused exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, La/a/a/m;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, La/a/a/m;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 488
    :cond_0
    iget-boolean v1, p0, La/a/a/c;->p:Z

    if-eqz v1, :cond_1

    .line 489
    sget-object v1, La/a/a/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, La/a/a/p;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    :cond_1
    new-instance v1, La/a/a/m;

    iget-object v2, p1, La/a/a/p;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, v2}, La/a/a/m;-><init>(La/a/a/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    :catch_1
    move-exception v0

    .line 497
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, La/a/a/c;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public varargs a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v2, p0, La/a/a/c;->j:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 199
    return-void
.end method

.method public varargs declared-synchronized a(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    array-length v0, p2

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provide at least one event class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 272
    if-eqz v0, :cond_3

    .line 273
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    .line 274
    invoke-direct {p0, p1, v3}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 275
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 281
    :cond_3
    :try_start_2
    sget-object v0, La/a/a/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 305
    invoke-direct {p0, p1, v0}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :goto_1
    monitor-exit p0

    return-void

    .line 309
    :cond_1
    :try_start_2
    sget-object v0, La/a/a/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 315
    iget-object v0, p0, La/a/a/c;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v1, p0, La/a/a/c;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/g;

    .line 319
    iget-boolean v2, v1, La/a/a/g;->a:Z

    if-eqz v2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v2, v5, :cond_1

    move v2, v3

    .line 323
    :goto_1
    iput-boolean v3, v1, La/a/a/g;->a:Z

    .line 325
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 326
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v2}, La/a/a/c;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 329
    :catchall_0
    move-exception v0

    iput-boolean v4, v1, La/a/a/g;->a:Z

    throw v0

    :cond_1
    move v2, v4

    .line 322
    goto :goto_1

    .line 329
    :cond_2
    iput-boolean v4, v1, La/a/a/g;->a:Z

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, La/a/a/c;->g:Ljava/util/Map;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, La/a/a/c;->g:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {p0, p1}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 345
    return-void

    .line 342
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
