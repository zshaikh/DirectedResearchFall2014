.class Lorg/c/a/a/ab;
.super Ljava/lang/Object;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/c/a/a/a;

.field final synthetic b:Lorg/c/a/a/o;

.field final synthetic c:Lorg/c/a/a/aa;


# direct methods
.method constructor <init>(Lorg/c/a/a/aa;Lorg/c/a/a/a;Lorg/c/a/a/o;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/c/a/a/ab;->c:Lorg/c/a/a/aa;

    iput-object p2, p0, Lorg/c/a/a/ab;->a:Lorg/c/a/a/a;

    iput-object p3, p0, Lorg/c/a/a/ab;->b:Lorg/c/a/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/ab;->a:Lorg/c/a/a/a;

    .line 77
    :goto_0
    invoke-interface {v0}, Lorg/c/a/c/r;->j()Lorg/c/a/c/r;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 78
    if-eq v1, v0, :cond_0

    move-object v0, v1

    .line 81
    goto :goto_0

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/ab;->b:Lorg/c/a/a/o;

    iget-object v1, p0, Lorg/c/a/a/ab;->a:Lorg/c/a/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lorg/c/a/a/aa;->a()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 88
    :try_start_2
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Lorg/c/a/a/aa;->a()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/c/a/a/ab;->b:Lorg/c/a/a/o;

    iget-object v1, p0, Lorg/c/a/a/ab;->a:Lorg/c/a/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 102
    :catch_2
    move-exception v0

    .line 104
    invoke-static {}, Lorg/c/a/a/aa;->a()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    :cond_1
    :try_start_4
    invoke-static {}, Lorg/c/a/a/aa;->a()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 93
    iget-object v1, p0, Lorg/c/a/a/ab;->b:Lorg/c/a/a/o;

    invoke-virtual {v1, v0}, Lorg/c/a/a/o;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 98
    :catchall_0
    move-exception v0

    .line 100
    :try_start_5
    iget-object v1, p0, Lorg/c/a/a/ab;->b:Lorg/c/a/a/o;

    iget-object v2, p0, Lorg/c/a/a/ab;->a:Lorg/c/a/a/a;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    :goto_3
    throw v0

    .line 102
    :catch_3
    move-exception v1

    .line 104
    invoke-static {}, Lorg/c/a/a/aa;->a()Lorg/c/a/d/c/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
