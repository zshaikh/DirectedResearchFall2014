.class Lcom/b/a/n;
.super Ljava/lang/Thread;
.source "Box.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/b/a/c/c;

.field final synthetic e:Lcom/b/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a;Ljava/lang/String;J[Ljava/lang/String;Lcom/b/a/c/c;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/b/a/n;->e:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/n;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/b/a/n;->b:J

    iput-object p5, p0, Lcom/b/a/n;->c:[Ljava/lang/String;

    iput-object p6, p0, Lcom/b/a/n;->d:Lcom/b/a/c/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/b/a/n;->e:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/w;->a(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/n;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/b/a/n;->b:J

    iget-object v4, p0, Lcom/b/a/n;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/b/a/w;->a(Ljava/lang/String;J[Ljava/lang/String;)Lcom/b/a/d/a;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/b/a/n;->e:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/o;

    invoke-direct {v2, p0, v0}, Lcom/b/a/o;-><init>(Lcom/b/a/n;Lcom/b/a/d/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    iget-object v1, p0, Lcom/b/a/n;->e:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->b(Lcom/b/a/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/b/a/p;

    invoke-direct {v2, p0, v0}, Lcom/b/a/p;-><init>(Lcom/b/a/n;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
