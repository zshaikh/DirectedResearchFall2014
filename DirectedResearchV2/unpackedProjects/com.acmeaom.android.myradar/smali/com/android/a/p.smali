.class public abstract Lcom/android/a/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/android/a/ac;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/android/a/u;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/android/a/s;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/android/a/x;

.field private m:Lcom/android/a/c;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/a/u;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/android/a/ac;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/a/ac;

    invoke-direct {v0}, Lcom/android/a/ac;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/a/p;->a:Lcom/android/a/ac;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/a/p;->h:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/a/p;->i:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/a/p;->j:Z

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/a/p;->k:J

    .line 107
    iput-object v1, p0, Lcom/android/a/p;->m:Lcom/android/a/c;

    .line 132
    iput p1, p0, Lcom/android/a/p;->b:I

    .line 133
    iput-object p2, p0, Lcom/android/a/p;->c:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/android/a/p;->e:Lcom/android/a/u;

    .line 135
    new-instance v0, Lcom/android/a/f;

    invoke-direct {v0}, Lcom/android/a/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/a/p;->a(Lcom/android/a/x;)Lcom/android/a/p;

    .line 137
    invoke-static {p2}, Lcom/android/a/p;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/a/p;->d:I

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 452
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/a/p;)Lcom/android/a/ac;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/a/p;->a:Lcom/android/a/ac;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/a/p;)I
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/a/p;->c()Lcom/android/a/r;

    move-result-object v0

    .line 574
    invoke-virtual {p1}, Lcom/android/a/p;->c()Lcom/android/a/r;

    move-result-object v1

    .line 578
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/a/p;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/a/p;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/a/r;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/a/r;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/android/a/aa;)Lcom/android/a/aa;
    .locals 0

    .prologue
    .line 543
    return-object p1
.end method

.method public final a(I)Lcom/android/a/p;
    .locals 1

    .prologue
    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/p;->f:Ljava/lang/Integer;

    .line 263
    return-object p0
.end method

.method public a(Lcom/android/a/c;)Lcom/android/a/p;
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/a/p;->m:Lcom/android/a/c;

    .line 298
    return-object p0
.end method

.method public a(Lcom/android/a/s;)Lcom/android/a/p;
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/a/p;->g:Lcom/android/a/s;

    .line 253
    return-object p0
.end method

.method public a(Lcom/android/a/x;)Lcom/android/a/p;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/a/p;->l:Lcom/android/a/x;

    .line 196
    return-object p0
.end method

.method public final a(Z)Lcom/android/a/p;
    .locals 0

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/android/a/p;->h:Z

    .line 465
    return-object p0
.end method

.method protected abstract a(Lcom/android/a/m;)Lcom/android/a/t;
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/a/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/a/ac;->a:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/a/p;->a:Lcom/android/a/ac;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/a/ac;->a(Ljava/lang/String;J)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-wide v0, p0, Lcom/android/a/p;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/a/p;->k:J

    goto :goto_0
.end method

.method public b(Lcom/android/a/aa;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/a/p;->e:Lcom/android/a/u;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/a/p;->e:Lcom/android/a/u;

    invoke-interface {v0, p1}, Lcom/android/a/u;->a(Lcom/android/a/aa;)V

    .line 565
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/a/p;->g:Lcom/android/a/s;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/a/p;->g:Lcom/android/a/s;

    invoke-virtual {v0, p0}, Lcom/android/a/s;->b(Lcom/android/a/p;)V

    .line 219
    :cond_0
    sget-boolean v0, Lcom/android/a/ac;->a:Z

    if-eqz v0, :cond_3

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 221
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 224
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 225
    new-instance v3, Lcom/android/a/q;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/a/q;-><init>(Lcom/android/a/p;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/android/a/p;->a:Lcom/android/a/ac;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/a/ac;->a(Ljava/lang/String;J)V

    .line 236
    iget-object v0, p0, Lcom/android/a/p;->a:Lcom/android/a/ac;

    invoke-virtual {p0}, Lcom/android/a/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/a/ac;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/a/p;->k:J

    sub-long/2addr v0, v2

    .line 239
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 240
    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/a/p;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/android/a/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/a/p;->p()Ljava/util/Map;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/a/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/a/p;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/android/a/r;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/android/a/r;->b:Lcom/android/a/r;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/android/a/p;

    invoke-virtual {p0, p1}, Lcom/android/a/p;->a(Lcom/android/a/p;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/a/p;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/a/p;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/a/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/a/p;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/android/a/c;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/a/p;->m:Lcom/android/a/c;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/a/p;->i:Z

    .line 313
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/a/p;->i:Z

    return v0
.end method

.method public k()Ljava/util/Map;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/util/Map;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/a/p;->p()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/a/p;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/a/p;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/a/p;->l()Ljava/util/Map;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/a/p;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/a/p;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected p()Ljava/util/Map;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/a/p;->h:Z

    return v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/a/p;->l:Lcom/android/a/x;

    invoke-interface {v0}, Lcom/android/a/x;->a()I

    move-result v0

    return v0
.end method

.method public t()Lcom/android/a/x;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/a/p;->l:Lcom/android/a/x;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/a/p;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/a/p;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/a/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/a/p;->c()Lcom/android/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/a/p;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/a/p;->j:Z

    .line 515
    return-void
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/a/p;->j:Z

    return v0
.end method
