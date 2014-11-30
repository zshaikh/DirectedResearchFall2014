.class public final Ldolphin/net/resource/ResourceHandlers;
.super Ljava/lang/Object;
.source "ResourceHandlers.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final COMPRESSION_LEVEL_BALANCE:I = 0x2

.field public static final COMPRESSION_LEVEL_DISABLED:I = 0x0

.field public static final COMPRESSION_LEVEL_MAX:I = 0x3

.field public static final COMPRESSION_LEVEL_MIN:I = 0x0

.field public static final COMPRESSION_LEVEL_QUALITY_FIRST:I = 0x1

.field public static final COMPRESSION_LEVEL_SIZE_FIRST:I = 0x3

.field static final DEBUG:Z = true

.field private static final DEFAULT_LEVELS:[I

.field public static final LOCALE_CN:I = 0x3

.field public static final LOCALE_INT:I = 0x2

.field public static final LOCALE_LOCAL:I = 0x1

.field public static final LOCALE_NONE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String;

.field static final NETWORK_LEVEL_FAST:I = 0x3

.field static final NETWORK_LEVEL_MID:I = 0x2

.field static final NETWORK_LEVEL_NONE:I = 0x0

.field static final NETWORK_LEVEL_SLOW:I = 0x1

.field public static final RESOURCE_TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final sCompressionLevels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static final sHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldolphin/net/resource/ResourceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocale:I

.field private static final sMimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNetworkLevel:I

.field private static sNetworkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Ldolphin/net/resource/ResourceHandlers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/net/resource/ResourceHandlers;->LOG_TAG:Ljava/lang/String;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldolphin/net/resource/ResourceHandlers;->DEFAULT_LEVELS:[I

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldolphin/net/resource/ResourceHandlers;->sCompressionLevels:Ljava/util/HashMap;

    .line 106
    return-void

    .line 89
    :array_0
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineNetworkLevelForMobile(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 246
    packed-switch p0, :pswitch_data_0

    .line 266
    :goto_0
    :pswitch_0
    return v0

    .line 248
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 264
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static determineNetworkNameForMobile(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    packed-switch p0, :pswitch_data_0

    .line 292
    :pswitch_0
    const-string v0, "2G"

    :goto_0
    return-object v0

    .line 273
    :pswitch_1
    const-string v0, "None"

    goto :goto_0

    .line 275
    :pswitch_2
    const-string v0, "2G"

    goto :goto_0

    .line 285
    :pswitch_3
    const-string v0, "3G"

    goto :goto_0

    .line 288
    :pswitch_4
    const-string v0, "CDMA"

    goto :goto_0

    .line 290
    :pswitch_5
    const-string v0, "4G"

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static determineNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 209
    packed-switch v2, :pswitch_data_0

    .line 236
    :pswitch_0
    const-string v0, "UNKNOW"

    move v3, v1

    move-object v1, v0

    move v0, v3

    .line 240
    :goto_1
    sput-object v1, Ldolphin/net/resource/ResourceHandlers;->sNetworkType:Ljava/lang/String;

    .line 241
    sput v0, Ldolphin/net/resource/ResourceHandlers;->sNetworkLevel:I

    .line 242
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sNetworkType:Ljava/lang/String;

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 212
    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->determineNetworkNameForMobile(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->determineNetworkLevelForMobile(I)I

    move-result v0

    goto :goto_1

    .line 216
    :pswitch_2
    const-string v1, "BLUETOOTH"

    .line 217
    const/4 v0, 0x1

    .line 218
    goto :goto_1

    .line 220
    :pswitch_3
    const-string v1, "LAN"

    goto :goto_1

    .line 224
    :pswitch_4
    const-string v1, "WIFI"

    goto :goto_1

    .line 228
    :pswitch_5
    const-string v1, "WIMAX"

    goto :goto_1

    .line 232
    :pswitch_6
    const-string v0, "NONE"

    move v3, v1

    move-object v1, v0

    move v0, v3

    .line 234
    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static final getEntityStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 159
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 160
    const/4 v0, 0x0

    .line 162
    if-eqz v1, :cond_3

    .line 163
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x-gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 183
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const-string v2, "deflate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 176
    :cond_2
    sget-object v2, Ldolphin/net/resource/ResourceHandlers;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "un-supported encoding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_3
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNetworkLevel()I
    .locals 1

    .prologue
    .line 353
    sget v0, Ldolphin/net/resource/ResourceHandlers;->sNetworkLevel:I

    return v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public static getResourceCompressionLevel(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 411
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sCompressionLevels:Ljava/util/HashMap;

    .line 413
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    :goto_0
    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getResourceHandlerFromMimeType(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;
    .locals 2

    .prologue
    .line 330
    invoke-static {p0}, Ldolphin/net/resource/ResourceHandlers;->getResourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    goto :goto_0
.end method

.method public static getResourceHandlerFromUrl(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;
    .locals 1

    .prologue
    .line 325
    invoke-static {p0}, Ldolphin/net/resource/ResourceHandlers;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->getResourceHandlerFromMimeType(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static final guessMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    invoke-static {p0}, Ldolphin/webkit/MimeTypeMap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 298
    sput-object p0, Ldolphin/net/resource/ResourceHandlers;->sContext:Landroid/content/Context;

    .line 299
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    invoke-static {p0}, Ldolphin/net/resource/e;->a(Landroid/content/Context;)V

    .line 301
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->determineNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    .line 302
    invoke-static {}, Ldolphin/net/resource/a;->a()Ldolphin/net/resource/ResourceHandler;

    move-result-object v0

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->registerHandler(Ldolphin/net/resource/ResourceHandler;)Z

    .line 303
    return-void
.end method

.method public static interceptRequestContextIfNeeded(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;
    .locals 4

    .prologue
    .line 364
    if-nez p0, :cond_1

    .line 365
    const/4 p0, 0x0

    .line 376
    :cond_0
    :goto_0
    return-object p0

    .line 367
    :cond_1
    iget-object v0, p0, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->getResourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 370
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ldolphin/net/resource/ResourceHandler;->shouldHandleRequestContext(Ldolphin/net/resource/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercept requests for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-interface {v0, p0}, Ldolphin/net/resource/ResourceHandler;->handleRequestContext(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;

    move-result-object p0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/net/resource/e;->b(Landroid/content/Context;)V

    .line 311
    return-void
.end method

.method public static processResource(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 338
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 339
    :try_start_0
    invoke-static {p0}, Ldolphin/net/resource/ResourceHandlers;->getResourceHandlerFromUrl(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p0}, Ldolphin/net/resource/ResourceHandler;->handleResource(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;

    move-result-object v0

    monitor-exit v1

    .line 344
    :goto_0
    return-object v0

    .line 343
    :cond_0
    monitor-exit v1

    .line 344
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final registerHandler(Ldolphin/net/resource/ResourceHandler;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    if-nez p0, :cond_0

    move v0, v2

    .line 139
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-interface {p0}, Ldolphin/net/resource/ResourceHandler;->resourceType()Ljava/lang/String;

    move-result-object v4

    .line 113
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {p0}, Ldolphin/net/resource/ResourceHandler;->getSupportedMimeTypes()Ljava/util/Collection;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 122
    :cond_2
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    const-string v6, "%s;%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 125
    sget-object v7, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 128
    instance-of v1, v0, Ldolphin/net/resource/d;

    if-eqz v1, :cond_3

    .line 129
    check-cast v0, Ldolphin/net/resource/d;

    .line 134
    :goto_2
    invoke-virtual {v0, p0}, Ldolphin/net/resource/d;->a(Ldolphin/net/resource/ResourceHandler;)V

    .line 135
    invoke-virtual {v0, v6}, Ldolphin/net/resource/d;->a(Ljava/lang/String;)V

    .line 136
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_3
    new-instance v1, Ldolphin/net/resource/d;

    invoke-direct {v1}, Ldolphin/net/resource/d;-><init>()V

    .line 132
    invoke-virtual {v1, v0}, Ldolphin/net/resource/d;->a(Ldolphin/net/resource/ResourceHandler;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move v0, v3

    .line 139
    goto :goto_0
.end method

.method public static resume()V
    .locals 1

    .prologue
    .line 306
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/net/resource/e;->a(Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method public static setLocale(I)V
    .locals 1

    .prologue
    .line 314
    sget v0, Ldolphin/net/resource/ResourceHandlers;->sLocale:I

    if-eq v0, p0, :cond_0

    .line 315
    invoke-static {p0}, Ldolphin/net/resource/a;->a(I)V

    .line 316
    sput p0, Ldolphin/net/resource/ResourceHandlers;->sLocale:I

    .line 318
    :cond_0
    return-void
.end method

.method public static setResourceCompressionLevel(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 387
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resource type may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    .line 391
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid compresison level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_2
    sget-object v1, Ldolphin/net/resource/ResourceHandlers;->sCompressionLevels:Ljava/util/HashMap;

    .line 394
    const/4 v0, -0x1

    .line 395
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 398
    :cond_3
    if-eq v0, p1, :cond_4

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_4
    return-void
.end method

.method public static final unregisterHandler(Ldolphin/net/resource/ResourceHandler;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-interface {p0}, Ldolphin/net/resource/ResourceHandler;->resourceType()Ljava/lang/String;

    move-result-object v1

    .line 147
    sget-object v2, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget-object v0, Ldolphin/net/resource/ResourceHandlers;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-interface {p0}, Ldolphin/net/resource/ResourceHandler;->getSupportedMimeTypes()Ljava/util/Collection;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    sget-object v2, Ldolphin/net/resource/ResourceHandlers;->sMimeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 155
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final wrapAsWebResourceResponse(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ldolphin/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 188
    invoke-static {p1}, Ldolphin/net/resource/ResourceHandlers;->getEntityStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 189
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 190
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    .line 191
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 192
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_1
    new-instance v3, Ldolphin/webkit/WebResourceResponse;

    invoke-direct {v3, v1, v0, v2}, Ldolphin/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v3

    .line 191
    :cond_0
    invoke-static {p0}, Ldolphin/net/resource/ResourceHandlers;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
