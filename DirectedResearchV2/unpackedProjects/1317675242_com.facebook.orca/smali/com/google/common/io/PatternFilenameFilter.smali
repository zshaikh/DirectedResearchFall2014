.class public final Lcom/google/common/io/PatternFilenameFilter;
.super Ljava/lang/Object;
.source "PatternFilenameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/io/PatternFilenameFilter;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
