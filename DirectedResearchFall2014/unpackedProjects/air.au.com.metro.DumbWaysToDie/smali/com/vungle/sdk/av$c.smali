.class final Lcom/vungle/sdk/av$c;
.super Lcom/vungle/sdk/aq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/sdk/aq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/aq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/sdk/aq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p1, Lcom/vungle/sdk/aq;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vungle/sdk/aq;->c:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/vungle/sdk/aq;->d:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 307
    invoke-static {}, Lcom/vungle/sdk/av;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/av$c;->f:Ljava/lang/Object;

    .line 311
    iput-object p1, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/aq;B)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/vungle/sdk/av$c;-><init>(Lcom/vungle/sdk/aq;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->a()V

    .line 380
    return-void
.end method

.method public final a(Lcom/vungle/sdk/av;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->a(Lcom/vungle/sdk/av;)V

    .line 316
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->a(Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/sdk/aq;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 336
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->a(Z)V

    .line 364
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->b(Z)V

    .line 360
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/aq;->c(Z)V

    .line 368
    return-void
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->d(Z)V

    .line 372
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->f()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->g()Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/vungle/sdk/av;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/vungle/sdk/av;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/av$c;->f:Ljava/lang/Object;

    .line 329
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/av$c;->f:Ljava/lang/Object;

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@Singleton/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/sdk/av$c;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v1}, Lcom/vungle/sdk/aq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
