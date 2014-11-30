.class Lcom/d/g;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/d/f;


# direct methods
.method private constructor <init>(Lcom/d/f;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/d/g;->a:Lcom/d/f;

    .line 824
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 825
    return-void
.end method

.method synthetic constructor <init>(Lcom/d/f;Ljava/io/OutputStream;Lcom/d/d;)V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0, p1, p2}, Lcom/d/g;-><init>(Lcom/d/f;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/d/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    iget-object v0, p0, Lcom/d/g;->a:Lcom/d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/d/f;->a(Lcom/d/f;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/d/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    iget-object v0, p0, Lcom/d/g;->a:Lcom/d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/d/f;->a(Lcom/d/f;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/d/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    iget-object v0, p0, Lcom/d/g;->a:Lcom/d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/d/f;->a(Lcom/d/f;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/d/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    iget-object v0, p0, Lcom/d/g;->a:Lcom/d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/d/f;->a(Lcom/d/f;Z)Z

    goto :goto_0
.end method
