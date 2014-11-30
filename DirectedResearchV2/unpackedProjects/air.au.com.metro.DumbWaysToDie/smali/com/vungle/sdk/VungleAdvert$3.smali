.class final Lcom/vungle/sdk/VungleAdvert$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/j$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleAdvert;->a(I)Lcom/vungle/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleAdvert;

.field private b:Lcom/vungle/sdk/aa;

.field private c:I


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->c:I

    .line 250
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/model/RequestAd;->a()Lcom/vungle/sdk/z;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/sdk/z;->s:Lcom/vungle/sdk/aa;

    iput-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    iget-object v1, v1, Lcom/vungle/sdk/aa;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    iget-object v0, v0, Lcom/vungle/sdk/aa;->a:[Lcom/vungle/sdk/aa$a;

    .line 295
    if-eqz v0, :cond_0

    array-length v1, v0

    iget v2, p0, Lcom/vungle/sdk/VungleAdvert$3;->c:I

    if-le v1, v2, :cond_0

    .line 296
    iget v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->c:I

    aget-object v0, v0, v1

    .line 297
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, v0, Lcom/vungle/sdk/aa$a;->a:Ljava/lang/Float;

    .line 299
    div-float v2, p1, p2

    .line 300
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v1, v1, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/vungle/sdk/aa$a;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V

    .line 304
    iget v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(JJ)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video Completion. Len: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v1, p3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v0

    iput-wide p1, v0, Lcom/vungle/sdk/y;->a:J

    .line 322
    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v0

    iput-wide p3, v0, Lcom/vungle/sdk/y;->c:J

    .line 323
    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v0

    iput-wide p3, v0, Lcom/vungle/sdk/y;->b:J

    .line 324
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->b()Lcom/vungle/sdk/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    iget-object v0, v0, Lcom/vungle/sdk/aa;->a:[Lcom/vungle/sdk/aa$a;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    array-length v1, v0

    .line 330
    if-lez v1, :cond_0

    .line 331
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 332
    iget-object v1, v0, Lcom/vungle/sdk/aa$a;->a:Ljava/lang/Float;

    .line 333
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 334
    iget-object v0, v0, Lcom/vungle/sdk/aa$a;->b:[Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v1, v1, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v5}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 348
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    :try_start_1
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v5}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v5}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method

.method public final a(JJJ)V
    .locals 6

    .prologue
    const-wide v4, 0x408f400000000000L

    const/4 v3, 0x3

    .line 354
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video Cancelled. Watched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v1, p3

    div-double/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v1, p5

    div-double/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v0

    iput-wide p1, v0, Lcom/vungle/sdk/y;->a:J

    .line 358
    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v0

    iput-wide p3, v0, Lcom/vungle/sdk/y;->c:J

    .line 359
    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v0

    iput-wide p5, v0, Lcom/vungle/sdk/y;->b:J

    .line 360
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->b()Lcom/vungle/sdk/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    iget-object v1, v1, Lcom/vungle/sdk/aa;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v3}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 373
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    :try_start_1
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v3}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v3}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->b:Lcom/vungle/sdk/aa;

    iget-object v1, v1, Lcom/vungle/sdk/aa;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 379
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "videoerror"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 387
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    :try_start_1
    const-string v1, "VungleAd.Video"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$3;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method
