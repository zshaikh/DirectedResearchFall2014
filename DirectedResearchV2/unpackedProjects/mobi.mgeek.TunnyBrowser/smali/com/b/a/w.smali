.class public Lcom/b/a/w;
.super Ljava/lang/Object;
.source "BoxSynchronous.java"


# static fields
.field private static a:Lcom/b/a/w;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/b/a/w;->b:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/w;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/b/a/w;->a:Lcom/b/a/w;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/b/a/w;

    invoke-direct {v0, p0}, Lcom/b/a/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/b/a/w;->a:Lcom/b/a/w;

    .line 93
    :cond_0
    sget-object v0, Lcom/b/a/w;->a:Lcom/b/a/w;

    return-object v0
.end method

.method protected static a(Lcom/b/a/d/c;Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 274
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 275
    invoke-interface {v4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 276
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 277
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/e/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "Accept-Language"

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/e/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 280
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 282
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 289
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 290
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 291
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_2

    .line 292
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 293
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_3

    .line 319
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 296
    :cond_2
    if-ne v2, v3, :cond_1

    .line 297
    :try_start_4
    const-string v1, "unknown_http_response_code"

    invoke-virtual {p0, v1}, Lcom/b/a/d/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 302
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    .line 308
    :goto_4
    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_4

    .line 309
    :try_start_6
    const-string v1, "503_service_unavailable"

    invoke-virtual {p0, v1}, Lcom/b/a/d/c;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 316
    :try_start_7
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_5

    .line 319
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    .line 325
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_7 .. :try_end_7} :catch_3

    .line 337
    :goto_6
    return-void

    .line 312
    :cond_4
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 316
    :catchall_0
    move-exception v1

    move-object v2, v1

    :try_start_9
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_6

    .line 319
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    .line 325
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    .line 328
    :catch_1
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_6

    .line 325
    :cond_6
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2
    :try_end_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_a .. :try_end_a} :catch_3

    .line 331
    :catch_2
    move-exception v0

    .line 332
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_6

    .line 334
    :catch_3
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace()V

    goto :goto_6

    .line 304
    :catch_4
    move-exception v3

    goto :goto_4

    .line 300
    :catch_5
    move-exception v1

    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;J[Ljava/lang/String;)Lcom/b/a/d/a;
    .locals 6

    .prologue
    .line 202
    if-nez p4, :cond_1

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 208
    :goto_0
    const-string v0, "nozip"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const-string v0, "nozip"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    new-instance v3, Lcom/b/a/d/a;

    invoke-direct {v3}, Lcom/b/a/d/a;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/b/a/w;->b:Ljava/lang/String;

    const-string v2, "get_account_tree"

    invoke-static {v0, p1, v2}, Lcom/b/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 214
    const-string v0, "folder_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 206
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/b/a/w;->a(Lcom/b/a/d/c;Landroid/net/Uri;)V

    .line 219
    return-object v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLcom/b/a/c/a;Landroid/os/Handler;)Lcom/b/a/d/d;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/b/a/b/a;

    invoke-direct {v0, p1}, Lcom/b/a/b/a;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p6, p7}, Lcom/b/a/b/a;->a(Lcom/b/a/c/a;Landroid/os/Handler;)V

    .line 259
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/b/a/b/a;->a(Ljava/lang/String;Ljava/io/File;J)Lcom/b/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/b/a/d/e;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/b/a/d/e;

    invoke-direct {v0}, Lcom/b/a/d/e;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/b/a/w;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/e/b;->a(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "get_ticket"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/w;->a(Lcom/b/a/d/c;Landroid/net/Uri;)V

    .line 129
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/b/a/d/f;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/b/a/d/f;

    invoke-direct {v0}, Lcom/b/a/d/f;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/b/a/w;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/e/b;->a(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ticket"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "get_auth_token"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/w;->a(Lcom/b/a/d/c;Landroid/net/Uri;)V

    .line 146
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/b/a/d/f;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/b/a/d/f;

    invoke-direct {v0}, Lcom/b/a/d/f;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/b/a/w;->b:Ljava/lang/String;

    const-string v2, "get_account_info"

    invoke-static {v1, p1, v2}, Lcom/b/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/w;->a(Lcom/b/a/d/c;Landroid/net/Uri;)V

    .line 161
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/b/a/d/c;

    invoke-direct {v0}, Lcom/b/a/d/c;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/b/a/w;->b:Ljava/lang/String;

    const-string v2, "logout"

    invoke-static {v1, p1, v2}, Lcom/b/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/w;->a(Lcom/b/a/d/c;Landroid/net/Uri;)V

    .line 178
    invoke-virtual {v0}, Lcom/b/a/d/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
