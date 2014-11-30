.class Lcom/d/d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/d/c;


# direct methods
.method constructor <init>(Lcom/d/c;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/d/d;->a:Lcom/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/d/d;->a:Lcom/d/c;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/d/d;->a:Lcom/d/c;

    invoke-static {v0}, Lcom/d/c;->a(Lcom/d/c;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    monitor-exit v1

    .line 175
    :goto_0
    return-object v3

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/d/d;->a:Lcom/d/c;

    invoke-static {v0}, Lcom/d/c;->b(Lcom/d/c;)V

    .line 170
    iget-object v0, p0, Lcom/d/d;->a:Lcom/d/c;

    invoke-static {v0}, Lcom/d/c;->c(Lcom/d/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/d/d;->a:Lcom/d/c;

    invoke-static {v0}, Lcom/d/c;->d(Lcom/d/c;)V

    .line 172
    iget-object v0, p0, Lcom/d/d;->a:Lcom/d/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/d/c;->a(Lcom/d/c;I)I

    .line 174
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/d/d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
