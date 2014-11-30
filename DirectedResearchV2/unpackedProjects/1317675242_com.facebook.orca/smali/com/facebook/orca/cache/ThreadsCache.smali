.class public Lcom/facebook/orca/cache/ThreadsCache;
.super Ljava/lang/Object;
.source "ThreadsCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final b:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final c:Lcom/facebook/orca/cache/SendMessageManager;

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/util/MapWithSecondaryOrdering",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadLocalState;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:J

.field private volatile m:Lcom/facebook/orca/threads/FolderCounts;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/cache/SendMessageManager;)V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->l:J

    .line 73
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadsCache;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 74
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 75
    iput-object p3, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/cache/SendMessageManager;

    .line 76
    new-instance v0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    new-instance v1, Lcom/facebook/orca/cache/ThreadsCache$ThreadSummaryByDateComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/orca/cache/ThreadsCache$ThreadSummaryByDateComparator;-><init>(Lcom/facebook/orca/cache/ThreadsCache$1;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    .line 79
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 4
    .param p1    # Lcom/facebook/orca/threads/MessagesCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 432
    if-nez p1, :cond_0

    move-object v0, v3

    .line 440
    :goto_0
    return-object v0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 436
    invoke-direct {p0, p2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 440
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 4
    .param p2    # Lcom/facebook/orca/threads/MessagesCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/orca/threads/MessagesCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 384
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 423
    :goto_0
    return-object v0

    .line 388
    :cond_1
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0, p3, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    .line 398
    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    .line 410
    goto :goto_0

    .line 415
    :cond_4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 416
    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 417
    invoke-virtual {p3}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 419
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 423
    :cond_6
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p3}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p3}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(J)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(J)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 444
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 451
    :goto_0
    return v0

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 449
    goto :goto_0

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 208
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    move v0, v4

    .line 217
    :goto_0
    return v0

    .line 210
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v0, v5

    .line 211
    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    move v0, v4

    .line 215
    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/4 v6, 0x0

    .line 459
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 460
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    .line 461
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 463
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 464
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 470
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v2}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 476
    :goto_1
    new-instance v3, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->k()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->k()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v6

    .line 474
    goto :goto_1
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 6
    .param p2    # Lcom/facebook/orca/threads/MessagesCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 320
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-direct {p0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v3

    .line 329
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 330
    if-nez v0, :cond_2

    .line 331
    iput-boolean v5, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 332
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/MessagesCollection;

    .line 338
    if-nez v1, :cond_6

    .line 339
    new-instance v1, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v1, v2, v4, v5}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 340
    iput-boolean v5, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 341
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 349
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {p2, v1}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 351
    :cond_4
    iput-boolean v5, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 352
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 355
    :cond_5
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    .line 358
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 360
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 364
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;)Lcom/facebook/orca/cache/PendingSendMessage;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/facebook/orca/cache/PendingSendMessage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/facebook/orca/cache/PendingSendMessage;->e()V

    goto :goto_0

    .line 342
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 343
    iput-boolean v5, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 344
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    goto :goto_1
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v1

    .line 514
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 515
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 517
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->j(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Ljava/util/Collection;)V

    .line 525
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 638
    new-instance v0, Lcom/facebook/orca/cache/NameComputer;

    invoke-direct {v0}, Lcom/facebook/orca/cache/NameComputer;-><init>()V

    .line 639
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 640
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/NameComputer;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 641
    return-void
.end method

.method private k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 490
    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/facebook/orca/cache/ThreadLocalState;

    invoke-direct {v0, p1}, Lcom/facebook/orca/cache/ThreadLocalState;-><init>(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_0
    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/User;

    .line 622
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    .line 622
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 529
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadsCache;->m:Lcom/facebook/orca/threads/FolderCounts;

    .line 314
    return-void
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/Message;)V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 288
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 199
    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 164
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/cache/ThreadLocalState;->c(J)V

    .line 166
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/ThreadsCollection;J)V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 155
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/ThreadsCollection;JZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->clear()V

    .line 128
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 129
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Z

    .line 132
    if-nez p4, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 133
    iput-wide p2, p0, Lcom/facebook/orca/cache/ThreadsCache;->l:J

    .line 135
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 136
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_2

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 141
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->c()V

    goto :goto_3

    .line 143
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 544
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/cache/ThreadLocalState;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Lcom/facebook/orca/location/LocationResult;J)V
    .locals 1

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 561
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Lcom/facebook/orca/location/LocationResult;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 597
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/auth/AuthenticationManager;->b(Lcom/facebook/orca/users/User;)V

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->h()V

    .line 606
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Z

    return v0
.end method

.method declared-synchronized a(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->e(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 281
    :goto_0
    monitor-exit p0

    return v0

    .line 277
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    .line 278
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 279
    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->f()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gt p2, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 109
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized b(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    return v0
.end method

.method declared-synchronized c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/threads/ThreadsCollection;

    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Z

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Lcom/facebook/orca/threads/FolderCounts;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->m:Lcom/facebook/orca/threads/FolderCounts;

    return-object v0
.end method

.method declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->clear()V

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Z

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->k:Z

    .line 504
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 505
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 506
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 507
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 262
    :goto_0
    monitor-exit p0

    return v0

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    .line 253
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadSummary;

    .line 254
    if-nez v0, :cond_1

    move v0, v2

    .line 255
    goto :goto_0

    .line 257
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 259
    goto :goto_0

    .line 262
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()J
    .locals 2

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->l:J

    return-wide v0
.end method

.method declared-synchronized f(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->g()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->f()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized h(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->e()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized i(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->k(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->d()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j(Ljava/lang/String;)Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    const/4 v0, 0x0

    .line 616
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/User;

    move-object v0, p0

    goto :goto_0
.end method
