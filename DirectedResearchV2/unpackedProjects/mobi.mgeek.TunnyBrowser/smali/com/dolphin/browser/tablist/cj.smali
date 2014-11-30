.class Lcom/dolphin/browser/tablist/cj;
.super Ljava/lang/Thread;
.source "TabThumbLoader.java"


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/dolphin/browser/tablist/ch;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ch;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cj;->c:Lcom/dolphin/browser/tablist/ch;

    iput-wide p2, p0, Lcom/dolphin/browser/tablist/cj;->a:J

    iput-object p4, p0, Lcom/dolphin/browser/tablist/cj;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cj;->c:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ch;->f(Lcom/dolphin/browser/tablist/ch;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 378
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 379
    iget-wide v4, p0, Lcom/dolphin/browser/tablist/cj;->a:J

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf731400

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 380
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 378
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cj;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/dolphin/browser/tablist/cj;->a:J

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/b/m;->b(Landroid/content/Context;J)V

    .line 385
    return-void
.end method
