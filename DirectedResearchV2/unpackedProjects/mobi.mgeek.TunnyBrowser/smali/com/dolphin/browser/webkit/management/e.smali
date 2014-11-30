.class Lcom/dolphin/browser/webkit/management/e;
.super Ljava/lang/Object;
.source "CacheHealthUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/browser/webkit/management/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/b;J)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/e;->b:Lcom/dolphin/browser/webkit/management/b;

    iput-wide p2, p0, Lcom/dolphin/browser/webkit/management/e;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dolphin/browser/webkit/management/e;->a:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
