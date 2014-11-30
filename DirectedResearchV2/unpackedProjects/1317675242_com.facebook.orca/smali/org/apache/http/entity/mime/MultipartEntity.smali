.class public Lorg/apache/http/entity/mime/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lorg/apache/james/mime4j/message/Message;

.field private final c:Lorg/apache/http/entity/mime/HttpMultipart;

.field private final d:Lorg/apache/http/Header;

.field private e:J

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntity;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/http/entity/mime/HttpMultipart;

    const-string v1, "form-data"

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    .line 78
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-virtual {p0, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->d:Lorg/apache/http/Header;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->f:Z

    .line 83
    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/james/mime4j/message/Message;

    .line 84
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    .line 86
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Message;->a(Lorg/apache/james/mime4j/message/Header;)V

    .line 87
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/message/Entity;)V

    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 91
    :goto_0
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 92
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Message;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->d:Lorg/apache/http/Header;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Fields;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->a(Lorg/apache/james/mime4j/parser/Field;)V

    .line 93
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 112
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    .line 113
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 114
    sget-object v4, Lorg/apache/http/entity/mime/MultipartEntity;->a:[C

    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntity;->a:[C

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    new-instance v1, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->f:Z

    .line 127
    return-void
.end method

.method public consumeContent()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->f:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/HttpMultipart;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->e:J

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->f:Z

    .line 154
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->e:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->d:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

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
    .line 130
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/HttpMultipart;->e()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 133
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object p0

    check-cast p0, Lorg/apache/http/entity/mime/content/ContentBody;

    .line 134
    invoke-interface {p0}, Lorg/apache/http/entity/mime/content/ContentBody;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

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

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/io/OutputStream;)V

    .line 180
    return-void
.end method
