.class Lcom/b/a/k;
.super Ljava/lang/Thread;
.source "Box.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/b/a/c/f;

.field final synthetic c:Lcom/b/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a;Ljava/lang/String;Lcom/b/a/c/f;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/b/a/k;->c:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/k;->b:Lcom/b/a/c/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/b/a/k;->c:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/w;->a(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/b/a/k;->c:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/l;

    invoke-direct {v2, p0, v0}, Lcom/b/a/l;-><init>(Lcom/b/a/k;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    iget-object v1, p0, Lcom/b/a/k;->c:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/m;

    invoke-direct {v2, p0, v0}, Lcom/b/a/m;-><init>(Lcom/b/a/k;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
