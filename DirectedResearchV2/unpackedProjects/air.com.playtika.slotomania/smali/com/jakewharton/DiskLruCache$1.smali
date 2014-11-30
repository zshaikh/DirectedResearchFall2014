.class Lcom/jakewharton/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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
.field final synthetic this$0:Lcom/jakewharton/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/jakewharton/DiskLruCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    # getter for: Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->access$0(Lcom/jakewharton/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 258
    monitor-exit v0

    move-object v0, v3

    .line 266
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    # invokes: Lcom/jakewharton/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->access$1(Lcom/jakewharton/DiskLruCache;)V

    .line 261
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    # invokes: Lcom/jakewharton/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->access$2(Lcom/jakewharton/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->rebuildJournal()V

    .line 263
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$1;->this$0:Lcom/jakewharton/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jakewharton/DiskLruCache;->access$3(Lcom/jakewharton/DiskLruCache;I)V

    .line 256
    :cond_1
    monitor-exit v0

    move-object v0, v3

    .line 266
    goto :goto_0

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
