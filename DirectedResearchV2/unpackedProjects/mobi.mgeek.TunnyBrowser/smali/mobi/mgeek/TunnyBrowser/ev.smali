.class public Lmobi/mgeek/TunnyBrowser/ev;
.super Lcom/dolphin/browser/util/f;
.source "FetchUrlMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field b:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 41
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ev;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ev;->a([Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    aget-object v1, p1, v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    .line 51
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v2, "useragent"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 55
    :try_start_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v3, "uri"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 97
    :cond_0
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 105
    :cond_1
    :goto_0
    return-object v0

    .line 60
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v4, "cookiedata"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 64
    const-string v4, "Cookie"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_3
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v4, "referer"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 69
    const-string v4, "Referer"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_4
    invoke-virtual {v2, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 78
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    .line 79
    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_5

    .line 81
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 82
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 83
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 97
    :cond_5
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 100
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "download management"

    const-string v3, "extension"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 89
    :goto_2
    if-eqz v1, :cond_6

    .line 91
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :cond_6
    :goto_3
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 92
    :catch_1
    move-exception v1

    .line 93
    :try_start_4
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 97
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v0

    .line 88
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ev;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 110
    if-eqz p1, :cond_2

    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "text/plain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/octet-stream"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v2, "hint"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    const-string v2, "hint"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ev;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ev;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/t/a;->a(Landroid/net/Uri;)V

    .line 133
    return-void
.end method
