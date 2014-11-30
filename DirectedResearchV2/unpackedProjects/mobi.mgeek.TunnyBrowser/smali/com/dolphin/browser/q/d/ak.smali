.class public Lcom/dolphin/browser/q/d/ak;
.super Ljava/lang/Object;
.source "TwitterWebServiceClient.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/dolphin/browser/q/d/am;",
            ">;"
        }
    .end annotation
.end field

.field private b:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private c:Lcom/dolphin/browser/q/d/j;

.field private d:Lcom/dolphin/browser/Network/k;


# direct methods
.method public constructor <init>(Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/ak;->a:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Lcom/dolphin/browser/q/d/al;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/d/al;-><init>(Lcom/dolphin/browser/q/d/ak;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/ak;->d:Lcom/dolphin/browser/Network/k;

    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ak;->b:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 67
    new-instance v0, Lcom/dolphin/browser/q/d/j;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/ak;->c:Lcom/dolphin/browser/q/d/j;

    .line 68
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolphin/browser/q/d/ak;->d:Lcom/dolphin/browser/Network/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Lcom/dolphin/browser/Network/k;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 278
    iget-object v1, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 279
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Lcom/dolphin/browser/q/d/an;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/q/d/an;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/ak;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ak;->b:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/q/d/r;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 188
    :try_start_0
    new-instance v1, Lorg/apache/b/a/a/h;

    sget-object v2, Lorg/apache/b/a/a/e;->b:Lorg/apache/b/a/a/e;

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lorg/apache/b/a/a/h;-><init>(Lorg/apache/b/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 190
    const-string v2, "status"

    new-instance v3, Lorg/apache/b/a/a/a/f;

    iget-object v4, p1, Lcom/dolphin/browser/q/d/r;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/b/a/a/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/b/a/a/h;->a(Ljava/lang/String;Lorg/apache/b/a/a/a/c;)V

    .line 193
    iget-object v2, p1, Lcom/dolphin/browser/q/d/r;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p1, Lcom/dolphin/browser/q/d/r;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/q/d/ak;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 199
    :goto_0
    if-nez v2, :cond_1

    .line 212
    :goto_1
    return-object v0

    .line 196
    :cond_0
    iget-object v2, p1, Lcom/dolphin/browser/q/d/r;->b:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/q/d/ak;->a(Ljava/io/File;)[B

    move-result-object v2

    goto :goto_0

    .line 203
    :cond_1
    new-instance v3, Lorg/apache/b/a/a/a/b;

    const-string v4, "application/octet-stream"

    iget-object v5, p1, Lcom/dolphin/browser/q/d/r;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/b/a/a/a/b;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "media[]"

    invoke-virtual {v1, v2, v3}, Lorg/apache/b/a/a/h;->a(Ljava/lang/String;Lorg/apache/b/a/a/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 206
    goto :goto_1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 219
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/File;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 227
    .line 230
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 234
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 235
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 241
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 242
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 244
    :goto_2
    return-object v0

    .line 237
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 241
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 242
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 241
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 242
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 241
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 238
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/q/d/ak;)Lcom/dolphin/browser/q/d/j;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ak;->c:Lcom/dolphin/browser/q/d/j;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolphin/browser/q/d/ak;->d:Lcom/dolphin/browser/Network/k;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Lcom/dolphin/browser/Network/k;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v2, "Share"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 260
    iget-object v1, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 261
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Lcom/dolphin/browser/q/d/an;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/q/d/an;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 265
    :catch_1
    move-exception v0

    .line 266
    new-instance v1, Lcom/dolphin/browser/q/d/an;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/q/d/an;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/d/r;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dolphintwittershare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.twitter.com/1.1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lorg/apache/http/Header;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/form-data;boundary="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 167
    const-string v4, "UTF-8"

    invoke-direct {p0, p2, v1, v4}, Lcom/dolphin/browser/q/d/ak;->a(Lcom/dolphin/browser/q/d/r;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 168
    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    new-instance v4, Lcom/dolphin/browser/Network/h;

    invoke-direct {v4, v2}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolphin/browser/q/d/ak;->d:Lcom/dolphin/browser/Network/k;

    invoke-virtual {v4, v2}, Lcom/dolphin/browser/Network/h;->a(Lcom/dolphin/browser/Network/k;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    const-string v4, "POST"

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    const-string v4, "Share"

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v1

    .line 176
    iget-object v1, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 177
    const-string v0, "True"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "https://api.twitter.com/1.1/"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 139
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/d/ak;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_1
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 155
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.twitter.com/1.1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/q/d/ak;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    if-nez p1, :cond_1

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/dolphin/browser/q/d/ak;->a(Lcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ak;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/d/am;

    .line 93
    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/am;->e()Lcom/dolphin/browser/util/p;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    if-ne v1, v2, :cond_2

    if-eqz p4, :cond_0

    .line 100
    :cond_2
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/q/d/am;->b(Z)Z

    .line 103
    :cond_3
    new-instance v0, Lcom/dolphin/browser/q/d/am;

    invoke-direct {v0, p0, p3}, Lcom/dolphin/browser/q/d/am;-><init>(Lcom/dolphin/browser/q/d/ak;Lcom/dolphin/browser/share/g;)V

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ak;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    new-array v1, v3, [Lcom/dolphin/browser/q/d/d;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/d/d;Lcom/dolphin/browser/share/g;)V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/dolphin/browser/q/d/am;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/d/am;-><init>(Lcom/dolphin/browser/q/d/ak;Lcom/dolphin/browser/share/g;)V

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolphin/browser/q/d/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 113
    return-void
.end method
