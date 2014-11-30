.class Lcom/b/a/e;
.super Ljava/lang/Thread;
.source "Box.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/b/a/c/d;

.field final synthetic c:Lcom/b/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a;Ljava/lang/String;Lcom/b/a/c/d;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/b/a/e;->c:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/e;->b:Lcom/b/a/c/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/b/a/e;->c:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/w;->a(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/w;->b(Ljava/lang/String;)Lcom/b/a/d/f;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/b/a/e;->c:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/f;

    invoke-direct {v2, p0, v0}, Lcom/b/a/f;-><init>(Lcom/b/a/e;Lcom/b/a/d/f;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    iget-object v1, p0, Lcom/b/a/e;->c:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/g;

    invoke-direct {v2, p0, v0}, Lcom/b/a/g;-><init>(Lcom/b/a/e;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
