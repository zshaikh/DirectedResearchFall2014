.class Lcom/dolphin/browser/download/p;
.super Ljava/io/File;
.source "StaticFile.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/download/p;->a:J

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/dolphin/browser/download/p;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 27
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/download/p;->a:J

    .line 29
    :cond_0
    iget-wide v0, p0, Lcom/dolphin/browser/download/p;->a:J

    return-wide v0
.end method
