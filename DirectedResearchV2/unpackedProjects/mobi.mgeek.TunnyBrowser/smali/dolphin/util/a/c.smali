.class public Ldolphin/util/a/c;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field private static b:[B


# instance fields
.field protected a:[Ldolphin/util/a/d;

.field private c:[B

.field private d:Lorg/apache/http/params/HttpParams;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ldolphin/util/a/c;->b:[B

    return-void
.end method

.method public constructor <init>([Ldolphin/util/a/d;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/util/a/c;->e:Z

    .line 142
    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Ldolphin/util/a/c;->setContentType(Ljava/lang/String;)V

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Ldolphin/util/a/c;->a:[Ldolphin/util/a/d;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/util/a/c;->d:Lorg/apache/http/params/HttpParams;

    .line 148
    return-void
.end method

.method private static b()[B
    .locals 5

    .prologue
    .line 108
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 109
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-array v2, v0, [B

    .line 110
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 111
    sget-object v3, Ldolphin/util/a/c;->b:[B

    sget-object v4, Ldolphin/util/a/c;->b:[B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected a()[B
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Ldolphin/util/a/c;->c:[B

    if-nez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Ldolphin/util/a/c;->d:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 163
    iget-object v0, p0, Ldolphin/util/a/c;->d:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.method.multipart.boundary"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    :cond_0
    if-eqz v0, :cond_2

    .line 166
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ldolphin/util/a/c;->c:[B

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Ldolphin/util/a/c;->c:[B

    return-object v0

    .line 168
    :cond_2
    invoke-static {}, Ldolphin/util/a/c;->b()[B

    move-result-object v0

    iput-object v0, p0, Ldolphin/util/a/c;->c:[B

    goto :goto_0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Ldolphin/util/a/c;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/util/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/util/a/c;->e:Z

    .line 220
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 221
    iget-object v1, p0, Ldolphin/util/a/c;->a:[Ldolphin/util/a/d;

    iget-object v2, p0, Ldolphin/util/a/c;->c:[B

    invoke-static {v0, v1, v2}, Ldolphin/util/a/d;->a(Ljava/io/OutputStream;[Ldolphin/util/a/d;[B)V

    .line 222
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    return-object v1
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Ldolphin/util/a/c;->a:[Ldolphin/util/a/d;

    invoke-virtual {p0}, Ldolphin/util/a/c;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/a/d;->a([Ldolphin/util/a/d;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 210
    :goto_0
    return-wide v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "MultipartEntity"

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {p0}, Ldolphin/util/a/c;->a()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isRepeatable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 178
    move v0, v1

    :goto_0
    iget-object v2, p0, Ldolphin/util/a/c;->a:[Ldolphin/util/a/d;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 179
    iget-object v2, p0, Ldolphin/util/a/c;->a:[Ldolphin/util/a/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ldolphin/util/a/d;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :goto_1
    return v1

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Ldolphin/util/a/c;->a:[Ldolphin/util/a/d;

    invoke-virtual {p0}, Ldolphin/util/a/c;->a()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Ldolphin/util/a/d;->a(Ljava/io/OutputStream;[Ldolphin/util/a/d;[B)V

    .line 190
    return-void
.end method
