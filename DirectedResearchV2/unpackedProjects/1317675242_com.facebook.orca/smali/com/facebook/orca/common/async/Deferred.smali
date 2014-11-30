.class public Lcom/facebook/orca/common/async/Deferred;
.super Ljava/lang/Object;
.source "Deferred.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;

.field private final c:Ljava/lang/Runnable;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/async/Deferred;-><init>(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 77
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred;->c:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method private a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 3

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->g:Z

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Chained Deferreds can not be re-used"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;-><init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferred$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/Deferred;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->g()V

    .line 236
    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    .line 111
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->d()V

    .line 131
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    .line 118
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/common/async/Deferred;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->g()V

    .line 121
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 139
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    aput-object p1, v0, v1

    .line 141
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->g()V

    .line 142
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/Deferred;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->f:Z

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$AlreadyCalledException;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/async/Deferred$AlreadyCalledException;-><init>(Lcom/facebook/orca/common/async/Deferred;)V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->f:Z

    .line 156
    :cond_1
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 194
    instance-of v0, p1, Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deferred instances can only be chained if they are the result of a callback"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;

    .line 286
    invoke-static {p0}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 298
    iget-object v3, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    .line 299
    iget v1, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 300
    iget-object v2, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 303
    const/4 v4, 0x0

    move v5, v8

    move v6, v1

    .line 305
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    if-nez v1, :cond_3

    .line 306
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;

    .line 307
    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->b(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;

    move-result-object v1

    .line 308
    :goto_1
    if-eqz v1, :cond_8

    .line 310
    :try_start_0
    invoke-interface {v1, v2}, Lcom/facebook/orca/common/async/Deferrable;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_7

    .line 315
    :goto_2
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    move v2, v7

    .line 316
    :goto_3
    instance-of v6, v1, Lcom/facebook/orca/common/async/Deferred;

    if-eqz v6, :cond_0

    .line 317
    new-instance v6, Lcom/facebook/orca/common/async/Deferred$3;

    invoke-direct {v6, p0}, Lcom/facebook/orca/common/async/Deferred$3;-><init>(Lcom/facebook/orca/common/async/Deferred;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    :cond_0
    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    move v10, v5

    move v5, v2

    move v2, v10

    :goto_4
    move v6, v5

    move v5, v2

    move-object v2, v4

    move-object v4, v1

    .line 335
    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v1}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v2, v8

    .line 315
    goto :goto_3

    .line 325
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 326
    :goto_5
    const-string v4, "Exception in deferered"

    invoke-static {v4, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->f()Z

    move-result v4

    if-nez v4, :cond_9

    move-object v4, v1

    move v5, v7

    move-object v1, v2

    move v2, v7

    .line 331
    goto :goto_4

    .line 336
    :cond_3
    iput v6, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 337
    iget-object v1, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aput-object v2, v1, v6

    .line 338
    if-eqz v4, :cond_4

    iget v1, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    if-lez v1, :cond_4

    .line 339
    move-object v0, v2

    check-cast v0, Lcom/facebook/orca/common/async/Deferred;

    move-object p0, v0

    invoke-virtual {p0, v4}, Lcom/facebook/orca/common/async/Deferred;->c(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 340
    move-object v0, v2

    check-cast v0, Lcom/facebook/orca/common/async/Deferred;

    move-object v3, v0

    iput-boolean v7, v3, Lcom/facebook/orca/common/async/Deferred;->g:Z

    .line 343
    :cond_4
    if-eqz v5, :cond_6

    .line 344
    instance-of v1, v2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 345
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 347
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 350
    :cond_6
    return-void

    .line 325
    :catch_1
    move-exception v1

    move-object v2, v6

    goto :goto_5

    :cond_7
    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v1, v4

    move-object v4, v2

    move v2, v5

    move v5, v6

    goto :goto_4

    :cond_9
    move-object v4, v1

    move-object v1, v2

    move v2, v5

    move v5, v7

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/Deferred;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/Deferred;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$CancelledException;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/async/Deferred$CancelledException;-><init>(Lcom/facebook/orca/common/async/Deferred;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/async/Deferred;->b(Ljava/lang/Object;)V

    .line 103
    :cond_0
    :goto_1
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->f:Z

    goto :goto_0

    .line 100
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aget-object p0, v0, v1

    check-cast p0, Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {p0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()V

    .line 166
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->e(Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()V

    .line 178
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->e(Ljava/lang/Object;)V

    .line 180
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;-><init>(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0, p1, p1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    return-object v0
.end method
