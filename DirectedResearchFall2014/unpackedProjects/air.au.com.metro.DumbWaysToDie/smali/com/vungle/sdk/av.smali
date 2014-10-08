.class public final Lcom/vungle/sdk/av;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/av$a;,
        Lcom/vungle/sdk/av$b;,
        Lcom/vungle/sdk/av$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/vungle/sdk/av;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vungle/sdk/aq",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/vungle/sdk/aw;

.field private final h:Lcom/vungle/sdk/av$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vungle/sdk/av;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/sdk/aw;Lcom/vungle/sdk/av$b;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/av;->c:Ljava/util/Queue;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/av;->d:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/av;->e:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    .line 56
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/av;->b:Lcom/vungle/sdk/av;

    .line 60
    iput-object p1, p0, Lcom/vungle/sdk/av;->g:Lcom/vungle/sdk/aw;

    .line 61
    iput-object p2, p0, Lcom/vungle/sdk/av;->h:Lcom/vungle/sdk/av$b;

    .line 62
    return-void
.end method

.method private static a(Lcom/vungle/sdk/aq;)Lcom/vungle/sdk/aq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/sdk/aq",
            "<TT;>;)",
            "Lcom/vungle/sdk/aq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/vungle/sdk/aq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 283
    :goto_0
    return-object v0

    .line 282
    :cond_0
    instance-of v0, p0, Lcom/vungle/sdk/av$c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_1
    new-instance v0, Lcom/vungle/sdk/av$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/av$c;-><init>(Lcom/vungle/sdk/aq;B)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vungle/sdk/av;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Lcom/vungle/sdk/aq;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Lcom/vungle/sdk/aq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 231
    invoke-direct {p0}, Lcom/vungle/sdk/av;->c()V

    move-object v1, p0

    move-object v0, v7

    .line 234
    :goto_0
    if-eqz v1, :cond_1

    .line 235
    iget-object v0, v1, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/aq;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    if-eq v1, p0, :cond_1

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->b()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :cond_0
    iget-object v1, v1, Lcom/vungle/sdk/av;->b:Lcom/vungle/sdk/av;

    goto :goto_0

    .line 242
    :cond_1
    if-nez v0, :cond_2

    .line 244
    new-instance v0, Lcom/vungle/sdk/av$a;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vungle/sdk/av$a;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZB)V

    .line 246
    invoke-virtual {v0, v6}, Lcom/vungle/sdk/aq;->c(Z)V

    .line 247
    invoke-virtual {v0, v6}, Lcom/vungle/sdk/aq;->d(Z)V

    .line 248
    iget-object v1, p0, Lcom/vungle/sdk/av;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 249
    iput-boolean v5, p0, Lcom/vungle/sdk/av;->d:Z

    move-object v0, v7

    .line 259
    :goto_1
    return-object v0

    .line 253
    :cond_2
    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/vungle/sdk/av;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_3
    invoke-virtual {v0, v6}, Lcom/vungle/sdk/aq;->c(Z)V

    .line 258
    invoke-virtual {v0, v6}, Lcom/vungle/sdk/aq;->d(Z)V

    goto :goto_1
.end method

.method public final a()V
    .locals 7

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vungle/sdk/av;->c()V

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vungle/sdk/av;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/sdk/aq;

    if-eqz v1, :cond_b

    .line 101
    instance-of v2, v1, Lcom/vungle/sdk/av$a;

    if-eqz v2, :cond_9

    .line 102
    move-object v0, v1

    check-cast v0, Lcom/vungle/sdk/av$a;

    move-object v2, v0

    .line 103
    iget-object v3, v2, Lcom/vungle/sdk/av$a;->f:Ljava/lang/String;

    .line 104
    iget-boolean v4, v2, Lcom/vungle/sdk/av$a;->g:Z

    .line 105
    iget-object v5, p0, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    :try_start_0
    iget-object v5, v1, Lcom/vungle/sdk/aq;->d:Ljava/lang/Object;

    iget-object v2, v2, Lcom/vungle/sdk/av$a;->e:Ljava/lang/ClassLoader;

    invoke-static {v3}, Lcom/vungle/sdk/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v4, Lcom/vungle/sdk/ar;

    invoke-direct {v4, v3, v5, v2, v6}, Lcom/vungle/sdk/ar;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    move-object v2, v4

    .line 111
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/vungle/sdk/aq;->f()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/vungle/sdk/aq;->c(Z)V

    .line 112
    invoke-virtual {v1}, Lcom/vungle/sdk/aq;->g()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/vungle/sdk/aq;->d(Z)V

    .line 114
    iget-object v4, v2, Lcom/vungle/sdk/aq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v2, Lcom/vungle/sdk/aq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 115
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create binding for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " required by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/vungle/sdk/aq;->d:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/sdk/av;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    sget-object v2, Lcom/vungle/sdk/aq;->a:Lcom/vungle/sdk/aq;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    :cond_2
    :try_start_1
    invoke-static {v3}, Lcom/vungle/sdk/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v4, Lcom/vungle/sdk/au;

    invoke-direct {v4, v3, v5, v2, v6}, Lcom/vungle/sdk/au;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/vungle/sdk/at;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Lcom/vungle/sdk/at;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/vungle/sdk/av;->g:Lcom/vungle/sdk/aw;

    invoke-virtual {v6, v3, v5, v2, v4}, Lcom/vungle/sdk/aw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/vungle/sdk/aq;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No binding for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_5
    invoke-static {v2}, Lcom/vungle/sdk/av;->a(Lcom/vungle/sdk/aq;)Lcom/vungle/sdk/aq;

    move-result-object v2

    .line 119
    iget-object v4, p0, Lcom/vungle/sdk/av;->c:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v4, v2, Lcom/vungle/sdk/aq;->b:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    iget-object v5, v2, Lcom/vungle/sdk/aq;->b:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/vungle/sdk/av;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    iget-object v4, v2, Lcom/vungle/sdk/aq;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    iget-object v5, v2, Lcom/vungle/sdk/aq;->c:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/vungle/sdk/av;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 125
    :cond_7
    instance-of v1, v2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_8

    .line 126
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    move-object p0, v0

    throw p0

    .line 128
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vungle/sdk/av;->d:Z

    .line 136
    invoke-virtual {v1, p0}, Lcom/vungle/sdk/aq;->a(Lcom/vungle/sdk/av;)V

    .line 137
    iget-boolean v2, p0, Lcom/vungle/sdk/av;->d:Z

    if-eqz v2, :cond_a

    .line 138
    invoke-virtual {v1}, Lcom/vungle/sdk/aq;->a()V

    goto/16 :goto_0

    .line 140
    :cond_a
    iget-object v2, p0, Lcom/vungle/sdk/av;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 146
    :cond_b
    :try_start_2
    iget-object v1, p0, Lcom/vungle/sdk/av;->h:Lcom/vungle/sdk/av$b;

    iget-object v2, p0, Lcom/vungle/sdk/av;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/vungle/sdk/av$b;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    iget-object v1, p0, Lcom/vungle/sdk/av;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/vungle/sdk/av;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/vungle/sdk/aq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    iget-object v2, p0, Lcom/vungle/sdk/av;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/aq;

    invoke-static {v0}, Lcom/vungle/sdk/av;->a(Lcom/vungle/sdk/aq;)Lcom/vungle/sdk/aq;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method
