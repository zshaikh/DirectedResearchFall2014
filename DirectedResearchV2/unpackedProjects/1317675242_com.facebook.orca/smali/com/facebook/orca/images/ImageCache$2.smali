.class Lcom/facebook/orca/images/ImageCache$2;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 202
    const-string v0, ".lru"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
