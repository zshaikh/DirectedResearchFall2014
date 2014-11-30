.class public Ldolphin/webkit/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field allowOrigin:Ljava/lang/String;

.field contentLength:J

.field contentdisposition:Ljava/lang/String;

.field crossDomain:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field etag:Ljava/lang/String;

.field expires:J

.field expiresString:Ljava/lang/String;

.field httpStatusCode:I

.field inStream:Ljava/io/InputStream;

.field lastModified:Ljava/lang/String;

.field localPath:Ljava/lang/String;

.field location:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field outFile:Ljava/io/File;

.field outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    return-wide v0
.end method

.method public getExpiresString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setContentLength(J)V
    .locals 0

    .prologue
    .line 190
    iput-wide p1, p0, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    .line 191
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Ldolphin/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    .line 180
    return-void
.end method
