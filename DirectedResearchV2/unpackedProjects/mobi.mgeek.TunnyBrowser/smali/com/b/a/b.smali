.class Lcom/b/a/b;
.super Ljava/lang/Thread;
.source "Box.java"


# instance fields
.field final synthetic a:Lcom/b/a/c/e;

.field final synthetic b:Lcom/b/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a;Lcom/b/a/c/e;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/b;->a:Lcom/b/a/c/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/w;->a(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/w;->a()Lcom/b/a/d/e;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/c;

    invoke-direct {v2, p0, v0}, Lcom/b/a/c;-><init>(Lcom/b/a/b;Lcom/b/a/d/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    iget-object v1, p0, Lcom/b/a/b;->b:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/d;

    invoke-direct {v2, p0, v0}, Lcom/b/a/d;-><init>(Lcom/b/a/b;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
