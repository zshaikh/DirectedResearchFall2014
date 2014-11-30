.class final Lcom/vungle/sdk/VungleAdvert$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/h$b;


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


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 2

    .prologue
    .line 406
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/model/RequestAd;->a()Lcom/vungle/sdk/z;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/sdk/z;->s:Lcom/vungle/sdk/aa;

    iput-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->b:Lcom/vungle/sdk/aa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const-string v1, "VungleAd.PostRoll"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$4;->b:Lcom/vungle/sdk/aa;

    iget-object v1, v1, Lcom/vungle/sdk/aa;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    const-string v1, "VungleAd.PostRoll"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, p1}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 497
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    :try_start_1
    const-string v1, "VungleAd.PostRoll"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 440
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 448
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    :try_start_1
    const-string v1, "VungleAd.PostRoll"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->b:Lcom/vungle/sdk/aa;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {}, Lcom/vungle/sdk/VungleAdvert;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$4;->b:Lcom/vungle/sdk/aa;

    iget-object v1, v1, Lcom/vungle/sdk/aa;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 468
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    :try_start_1
    const-string v1, "VungleAd.PostRoll"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 474
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "replay"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    .line 482
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    :try_start_1
    const-string v1, "VungleAd.PostRoll"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert$4;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v1, v2}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;I)V

    throw v0
.end method
