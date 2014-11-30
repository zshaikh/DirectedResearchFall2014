.class public Lcom/dolphin/browser/theme/b/b;
.super Ljava/lang/Object;
.source "LocalWallpaperImporter.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/app/Activity;

.field private g:Lcom/dolphin/browser/theme/b/d;

.field private h:Ljava/io/File;

.field private i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v1

    .line 72
    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v2

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/dolphin/browser/theme/b/b;->a:I

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/dolphin/browser/theme/b/b;->b:I

    .line 76
    sget v1, Lcom/dolphin/browser/theme/b/b;->a:I

    sput v1, Lcom/dolphin/browser/theme/b/b;->c:I

    .line 77
    sget v1, Lcom/dolphin/browser/theme/b/b;->b:I

    sput v1, Lcom/dolphin/browser/theme/b/b;->d:I

    .line 79
    sget v1, Lcom/dolphin/browser/theme/R$string;->wallpaper_default_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/theme/b/b;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/dolphin/browser/theme/b/d;)V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/theme/b/b;->f:Landroid/app/Activity;

    .line 93
    iput-object p2, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->B()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp_wallpaper.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/b/b;->h:Ljava/io/File;

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->h:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/b/b;->i:Landroid/net/Uri;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/b/b;)Lcom/dolphin/browser/theme/b/d;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/b/b;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/b/b;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/b/d;->a(Ljava/io/File;)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    new-instance v0, Lcom/dolphin/browser/theme/b/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/b/c;-><init>(Lcom/dolphin/browser/theme/b/b;)V

    .line 153
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Ljava/io/File;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/b/b;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/aj;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 172
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 175
    invoke-static {}, Lcom/dolphin/browser/theme/b/b;->b()Ljava/lang/String;

    move-result-object v4

    .line 176
    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?>%n<theme_config>%n<id>%s</id>%n<name>%s</name>%n<icon>%s</icon>%n<wallpaper>%s</wallpaper>%n<color>%s</color>%n<package>%s</package>%n<source>%s</source>%n</theme_config>"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    const-string v7, "icon.png"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "wallpaper.jpg"

    aput-object v7, v6, v4

    const/4 v4, 0x4

    sget-object v7, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v7}, Lcom/dolphin/browser/theme/data/t;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "custom"

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 185
    const-string v5, "wallpapers"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 192
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 223
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 196
    :cond_5
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v5, "theme.config"

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    new-instance v5, Ljava/io/File;

    const-string v6, "wallpaper.jpg"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    new-instance v6, Ljava/io/File;

    const-string v7, "icon.png"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    const-string v7, "UTF-8"

    invoke-static {v2, v4, v7}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :try_start_3
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    new-instance v4, Lcom/dolphin/browser/theme/data/u;

    invoke-direct {v4}, Lcom/dolphin/browser/theme/data/u;-><init>()V

    .line 208
    invoke-virtual {v4, v3}, Lcom/dolphin/browser/theme/data/u;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 209
    if-eq v4, v3, :cond_6

    .line 210
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 211
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 219
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 220
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 221
    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 220
    :catch_2
    move-exception v1

    goto :goto_2

    .line 218
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->l()Ljava/util/List;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dolphin/browser/theme/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    .line 234
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 235
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/dolphin/browser/theme/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    sget-object v3, Lcom/dolphin/browser/theme/b/b;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 240
    if-le v0, v1, :cond_2

    move v1, v0

    :cond_2
    move v0, v1

    :goto_2
    move v1, v0

    .line 246
    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 247
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/dolphin/browser/theme/b/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "aspectX"

    sget v2, Lcom/dolphin/browser/theme/b/b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "aspectY"

    sget v2, Lcom/dolphin/browser/theme/b/b;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v1, "output"

    iget-object v2, p0, Lcom/dolphin/browser/theme/b/b;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/b/b;->f:Landroid/app/Activity;

    const v2, 0xffff

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/b/d;->a()V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 119
    const v0, 0xffff

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->g:Lcom/dolphin/browser/theme/b/d;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/b/d;->b()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/b;->h:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/b/b;->a(Ljava/io/File;)V

    .line 126
    :cond_1
    return-void
.end method
