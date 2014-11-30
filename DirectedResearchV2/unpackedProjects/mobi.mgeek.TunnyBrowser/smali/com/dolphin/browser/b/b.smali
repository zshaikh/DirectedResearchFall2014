.class Lcom/dolphin/browser/b/b;
.super Ljava/lang/Thread;
.source "ImageManager.java"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:J

.field final synthetic c:Lcom/dolphin/browser/b/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/b/a;Ljava/util/Set;J)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dolphin/browser/b/b;->c:Lcom/dolphin/browser/b/a;

    iput-object p2, p0, Lcom/dolphin/browser/b/b;->a:Ljava/util/Set;

    iput-wide p3, p0, Lcom/dolphin/browser/b/b;->b:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-static {}, Lcom/dolphin/browser/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Clean expired images..."

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/b/b;->c:Lcom/dolphin/browser/b/a;

    invoke-static {v0}, Lcom/dolphin/browser/b/a;->a(Lcom/dolphin/browser/b/a;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/dolphin/browser/b/c;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/b/c;-><init>(Lcom/dolphin/browser/b/b;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 236
    if-nez v4, :cond_0

    .line 267
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/b/b;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/b/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    const-string v6, "%08x.cache"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_1
    array-length v6, v4

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v7, v4, v3

    .line 250
    iget-wide v8, p0, Lcom/dolphin/browser/b/b;->b:J

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf731400

    cmp-long v0, v8, v10

    if-lez v0, :cond_3

    .line 251
    if-eqz v5, :cond_5

    .line 252
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 260
    :goto_3
    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 248
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/b/b;->c:Lcom/dolphin/browser/b/a;

    invoke-static {v0}, Lcom/dolphin/browser/b/a;->b(Lcom/dolphin/browser/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/b/b;->b:J

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/b/m;->a(Landroid/content/Context;J)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method
