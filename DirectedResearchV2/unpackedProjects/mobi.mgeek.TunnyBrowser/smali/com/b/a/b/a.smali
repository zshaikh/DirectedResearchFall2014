.class public Lcom/b/a/b/a;
.super Ljava/lang/Object;
.source "BoxFileUpload.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/b/a/c/a;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/b/a/b/a;->a:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/a;)Lcom/b/a/c/a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/b/a;->b:Lcom/b/a/c/a;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/b/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/b/a;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;J)Lcom/b/a/d/d;
    .locals 11

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 133
    const-string v0, "upload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "overwrite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "new_copy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "action must be upload, overwrite or new_copy"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 141
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 143
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 144
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/e/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 145
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/e/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/e/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    iget-object v4, p0, Lcom/b/a/b/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 150
    const-string v4, "overwrite"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    const-string v4, "file_name"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    :cond_1
    :goto_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v3, Lcom/b/a/b/f;

    sget-object v6, Lorg/apache/b/a/a/e;->b:Lorg/apache/b/a/a/e;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v3, v6, v2, v7}, Lcom/b/a/b/f;-><init>(Lorg/apache/b/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 161
    iget-object v6, p0, Lcom/b/a/b/a;->b:Lcom/b/a/c/a;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/b/a/b/a;->c:Landroid/os/Handler;

    if-eqz v6, :cond_2

    .line 162
    new-instance v6, Lcom/b/a/b/b;

    invoke-direct {v6, p0}, Lcom/b/a/b/b;-><init>(Lcom/b/a/b/a;)V

    invoke-virtual {v3, v6}, Lcom/b/a/b/f;->a(Lcom/b/a/b/h;)V

    .line 179
    :cond_2
    const-string v6, "file_name"

    new-instance v7, Lcom/b/a/b/d;

    invoke-direct {v7, p0, v0, v1, v1}, Lcom/b/a/b/d;-><init>(Lcom/b/a/b/a;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lorg/apache/b/a/a/a/c;)V

    .line 186
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 190
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 191
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/e/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 192
    const-string v0, "Accept-Language"

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/e/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 215
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 221
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1f7

    if-ne v1, v3, :cond_a

    .line 222
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 223
    const-string v1, "503_service_unavailable"

    invoke-virtual {v0, v1}, Lcom/b/a/d/d;->a(Ljava/lang/String;)V

    .line 279
    :cond_4
    :goto_1
    return-object v0

    .line 153
    :cond_5
    const-string v4, "new_copy"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const-string v4, "new_file_name"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upload_cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 199
    :cond_7
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 200
    const-string v2, "upload_cancelled"

    invoke-virtual {v0, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v2}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    .line 204
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/b/a/b/a;->c:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/b/e;

    invoke-direct {v3, p0}, Lcom/b/a/b/e;-><init>(Lcom/b/a/b/a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v2}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_9
    throw v0

    .line 229
    :cond_a
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 230
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 234
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 236
    :cond_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 242
    const-string v1, "status"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_f

    .line 244
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 246
    :goto_3
    :try_start_4
    const-string v1, "file"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 247
    if-eqz v0, :cond_c

    .line 249
    :try_start_5
    invoke-static {}, Lcom/b/a/a;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/a;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    move v2, v5

    .line 257
    :goto_5
    :try_start_6
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_d

    .line 258
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_5

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 251
    :catch_1
    move-exception v1

    .line 252
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v1, v2

    .line 256
    goto :goto_4

    .line 254
    :catch_2
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v1, v2

    goto :goto_4

    :cond_c
    move-object v1, v2

    .line 264
    :cond_d
    if-nez v4, :cond_e

    move-object v0, v3

    :goto_6
    move-object v3, v0

    move-object v0, v1

    .line 276
    :goto_7
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 277
    invoke-virtual {v1, v0}, Lcom/b/a/d/d;->a(Lcom/b/a/a/a;)V

    .line 278
    invoke-virtual {v1, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 279
    goto/16 :goto_1

    .line 273
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v0, v2

    .line 274
    :goto_8
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_7

    .line 273
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v3, v4

    move-object v0, v2

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v3, v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    .line 268
    :catch_6
    move-exception v0

    move-object v0, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_7

    :cond_e
    move-object v0, v4

    goto :goto_6

    :cond_f
    move-object v4, v2

    goto :goto_3
.end method

.method public a(Lcom/b/a/c/a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/b/a/b/a;->b:Lcom/b/a/c/a;

    .line 105
    iput-object p2, p0, Lcom/b/a/b/a;->c:Landroid/os/Handler;

    .line 106
    return-void
.end method
