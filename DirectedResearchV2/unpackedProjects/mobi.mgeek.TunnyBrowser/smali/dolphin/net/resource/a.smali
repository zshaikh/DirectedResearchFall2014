.class Ldolphin/net/resource/a;
.super Ljava/lang/Object;
.source "ImageHandler.java"

# interfaces
.implements Ldolphin/net/resource/ResourceHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:[I

.field private static d:Ldolphin/net/resource/a;

.field private static e:Ldolphin/net/resource/b;

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const-class v0, Ldolphin/net/resource/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/net/resource/a;->a:Ljava/lang/String;

    .line 140
    const-string v0, "http://172.16.7.254"

    sput-object v0, Ldolphin/net/resource/a;->b:Ljava/lang/String;

    .line 147
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldolphin/net/resource/a;->c:[I

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldolphin/net/resource/a;->f:Ljava/util/List;

    return-void

    .line 147
    nop

    :array_0
    .array-data 4
        0x50
        0x3c
        0x2d
        0x1e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method static a()Ldolphin/net/resource/ResourceHandler;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Ldolphin/net/resource/a;->d:Ldolphin/net/resource/a;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ldolphin/net/resource/a;

    invoke-direct {v0}, Ldolphin/net/resource/a;-><init>()V

    sput-object v0, Ldolphin/net/resource/a;->d:Ldolphin/net/resource/a;

    .line 185
    :cond_0
    sget-object v0, Ldolphin/net/resource/a;->d:Ldolphin/net/resource/a;

    return-object v0
.end method

.method static synthetic a(Ldolphin/net/resource/b;)Ldolphin/net/resource/b;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Ldolphin/net/resource/a;->e:Ldolphin/net/resource/b;

    return-object p0
.end method

.method private static final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ldolphin/net/resource/a;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 212
    invoke-static {p0, v3}, Ldolphin/util/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 213
    sget-object v0, Ldolphin/net/resource/a;->c:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 214
    sget-object v0, Ldolphin/net/resource/a;->c:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ldolphin/net/resource/a;->c:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ldolphin/util/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 217
    sget-object v0, Ldolphin/net/resource/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v0, "imagecache"

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    const-string v0, "image"

    goto :goto_0
.end method

.method static a(I)V
    .locals 1

    .prologue
    .line 159
    packed-switch p0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const-string v0, "http://172.16.7.254"

    invoke-static {v0}, Ldolphin/net/resource/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_1
    const-string v0, "http://image.dolphin-browser.cn"

    invoke-static {v0}, Ldolphin/net/resource/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "http://image.dolphin-browser.cn"

    invoke-static {v0}, Ldolphin/net/resource/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    if-eqz p0, :cond_0

    sget-object v0, Ldolphin/net/resource/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sput-object p0, Ldolphin/net/resource/a;->b:Ljava/lang/String;

    .line 177
    invoke-static {}, Ldolphin/net/resource/b;->a()Ldolphin/net/resource/b;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/resource/b;->b()V

    .line 179
    :cond_0
    return-void
.end method

.method static synthetic b()Ldolphin/net/resource/b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldolphin/net/resource/a;->e:Ldolphin/net/resource/b;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 189
    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Ldolphin/net/resource/ResourceHandlers;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    sget-object v1, Ldolphin/net/resource/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldolphin/net/resource/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ldolphin/net/resource/a;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Ldolphin/net/resource/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Ldolphin/net/resource/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "imageclientconf"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSupportedMimeTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Ldolphin/net/resource/a;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public handleRequestContext(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;
    .locals 5

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    const-string v0, "image"

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->getResourceCompressionLevel(Ljava/lang/String;)I

    move-result v0

    .line 279
    if-gtz v0, :cond_1

    .line 286
    :goto_0
    return-object p1

    .line 282
    :cond_1
    iget-object v1, p1, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ldolphin/net/resource/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 284
    sget-object v1, Ldolphin/net/resource/a;->a:Ljava/lang/String;

    const-string v2, "Changed URL to -> %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p1}, Ldolphin/net/resource/f;->a()Ldolphin/net/resource/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/net/resource/h;->b(Ljava/lang/String;)Ldolphin/net/resource/h;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/resource/h;->a()Ldolphin/net/resource/h;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/resource/h;->b()Ldolphin/net/resource/f;

    move-result-object p1

    goto :goto_0
.end method

.method public handleResource(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
    .locals 7

    .prologue
    .line 233
    :try_start_0
    invoke-static {p1}, Ldolphin/net/resource/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Ldolphin/net/resource/a;->a:Ljava/lang/String;

    const-string v2, "Requesting compressed image -> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip; deflate"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "Connection"

    const-string v2, "Close"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 241
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 243
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 245
    sget-object v1, Ldolphin/net/resource/a;->a:Ljava/lang/String;

    const-string v2, "Got compressed image: %,d bytes."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {p1, v0}, Ldolphin/net/resource/ResourceHandlers;->wrapAsWebResourceResponse(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ldolphin/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 266
    sget-object v0, Ldolphin/net/resource/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string v0, "image"

    return-object v0
.end method

.method public shouldHandleRequestContext(Ldolphin/net/resource/f;)Z
    .locals 2

    .prologue
    .line 296
    const-string v0, "image"

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->getResourceCompressionLevel(Ljava/lang/String;)I

    move-result v0

    .line 297
    invoke-static {}, Ldolphin/net/resource/ResourceHandlers;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 298
    if-lez v0, :cond_0

    sget-object v0, Ldolphin/net/resource/a;->e:Ldolphin/net/resource/b;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/net/resource/a;->e:Ldolphin/net/resource/b;

    invoke-virtual {v0, v1}, Ldolphin/net/resource/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldHandleResource(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 256
    invoke-static {p1}, Ldolphin/net/resource/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image Compressor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldolphin/net/resource/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
