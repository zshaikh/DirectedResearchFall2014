.class public Lcom/dolphin/browser/Network/l;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/Network/n;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 315
    if-nez p0, :cond_0

    move-object v0, v1

    .line 331
    :goto_0
    return-object v0

    .line 318
    :cond_0
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of keyValuePairs must be a even number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 322
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 323
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v4, p0, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 326
    :cond_2
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 331
    goto :goto_0
.end method

.method public static final a(Lorg/apache/http/HttpEntity;Lcom/dolphin/browser/Network/m;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1, v0}, Lcom/dolphin/browser/Network/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    move-object v2, v0

    .line 125
    :goto_1
    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/Network/n;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 2

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "HttpUtils"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/HttpEntity;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 306
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->e(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 310
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 311
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;)V

    .line 312
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;JZ)Z
    .locals 6

    .prologue
    .line 269
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;JZLjava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    :goto_0
    return v0

    .line 216
    :cond_0
    if-nez p1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "saveToFile may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    const-string v2, "delete file failed"

    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 227
    :cond_2
    :try_start_0
    new-instance v2, Lcom/dolphin/browser/Network/h;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v2

    .line 232
    invoke-virtual {v2, p4}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 233
    :try_start_1
    iget-object v5, v2, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    .line 235
    const-string v4, "Content-Length"

    invoke-interface {v5, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 236
    array-length v6, v4

    if-lez v6, :cond_3

    .line 237
    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 238
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 240
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 241
    cmp-long v4, v6, p2

    if-lez v4, :cond_3

    .line 242
    const-string v0, "HttpUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Big Image Load failed:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " limtLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    move v0, v1

    goto :goto_0

    .line 249
    :cond_3
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 250
    const/16 v6, 0xc8

    if-ne v6, v4, :cond_4

    .line 252
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    :try_start_3
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 262
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto/16 :goto_0

    .line 256
    :cond_4
    :try_start_4
    const-string v0, "HttpUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server reply error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 262
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    :goto_1
    move v0, v1

    .line 265
    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 259
    :goto_2
    :try_start_5
    const-string v4, "HttpUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 262
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    .line 262
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    .line 262
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto :goto_3

    .line 258
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method

.method public static final b(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;)V

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/Network/n;)V
    .locals 8

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 181
    iget-object v2, p0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v3, "HttpUtils"

    const-string v4, "Http Error %d, content %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    return-void
.end method

.method public static final c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;Lcom/dolphin/browser/Network/m;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 137
    .line 138
    if-eqz p0, :cond_1

    .line 139
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 140
    const-string v2, "HttpUtils"

    const-string v3, "Response encoding = %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->e(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v1, v0}, Lcom/dolphin/browser/util/cr;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method public static e(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 156
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 157
    const-string v0, "HttpUtils"

    const-string v2, "Response encoding = %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    const/4 v0, 0x0

    .line 160
    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v0, "HttpUtils"

    const-string v1, "Wrapping result with gzip encoding."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    const-string v2, "deflate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v0, "HttpUtils"

    const-string v1, "Wrapping result with deflate encoding."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    .prologue
    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 274
    if-nez p0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->e(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 278
    if-nez v2, :cond_1

    .line 279
    new-array v0, v1, [B

    .line 302
    :goto_0
    return-object v0

    .line 281
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v1, v3

    .line 286
    if-gez v1, :cond_4

    .line 289
    :goto_1
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 291
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 293
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 294
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 297
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 300
    invoke-static {p0}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;)V

    .line 302
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
