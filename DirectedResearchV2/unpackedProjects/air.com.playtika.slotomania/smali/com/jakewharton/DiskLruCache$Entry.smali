.class public Lcom/jakewharton/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/jakewharton/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/jakewharton/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$Entry;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput-object p2, p0, Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 939
    # getter for: Lcom/jakewharton/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/jakewharton/DiskLruCache;->access$7(Lcom/jakewharton/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J

    .line 940
    return-void
.end method

.method static synthetic access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jakewharton/DiskLruCache$Entry;)Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/jakewharton/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jakewharton/DiskLruCache$Entry;Z)V
    .locals 0

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/jakewharton/DiskLruCache$Entry;->readable:Z

    return-void
.end method

.method static synthetic access$4(Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;

    return-void
.end method

.method static synthetic access$5(Lcom/jakewharton/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/jakewharton/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/jakewharton/DiskLruCache$Entry;)[J
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$7(Lcom/jakewharton/DiskLruCache$Entry;)J
    .locals 2

    .prologue
    .line 935
    iget-wide v0, p0, Lcom/jakewharton/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/jakewharton/DiskLruCache$Entry;J)V
    .locals 0

    .prologue
    .line 935
    iput-wide p1, p0, Lcom/jakewharton/DiskLruCache$Entry;->sequenceNumber:J

    return-void
.end method

.method private cleanKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 972
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 968
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    array-length v2, p1

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache$Entry;->this$0:Lcom/jakewharton/DiskLruCache;

    # getter for: Lcom/jakewharton/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lcom/jakewharton/DiskLruCache;->access$7(Lcom/jakewharton/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 955
    invoke-direct {p0, p1}, Lcom/jakewharton/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 959
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 965
    return-void

    .line 960
    :cond_1
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 963
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/jakewharton/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 977
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Entry;->this$0:Lcom/jakewharton/DiskLruCache;

    # getter for: Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->access$8(Lcom/jakewharton/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jakewharton/DiskLruCache$Entry;->cleanKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 982
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Entry;->this$0:Lcom/jakewharton/DiskLruCache;

    # getter for: Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->access$8(Lcom/jakewharton/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jakewharton/DiskLruCache$Entry;->cleanKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 944
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 944
    :cond_0
    aget-wide v1, v3, v5

    .line 945
    .local v1, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 944
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
