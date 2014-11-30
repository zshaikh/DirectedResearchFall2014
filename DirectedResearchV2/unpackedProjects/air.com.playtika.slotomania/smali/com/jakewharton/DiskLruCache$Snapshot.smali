.class public Lcom/jakewharton/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Snapshot"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/jakewharton/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;
    .param p6, "files"    # [Ljava/io/File;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p2, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 755
    iput-wide p3, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 756
    iput-object p5, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 757
    iput-object p6, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->files:[Ljava/io/File;

    .line 758
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 791
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 794
    return-void

    .line 791
    :cond_0
    aget-object v0, v1, v3

    .line 792
    .local v0, "in":Ljava/io/InputStream;
    # invokes: Lcom/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->access$5(Ljava/io/Closeable;)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public edit()Lcom/jakewharton/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->this$0:Lcom/jakewharton/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInputStreamFile(I)Ljava/io/File;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->files:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/jakewharton/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->access$4(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
