.class Lcom/facebook/Request$Serializer;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V
    .locals 1

    .prologue
    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 2161
    iput-object p1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    .line 2162
    iput-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    .line 2163
    return-void
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2304
    iget-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2307
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2308
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2312
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 2222
    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2225
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2226
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2227
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2230
    :cond_0
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2233
    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2235
    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2236
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2237
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2240
    :cond_0
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2292
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2293
    if-eqz p2, :cond_0

    .line 2294
    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2296
    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2297
    if-eqz p3, :cond_1

    .line 2298
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2300
    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2301
    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2247
    if-nez p3, :cond_0

    .line 2248
    const-string p3, "content/unknown"

    .line 2250
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/ProgressNoopOutputStream;

    if-eqz v0, :cond_3

    .line 2256
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    move v0, v1

    .line 2280
    :cond_1
    :goto_0
    const-string v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2281
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2282
    iget-object v2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v2, :cond_2

    .line 2283
    iget-object v2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<Data: %d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2285
    :cond_2
    return-void

    .line 2262
    :cond_3
    :try_start_0
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2263
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2265
    const/16 v0, 0x2000

    :try_start_2
    new-array v3, v0, [B

    move v0, v1

    .line 2267
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 2268
    iget-object v6, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2269
    add-int/2addr v0, v5

    goto :goto_1

    .line 2272
    :cond_4
    if-eqz v2, :cond_5

    .line 2273
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2275
    :cond_5
    if-eqz v4, :cond_1

    .line 2276
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    goto :goto_0

    .line 2272
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_6

    .line 2273
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2275
    :cond_6
    if-eqz v3, :cond_7

    .line 2276
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_7
    throw v0

    .line 2272
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public writeFile(Ljava/lang/String;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V
    .locals 2

    .prologue
    .line 2243
    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 2244
    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2315
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2316
    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
    .locals 2

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/RequestOutputStream;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/RequestOutputStream;

    invoke-interface {v0, p3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/Request;)V

    .line 2170
    :cond_0
    # invokes: Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/facebook/Request;->access$100(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    # invokes: Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/Request;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    :goto_0
    return-void

    .line 2172
    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2173
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2174
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    .line 2175
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2176
    :cond_3
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_4

    .line 2177
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :cond_4
    instance-of v0, p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz v0, :cond_5

    .line 2179
    check-cast p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V

    goto :goto_0

    .line 2181
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecordBoundary()V
    .locals 4

    .prologue
    .line 2288
    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2289
    return-void
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2187
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/RequestOutputStream;

    if-nez v0, :cond_1

    .line 2188
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/RequestOutputStream;

    .line 2193
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string v1, "["

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 2197
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2198
    invoke-interface {v0, v1}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/Request;)V

    .line 2199
    if-lez v2, :cond_2

    .line 2200
    const-string v1, ",%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2204
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 2205
    goto :goto_1

    .line 2202
    :cond_2
    const-string v1, "%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2206
    :cond_3
    const-string v0, "]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2207
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2213
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2215
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2216
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2219
    :cond_0
    return-void
.end method
