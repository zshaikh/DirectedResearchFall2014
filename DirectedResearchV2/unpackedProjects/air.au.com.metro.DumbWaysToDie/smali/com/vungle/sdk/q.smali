.class final Lcom/vungle/sdk/q;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 79
    .line 83
    :try_start_0
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/sdk/q;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/ah$a;->c:Lcom/vungle/sdk/ah$a;

    invoke-virtual {v1}, Lcom/vungle/sdk/ah$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v3

    .line 88
    :goto_0
    if-eqz v1, :cond_0

    .line 89
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string v2, "User-Agent"

    const-string v3, "VungleDroid/1.3.10"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "X-VUNGLE-TIMEZONE"

    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "X-VUNGLE-LANGUAGE"

    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "X-VUNGLE-BUNDLE-ID"

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 98
    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 109
    :cond_1
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST Response Code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_b

    .line 113
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [C

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 118
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    move-object v3, v6

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 127
    :goto_2
    :try_start_3
    sget-object v4, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 131
    if-eqz v1, :cond_2

    .line 132
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    :cond_2
    :goto_3
    if-eqz v2, :cond_9

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    .line 142
    :goto_4
    if-nez v0, :cond_3

    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    :cond_3
    return-object v0

    :cond_4
    move v1, v2

    .line 87
    goto/16 :goto_0

    .line 120
    :cond_5
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 123
    :try_start_6
    sget-object v3, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 131
    :goto_5
    if-eqz v1, :cond_6

    .line 132
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 138
    :cond_6
    :goto_6
    if-eqz v0, :cond_a

    .line 139
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_4

    .line 136
    :catch_1
    move-exception v1

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    goto :goto_6

    :catch_2
    move-exception v0

    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    goto :goto_3

    .line 130
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 131
    :goto_7
    if-eqz v1, :cond_7

    .line 132
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 138
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 136
    :catch_3
    move-exception v1

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    goto :goto_8

    .line 130
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 126
    :catch_4
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v6

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_6
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    :cond_9
    move-object v0, v3

    goto :goto_4

    :cond_a
    move-object v0, v2

    goto :goto_4

    :cond_b
    move-object v1, v6

    move-object v2, v6

    goto :goto_5
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x7530

    .line 226
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 227
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 228
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 230
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vungle/sdk/q;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 159
    :try_start_1
    sget-object v2, Lcom/vungle/sdk/ah$a;->a:Lcom/vungle/sdk/ah$a;

    invoke-virtual {v2}, Lcom/vungle/sdk/ah$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 162
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GET Response Code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 165
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 166
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [C

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 171
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    .line 179
    :goto_1
    :try_start_3
    sget-object v4, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 183
    if-eqz v2, :cond_0

    .line 184
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    :cond_1
    :goto_3
    return-object v0

    .line 173
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    sget-object v3, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    :goto_4
    if-eqz v2, :cond_3

    .line 184
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 190
    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 188
    :catch_1
    move-exception v2

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    goto :goto_5

    :catch_2
    move-exception v1

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    goto :goto_2

    .line 182
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 183
    :goto_6
    if-eqz v1, :cond_4

    .line 184
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 190
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 188
    :catch_3
    move-exception v1

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    goto :goto_7

    .line 182
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_6

    .line 178
    :catch_4
    move-exception v1

    move-object v2, v6

    move-object v3, v6

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_1

    :cond_6
    move-object v2, v6

    goto :goto_4
.end method
