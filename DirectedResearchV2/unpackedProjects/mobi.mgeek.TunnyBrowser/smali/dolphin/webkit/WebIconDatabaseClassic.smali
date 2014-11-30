.class Ldolphin/webkit/WebIconDatabaseClassic;
.super Ldolphin/webkit/WebIconDatabase;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static a:Ldolphin/webkit/WebIconDatabaseClassic;


# instance fields
.field private final b:Ldolphin/webkit/hl;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Ldolphin/webkit/WebIconDatabase;-><init>()V

    .line 41
    new-instance v0, Ldolphin/webkit/hl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldolphin/webkit/hl;-><init>(Ldolphin/webkit/hk;)V

    iput-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    .line 284
    return-void
.end method

.method public static a()Ldolphin/webkit/WebIconDatabaseClassic;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Ldolphin/webkit/WebIconDatabaseClassic;->a:Ldolphin/webkit/WebIconDatabaseClassic;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ldolphin/webkit/WebIconDatabaseClassic;

    invoke-direct {v0}, Ldolphin/webkit/WebIconDatabaseClassic;-><init>()V

    sput-object v0, Ldolphin/webkit/WebIconDatabaseClassic;->a:Ldolphin/webkit/WebIconDatabaseClassic;

    .line 270
    :cond_0
    sget-object v0, Ldolphin/webkit/WebIconDatabaseClassic;->a:Ldolphin/webkit/WebIconDatabaseClassic;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Ldolphin/webkit/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Ldolphin/webkit/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Ldolphin/webkit/WebIconDatabaseClassic;->nativeClose()V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Ldolphin/webkit/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Ldolphin/webkit/WebIconDatabaseClassic;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Ldolphin/webkit/WebIconDatabaseClassic;->nativeRemoveAllIcons()V

    return-void
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeOpen(Ljava/lang/String;)V
.end method

.method private static native nativeReleaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveAllIcons()V
.end method

.method private static native nativeRetainIconForPageUrl(Ljava/lang/String;)V
.end method


# virtual methods
.method b()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    invoke-static {v0}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;)V

    .line 279
    return-void
.end method

.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 3

    .prologue
    .line 223
    if-nez p3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    invoke-static {v0}, Ldolphin/webkit/hl;->a(Ldolphin/webkit/hl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    const-string v1, "contentResolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "where"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "listener"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 239
    iget-object v1, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    invoke-static {v1, v0}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    .line 196
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 181
    if-eqz p1, :cond_1

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    .line 190
    :cond_1
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    .line 257
    :cond_0
    return-void
.end method

.method public removeAllIcons()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 3

    .prologue
    .line 211
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    invoke-static {v1, v0}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Ldolphin/webkit/WebIconDatabaseClassic;->b:Ldolphin/webkit/hl;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hl;->b(Ldolphin/webkit/hl;Landroid/os/Message;)V

    .line 249
    :cond_0
    return-void
.end method
