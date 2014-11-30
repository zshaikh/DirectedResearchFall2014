.class public Lcom/dolphin/browser/theme/b/e;
.super Lcom/dolphin/browser/theme/b/a;
.source "ThemeInstallHandler.java"


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/b/a;-><init>(ILjava/io/File;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 36
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    const-string v1, "theme.config"

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 61
    if-eqz v2, :cond_0

    .line 62
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 69
    :goto_1
    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    :cond_1
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 42
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 43
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 45
    invoke-static {v4}, Lcom/dolphin/browser/theme/b/f;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dolphin/browser/theme/b/e;->d:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/theme/b/e;->e:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/e;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 67
    :cond_2
    :goto_2
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 61
    :cond_3
    if-eqz v2, :cond_4

    .line 62
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 67
    :cond_4
    :goto_3
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 64
    :catch_2
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 51
    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 52
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 67
    :cond_5
    :goto_5
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 64
    :catch_4
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 53
    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 54
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 61
    if-eqz v2, :cond_6

    .line 62
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 67
    :cond_6
    :goto_7
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 64
    :catch_6
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_7

    .line 55
    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 56
    :goto_8
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 61
    if-eqz v2, :cond_7

    .line 62
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 67
    :cond_7
    :goto_9
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 64
    :catch_8
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_9

    .line 57
    :catch_9
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 58
    :goto_a
    :try_start_d
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 61
    if-eqz v2, :cond_8

    .line 62
    :try_start_e
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 67
    :cond_8
    :goto_b
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 64
    :catch_a
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_b

    .line 60
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 61
    :goto_c
    if-eqz v2, :cond_9

    .line 62
    :try_start_f
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 67
    :cond_9
    :goto_d
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 64
    :catch_b
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_d

    .line 60
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_c

    .line 57
    :catch_c
    move-exception v1

    move-object v3, v0

    goto :goto_a

    :catch_d
    move-exception v1

    goto :goto_a

    .line 55
    :catch_e
    move-exception v1

    move-object v3, v0

    goto :goto_8

    :catch_f
    move-exception v1

    goto :goto_8

    .line 53
    :catch_10
    move-exception v1

    move-object v3, v0

    goto :goto_6

    :catch_11
    move-exception v1

    goto :goto_6

    .line 51
    :catch_12
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catch_13
    move-exception v1

    goto :goto_4
.end method

.method public a()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/theme/b/e;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->a(Ljava/io/File;)V

    .line 76
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/theme/b/e;->c:Ljava/io/File;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/dolphin/browser/theme/ar;->a(Ljava/io/File;ZIZ)V

    .line 82
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/dolphin/browser/theme/R$string;->theme_download_complete_msg:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/dolphin/browser/theme/R$string;->theme_installed_dlg_msg:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/dolphin/browser/theme/R$string;->theme_install_duplicated:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/dolphin/browser/theme/R$string;->theme_activity_title:I

    return v0
.end method

.method public g()Ljava/io/File;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/e;->c:Ljava/io/File;

    if-nez v0, :cond_1

    .line 107
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string v1, "themes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/b/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/b/e;->c:Ljava/io/File;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/e;->c:Ljava/io/File;

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/b/e;->g()Ljava/io/File;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
