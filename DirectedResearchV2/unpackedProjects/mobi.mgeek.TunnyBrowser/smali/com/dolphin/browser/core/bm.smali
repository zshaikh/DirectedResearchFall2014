.class Lcom/dolphin/browser/core/bm;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Landroid/graphics/Picture;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/dolphin/browser/core/bl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/bl;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/dolphin/browser/core/bm;->d:Lcom/dolphin/browser/core/bl;

    iput-object p2, p0, Lcom/dolphin/browser/core/bm;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/dolphin/browser/core/bm;->b:Landroid/graphics/Picture;

    iput-object p4, p0, Lcom/dolphin/browser/core/bm;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/dolphin/browser/core/bm;->a:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    iget-object v1, p0, Lcom/dolphin/browser/core/bm;->b:Landroid/graphics/Picture;

    invoke-virtual {v1, v0}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 163
    iget-object v1, p0, Lcom/dolphin/browser/core/bm;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/core/bm;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    if-eqz v0, :cond_0

    .line 169
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/core/bm;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 176
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 167
    :goto_2
    if-eqz v0, :cond_1

    .line 169
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 174
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/core/bm;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 169
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 174
    :cond_2
    :goto_5
    iget-object v1, p0, Lcom/dolphin/browser/core/bm;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 167
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_4

    .line 164
    :catch_4
    move-exception v1

    goto :goto_2
.end method
