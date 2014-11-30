.class Lorg/c/a/a/l;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/c/a/a/k;


# direct methods
.method constructor <init>(Lorg/c/a/a/k;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lorg/c/a/a/l;->a:Lorg/c/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 434
    :goto_0
    iget-object v0, p0, Lorg/c/a/a/l;->a:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/c/a/a/l;->a:Lorg/c/a/a/k;

    invoke-static {v0}, Lorg/c/a/a/k;->a(Lorg/c/a/a/k;)Lorg/c/a/d/g/e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/d/g/e;->c(J)V

    .line 437
    iget-object v0, p0, Lorg/c/a/a/l;->a:Lorg/c/a/a/k;

    invoke-static {v0}, Lorg/c/a/a/k;->b(Lorg/c/a/a/k;)Lorg/c/a/d/g/e;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/l;->a:Lorg/c/a/a/k;

    invoke-static {v1}, Lorg/c/a/a/k;->a(Lorg/c/a/a/k;)Lorg/c/a/d/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/d/g/e;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/d/g/e;->c(J)V

    .line 440
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method
