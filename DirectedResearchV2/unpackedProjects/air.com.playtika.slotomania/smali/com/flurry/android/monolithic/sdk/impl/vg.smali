.class final Lcom/flurry/android/monolithic/sdk/impl/vg;
.super Lcom/flurry/android/monolithic/sdk/impl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ve",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 279
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ve;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 338
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->o:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vg;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 342
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_3

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->r()B

    move-result v0

    .line 353
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v2

    move-object v0, v1

    goto :goto_0

    .line 348
    :cond_3
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_4

    .line 349
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vg;->q:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    :cond_4
    move v0, v2

    .line 351
    goto :goto_1
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
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vg;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 285
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 288
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->c()Lcom/flurry/android/monolithic/sdk/impl/on;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->a(Lcom/flurry/android/monolithic/sdk/impl/on;)[B

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 292
    :cond_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->z()Ljava/lang/Object;

    move-result-object v1

    .line 294
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 295
    :cond_1
    instance-of v2, v1, [B

    if-eqz v2, :cond_2

    .line 296
    move-object v0, v1

    check-cast v0, [B

    move-object p0, v0

    check-cast p0, [B

    move-object v1, p0

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v1

    if-nez v1, :cond_3

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vg;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[B

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->h()Lcom/flurry/android/monolithic/sdk/impl/adp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/adp;->b()Lcom/flurry/android/monolithic/sdk/impl/ads;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ads;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    move v1, v6

    .line 306
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v4

    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v4, v5, :cond_8

    .line 309
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v4, v5, :cond_6

    .line 311
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->r()B

    move-result v4

    .line 319
    :goto_2
    array-length v5, v3

    if-lt v1, v5, :cond_5

    .line 320
    invoke-virtual {v2, v3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ads;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    move v1, v6

    .line 323
    :cond_5
    add-int/lit8 v5, v1, 0x1

    aput-byte v4, v3, v1

    move v1, v5

    .line 324
    goto :goto_1

    .line 314
    :cond_6
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v4, v5, :cond_7

    .line 315
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vg;->q:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    :cond_7
    move v4, v6

    .line 317
    goto :goto_2

    .line 325
    :cond_8
    invoke-virtual {v2, v3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ads;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object v1, p0

    goto :goto_0
.end method
