.class final Lcom/flurry/android/monolithic/sdk/impl/vm;
.super Lcom/flurry/android/monolithic/sdk/impl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ve",
        "<[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 361
    const-class v0, [S

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ve;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    .line 395
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->o:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vm;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 398
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vm;->s(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)S

    move-result v2

    aput-short v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vm;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[S

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 367
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vm;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[S

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->h()Lcom/flurry/android/monolithic/sdk/impl/adp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/adp;->c()Lcom/flurry/android/monolithic/sdk/impl/adx;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/adx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    move-object v2, v0

    move v0, v5

    .line 374
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v3, v4, :cond_2

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vm;->s(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)S

    move-result v3

    .line 376
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 377
    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adx;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    move-object v2, v0

    move v0, v5

    .line 380
    :cond_1
    add-int/lit8 v4, v0, 0x1

    aput-short v3, v2, v0

    move v0, v4

    .line 381
    goto :goto_1

    .line 382
    :cond_2
    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adx;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    move-object v0, p0

    goto :goto_0
.end method
