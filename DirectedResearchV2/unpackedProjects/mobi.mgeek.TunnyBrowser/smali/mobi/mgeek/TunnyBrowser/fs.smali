.class public Lmobi/mgeek/TunnyBrowser/fs;
.super Ljava/lang/Object;
.source "QuickLaunchHelper.java"


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/fs;


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fs;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/fs;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/fs;->a:Lmobi/mgeek/TunnyBrowser/fs;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 69
    const-string v1, "splash"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    .line 70
    const-string v1, "splash.tmp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->c:Ljava/io/File;

    .line 71
    const-string v1, "splash.on"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    .line 72
    const-string v1, "landscape.on"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->e:Ljava/io/File;

    .line 73
    const-string v1, "portrait.on"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->f:Ljava/io/File;

    .line 74
    return-void
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/fs;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lmobi/mgeek/TunnyBrowser/fs;->a:Lmobi/mgeek/TunnyBrowser/fs;

    return-object v0
.end method

.method private a(Ljava/io/File;Z)V
    .locals 2

    .prologue
    .line 208
    if-eqz p2, :cond_1

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "QuickLaunchHelper"

    const-string v1, "create new file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "QuickLaunchHelper"

    const-string v1, "delete file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fs;->c(Landroid/content/Context;)Z

    move-result v0

    .line 113
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fs;->d(Landroid/content/Context;)Z

    move-result v1

    .line 114
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 115
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/fs;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 116
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fs;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fs;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_0

    .line 143
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/fs;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->e:Ljava/io/File;

    invoke-direct {p0, v1, v3}, Lmobi/mgeek/TunnyBrowser/fs;->a(Ljava/io/File;Z)V

    .line 199
    :goto_0
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/fs;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->f:Ljava/io/File;

    invoke-direct {p0, v0, v3}, Lmobi/mgeek/TunnyBrowser/fs;->a(Ljava/io/File;Z)V

    .line 204
    :goto_1
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->e:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lmobi/mgeek/TunnyBrowser/fs;->a(Ljava/io/File;Z)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->f:Ljava/io/File;

    invoke-direct {p0, v0, v2}, Lmobi/mgeek/TunnyBrowser/fs;->a(Ljava/io/File;Z)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fs;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 90
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 91
    invoke-static {p1}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthDip(Landroid/content/Context;)I

    move-result v4

    .line 92
    invoke-static {p1}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightDip(Landroid/content/Context;)I

    move-result v5

    .line 93
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    div-int/2addr v1, v3

    div-int v3, v4, v5

    if-ne v1, v3, :cond_0

    .line 97
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    const-string v2, "QuickLaunchHelper"

    const-string v3, "delete file failed"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public varargs a(II[Lmobi/mgeek/TunnyBrowser/ft;)V
    .locals 5

    .prologue
    .line 153
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->h:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v1, 0x0

    .line 158
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 159
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    const/4 v0, 0x0

    :goto_1
    array-length v4, p3

    if-ge v0, v4, :cond_3

    .line 161
    aget-object v4, p3, v0

    .line 162
    if-eqz v4, :cond_2

    .line 163
    invoke-interface {v4, v2}, Lmobi/mgeek/TunnyBrowser/ft;->a(Landroid/graphics/Canvas;)V

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->c:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 170
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 171
    const-string v0, "QuickLaunchHelper"

    const-string v1, "delete file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->c:Ljava/io/File;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 174
    const-string v0, "QuickLaunchHelper"

    const-string v1, "rename file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_5
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/fs;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 179
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 180
    const-string v0, "QuickLaunchHelper"

    const-string v2, "delete file failed"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_6
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 183
    const-string v0, "QuickLaunchHelper"

    const-string v2, "delete file failed"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :cond_7
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 177
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->h:Z

    .line 149
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->g:J

    .line 228
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->g:J

    sub-long/2addr v0, v2

    .line 233
    const-wide/16 v2, 0x5dc

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 235
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    :try_start_0
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    const-string v2, "QuickLaunchHelper"

    const-string v3, "create new file failed"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v2, 0x0

    const-string v3, "Launch time: %d, enable quick launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    :cond_2
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fs;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    const-string v2, "QuickLaunchHelper"

    const-string v3, "delete file failed"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    const-string v2, "Launch time: %d, disable quick launch"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v6, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    :cond_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fs;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "QuickLaunchHelper"

    const-string v1, "delete file failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
