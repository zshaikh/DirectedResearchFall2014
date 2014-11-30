.class public final Lcom/vungle/sdk/ag;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Lcom/vungle/sdk/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "\\bcharset=([\\w\\-]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/ag;->a:Ljava/util/regex/Pattern;

    .line 27
    new-instance v0, Lcom/vungle/sdk/ag;

    invoke-direct {v0}, Lcom/vungle/sdk/ag;-><init>()V

    sput-object v0, Lcom/vungle/sdk/ag;->b:Lcom/vungle/sdk/ag;

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 32
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/sdk/ag;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/vungle/sdk/ag;->b:Lcom/vungle/sdk/ag;

    return-object v0
.end method

.method public static a(Lcom/vungle/sdk/ah;)Lcom/vungle/sdk/aj;
    .locals 13

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->i()V

    .line 48
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->c()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->b()Lcom/vungle/sdk/ah$a;

    move-result-object v3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/16 v1, 0x7530

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 55
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 57
    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v3}, Lcom/vungle/sdk/ah$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->f()Landroid/os/Bundle;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    if-nez v6, :cond_2

    .line 66
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Request header: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v1, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Request header: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v1, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 95
    :catch_0
    move-exception p0

    move-object p0, v0

    :goto_2
    const/16 v0, 0x259

    :try_start_2
    invoke-static {v0}, Lcom/vungle/sdk/aj;->a(I)Lcom/vungle/sdk/aj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 107
    if-eqz p0, :cond_a

    .line 108
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, v0

    .line 111
    :cond_3
    :goto_3
    return-object p0

    .line 78
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->h()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 83
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 88
    const/4 v4, 0x0

    if-eqz v1, :cond_6

    sget-object v5, Lcom/vungle/sdk/ag;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; content-type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; charset: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    div-int/lit8 v1, p0, 0x64

    const/4 v2, 0x3

    if-gt v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_5
    invoke-static {v1, v4}, Lcom/vungle/sdk/ag;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p0, v1}, Lcom/vungle/sdk/aj;->a(ILjava/lang/String;)Lcom/vungle/sdk/aj;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object p0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 90
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    goto :goto_5

    .line 99
    :catch_1
    move-exception p0

    move-object p0, v1

    :goto_6
    const/16 v0, 0x25a

    :try_start_5
    invoke-static {v0}, Lcom/vungle/sdk/aj;->a(I)Lcom/vungle/sdk/aj;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 107
    if-eqz p0, :cond_a

    .line 108
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, v0

    goto/16 :goto_3

    .line 103
    :catch_2
    move-exception p0

    move-object p0, v1

    :goto_7
    const/16 v0, 0x258

    :try_start_6
    invoke-static {v0}, Lcom/vungle/sdk/aj;->a(I)Lcom/vungle/sdk/aj;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 107
    if-eqz p0, :cond_a

    .line 108
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, v0

    goto/16 :goto_3

    .line 107
    :catchall_0
    move-exception p0

    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_9

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw p0

    .line 107
    :catchall_1
    move-exception p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v12, v0

    move-object v0, p0

    move-object p0, v12

    goto :goto_8

    .line 103
    :catch_3
    move-exception p0

    move-object p0, v0

    goto :goto_7

    .line 99
    :catch_4
    move-exception p0

    move-object p0, v0

    goto :goto_6

    .line 95
    :catch_5
    move-exception p0

    move-object p0, v1

    goto/16 :goto_2

    :cond_a
    move-object p0, v0

    goto/16 :goto_3
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "VungleNetwork"

    const-string v4, "Error closing input stream"

    .line 152
    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 155
    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 159
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 165
    :goto_2
    if-eqz v1, :cond_0

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    :cond_0
    :goto_3
    throw v0

    .line 154
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 164
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 161
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 165
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 171
    :goto_4
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    const-string v2, "VungleNetwork"

    const-string v2, "Error closing input stream"

    invoke-static {v5, v4, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 169
    :catch_1
    move-exception v1

    .line 170
    const-string v2, "VungleNetwork"

    const-string v2, "Error closing input stream"

    invoke-static {v5, v4, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
