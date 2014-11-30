.class public Lorg/apache/james/mime4j/message/MessageWriter;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# static fields
.field public static final a:Lorg/apache/james/mime4j/message/MessageWriter;

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->c:[B

    .line 51
    new-instance v0, Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageWriter;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->a:Lorg/apache/james/mime4j/message/MessageWriter;

    return-void

    .line 45
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 46
    nop

    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private a(Lorg/apache/james/mime4j/message/Multipart;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->d()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing parent entity in multipart"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Entity;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 189
    if-nez v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing header in parent entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 195
    if-nez p0, :cond_2

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Type field not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    return-object p0
.end method

.method private a(Lorg/apache/james/mime4j/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/ContentTypeField;->a()Ljava/lang/String;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 213
    instance-of v0, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 215
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->a()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 173
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {p1, p3}, Lorg/apache/james/mime4j/codec/CodecUtil;->a(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 178
    goto :goto_0
.end method

.method public a(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 71
    instance-of v0, p1, Lorg/apache/james/mime4j/message/Message;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v0, :cond_1

    .line 74
    check-cast p1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Multipart;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 75
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/message/SingleBody;

    if-eqz v0, :cond_2

    .line 76
    check-cast p1, Lorg/apache/james/mime4j/message/SingleBody;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/message/SingleBody;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Header;Ljava/io/OutputStream;)V

    .line 99
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    instance-of v1, v0, Lorg/apache/james/mime4j/message/BinaryBody;

    .line 104
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, v1}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    .line 110
    if-eq v1, p2, :cond_2

    .line 111
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 112
    :cond_2
    return-void
.end method

.method public a(Lorg/apache/james/mime4j/message/Header;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Header;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/Field;

    .line 164
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->d()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 165
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 169
    return-void
.end method

.method public a(Lorg/apache/james/mime4j/message/Multipart;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Multipart;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->f()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 132
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 135
    sget-object v3, Lorg/apache/james/mime4j/message/MessageWriter;->c:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 137
    sget-object v3, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    .line 140
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 143
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->c:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 145
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->c:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 146
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->b:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->h()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 149
    return-void
.end method
