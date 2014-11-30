.class Lcom/b/a/q;
.super Ljava/lang/Thread;
.source "Box.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:J

.field final synthetic e:Lcom/b/a/c/a;

.field final synthetic f:Lcom/b/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLcom/b/a/c/a;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/b/a/q;->c:Ljava/io/File;

    iput-wide p5, p0, Lcom/b/a/q;->d:J

    iput-object p7, p0, Lcom/b/a/q;->e:Lcom/b/a/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/w;->a(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/q;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/q;->c:Ljava/io/File;

    iget-wide v4, p0, Lcom/b/a/q;->d:J

    iget-object v6, p0, Lcom/b/a/q;->e:Lcom/b/a/c/a;

    iget-object v7, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    invoke-static {v7}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/b/a/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLcom/b/a/c/a;Landroid/os/Handler;)Lcom/b/a/d/d;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/r;

    invoke-direct {v2, p0, v0}, Lcom/b/a/r;-><init>(Lcom/b/a/q;Lcom/b/a/d/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 527
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    iget-object v1, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/s;

    invoke-direct {v2, p0, v0}, Lcom/b/a/s;-><init>(Lcom/b/a/q;Ljava/io/FileNotFoundException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 509
    :catch_1
    move-exception v0

    .line 510
    iget-object v1, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/t;

    invoke-direct {v2, p0, v0}, Lcom/b/a/t;-><init>(Lcom/b/a/q;Ljava/net/MalformedURLException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 518
    :catch_2
    move-exception v0

    .line 519
    iget-object v1, p0, Lcom/b/a/q;->f:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/u;

    invoke-direct {v2, p0, v0}, Lcom/b/a/u;-><init>(Lcom/b/a/q;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
