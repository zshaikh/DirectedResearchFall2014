.class Lcom/dolphin/browser/gesture/f;
.super Lcom/dolphin/browser/gesture/h;
.source "GestureLibraries.java"


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p2}, Lcom/dolphin/browser/gesture/h;-><init>(Z)V

    .line 75
    iput-object p1, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    .line 76
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    iget-object v2, p0, Lcom/dolphin/browser/gesture/f;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/s;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 92
    goto :goto_0

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 100
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    const-string v3, "Gestures"

    const-string v5, "create new file failed"

    invoke-static {v3, v5}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    iget-object v2, p0, Lcom/dolphin/browser/gesture/f;->a:Lcom/dolphin/browser/gesture/s;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/gesture/s;->a(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :goto_1
    :try_start_2
    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not save the gesture library in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 112
    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    :goto_2
    :try_start_3
    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not save the gesture library in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 112
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    .line 108
    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 106
    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 118
    const/4 v1, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    iget-object v4, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    .line 121
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v3, p0, Lcom/dolphin/browser/gesture/f;->a:Lcom/dolphin/browser/gesture/s;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/dolphin/browser/gesture/s;->a(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 135
    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 127
    :goto_1
    :try_start_2
    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 132
    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 129
    :goto_2
    :try_start_3
    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/gesture/f;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 132
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 128
    :catch_2
    move-exception v0

    goto :goto_2

    .line 126
    :catch_3
    move-exception v0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method
