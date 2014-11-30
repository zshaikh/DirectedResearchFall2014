.class public Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;
.super Ljava/lang/Object;
.source "SimpleExclusionFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private mExclusionRegex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exclusionRegex"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;->mExclusionRegex:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 45
    .local v0, "isDir":Z
    if-nez v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;->mExclusionRegex:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 57
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 47
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;->mExclusionRegex:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cache"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "lib"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".amazonGamesService"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    .line 53
    goto :goto_0

    :cond_3
    move v1, v3

    .line 57
    goto :goto_0
.end method
