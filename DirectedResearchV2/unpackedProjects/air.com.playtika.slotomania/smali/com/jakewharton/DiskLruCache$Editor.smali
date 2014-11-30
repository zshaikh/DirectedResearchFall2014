.class public Lcom/jakewharton/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/jakewharton/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/jakewharton/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Entry;)V
    .locals 0
    .param p2, "entry"    # Lcom/jakewharton/DiskLruCache$Entry;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p2, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    .line 806
    return-void
.end method

.method static synthetic access$0(Lcom/jakewharton/DiskLruCache$Editor;Z)V
    .locals 0

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/jakewharton/DiskLruCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$1(Lcom/jakewharton/DiskLruCache$Editor;)Lcom/jakewharton/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/jakewharton/DiskLruCache;->completeEdit(Lcom/jakewharton/DiskLruCache$Editor;Z)V

    .line 881
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/jakewharton/DiskLruCache;->completeEdit(Lcom/jakewharton/DiskLruCache$Editor;Z)V

    .line 869
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jakewharton/DiskLruCache;->completeEdit(Lcom/jakewharton/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/jakewharton/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 830
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    # invokes: Lcom/jakewharton/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->access$4(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 815
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 817
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$1(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    monitor-exit v0

    const/4 v0, 0x0

    .line 820
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    monitor-enter v0

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 843
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 845
    :cond_0
    :try_start_1
    new-instance v1, Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/jakewharton/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    const/4 v0, 0x0

    .line 855
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    # getter for: Lcom/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->access$6()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 858
    # invokes: Lcom/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->access$5(Ljava/io/Closeable;)V

    .line 860
    return-void

    .line 857
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    .line 858
    :goto_0
    # invokes: Lcom/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->access$5(Ljava/io/Closeable;)V

    .line 859
    throw v2

    .line 857
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
