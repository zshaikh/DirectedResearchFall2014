.class public Lcom/flurry/android/monolithic/sdk/impl/oh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lcom/flurry/android/monolithic/sdk/impl/oc;

.field private final c:Lorg/apache/http/Header;

.field private d:J

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oh;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oe;->a:Lcom/flurry/android/monolithic/sdk/impl/oe;

    invoke-direct {p0, v0, v1, v1}, Lcom/flurry/android/monolithic/sdk/impl/oh;-><init>(Lcom/flurry/android/monolithic/sdk/impl/oe;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/oe;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0, v0}, Lcom/flurry/android/monolithic/sdk/impl/oh;-><init>(Lcom/flurry/android/monolithic/sdk/impl/oe;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/oe;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/oh;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    if-nez p1, :cond_0

    .line 78
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oe;->a:Lcom/flurry/android/monolithic/sdk/impl/oe;

    .line 80
    :goto_1
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/oc;

    const-string v3, "form-data"

    invoke-direct {v2, v3, p3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/oc;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/oe;)V

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->b:Lcom/flurry/android/monolithic/sdk/impl/oc;

    .line 81
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {p0, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/oh;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->c:Lorg/apache/http/Header;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->e:Z

    .line 85
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 119
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    .line 120
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 121
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/oh;->a:[C

    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/oh;->a:[C

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    if-eqz p2, :cond_0

    .line 110
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/oa;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->b:Lcom/flurry/android/monolithic/sdk/impl/oc;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/oc;->a(Lcom/flurry/android/monolithic/sdk/impl/oa;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->e:Z

    .line 129
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/oj;)V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oa;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/oa;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/oj;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/oh;->a(Lcom/flurry/android/monolithic/sdk/impl/oa;)V

    .line 133
    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/oh;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->e:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->b:Lcom/flurry/android/monolithic/sdk/impl/oc;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/oc;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->d:J

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->e:Z

    .line 158
    :cond_0
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->d:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->c:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/oh;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->b:Lcom/flurry/android/monolithic/sdk/impl/oc;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/oc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/oa;

    .line 137
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/oa;->b()Lcom/flurry/android/monolithic/sdk/impl/oj;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Lcom/flurry/android/monolithic/sdk/impl/oj;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/oh;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/oh;->b:Lcom/flurry/android/monolithic/sdk/impl/oc;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/oc;->a(Ljava/io/OutputStream;)V

    .line 184
    return-void
.end method
