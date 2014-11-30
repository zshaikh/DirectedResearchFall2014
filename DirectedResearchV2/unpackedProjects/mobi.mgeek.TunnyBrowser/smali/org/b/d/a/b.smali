.class Lorg/b/d/a/b;
.super Ljava/lang/Object;
.source "WebSocketTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/b/a/e;

.field final synthetic c:Lorg/b/b/a/j;

.field final synthetic d:Lorg/b/d/a/a;


# direct methods
.method constructor <init>(Lorg/b/d/a/a;JLorg/b/a/e;Lorg/b/b/a/j;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/b/d/a/b;->d:Lorg/b/d/a/a;

    iput-wide p2, p0, Lorg/b/d/a/b;->a:J

    iput-object p4, p0, Lorg/b/d/a/b;->b:Lorg/b/a/e;

    iput-object p5, p0, Lorg/b/d/a/b;->c:Lorg/b/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    iget-wide v2, p0, Lorg/b/d/a/b;->a:J

    sub-long/2addr v0, v2

    .line 333
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 334
    iget-object v2, p0, Lorg/b/d/a/b;->d:Lorg/b/d/a/a;

    const-string v3, "Expired too late {} for {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lorg/b/d/a/b;->b:Lorg/b/a/e;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/b/d/a/b;->d:Lorg/b/d/a/a;

    iget-object v1, p0, Lorg/b/d/a/b;->b:Lorg/b/a/e;

    invoke-static {v0, v1}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;Lorg/b/a/d;)Lorg/b/d/a/d;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lorg/b/d/a/b;->c:Lorg/b/b/a/j;

    new-array v1, v6, [Lorg/b/a/d;

    iget-object v2, p0, Lorg/b/d/a/b;->b:Lorg/b/a/e;

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lorg/b/b/a/j;->b([Lorg/b/a/d;)V

    .line 340
    :cond_1
    return-void
.end method
