.class public abstract Lcom/dolphin/browser/theme/b/a;
.super Ljava/lang/Object;
.source "InstallHandler.java"


# instance fields
.field protected a:I

.field protected b:Ljava/io/File;

.field protected c:Ljava/io/File;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/io/File;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/dolphin/browser/theme/b/a;->a:I

    .line 51
    iput-object p2, p0, Lcom/dolphin/browser/theme/b/a;->b:Ljava/io/File;

    .line 52
    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    packed-switch p0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    const-string v0, "themes"

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "fonts"

    goto :goto_0

    .line 139
    :pswitch_2
    const-string v0, "wallpapers"

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract a()V
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/dolphin/browser/theme/b/a;->a:I

    .line 56
    return-void
.end method

.method public a(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 6

    .prologue
    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 94
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 98
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    if-nez v1, :cond_4

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 107
    :cond_3
    const/4 v2, 0x0

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_2
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 121
    :cond_4
    :goto_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    .line 118
    :cond_5
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 123
    :cond_6
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 118
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 115
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method public abstract b()V
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/io/File;
.end method

.method public abstract h()Z
.end method

.method public i()Ljava/io/File;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/dolphin/browser/theme/b/a;->a:I

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/b/a;->c()I

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/dolphin/browser/theme/b/a;->a:I

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/b/a;->d()I

    move-result v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/b/a;->e()I

    move-result v0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/a;->b:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/b/a;->a(Ljava/io/File;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/dolphin/browser/theme/b/a;->d:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/a;->d:Ljava/lang/String;

    return-object v0
.end method
