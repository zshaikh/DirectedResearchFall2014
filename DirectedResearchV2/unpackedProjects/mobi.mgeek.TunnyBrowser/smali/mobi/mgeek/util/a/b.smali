.class public Lmobi/mgeek/util/a/b;
.super Ljava/lang/Object;
.source "FilePartSource.java"

# interfaces
.implements Lmobi/mgeek/util/a/f;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lmobi/mgeek/util/a/b;->a:Ljava/io/File;

    .line 55
    iput-object v0, p0, Lmobi/mgeek/util/a/b;->b:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lmobi/mgeek/util/a/b;->a:Ljava/io/File;

    .line 67
    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not a normal file."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not readable."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/a/b;->b:Ljava/lang/String;

    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lmobi/mgeek/util/a/b;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmobi/mgeek/util/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmobi/mgeek/util/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "noname"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/util/a/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lmobi/mgeek/util/a/b;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmobi/mgeek/util/a/b;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method
