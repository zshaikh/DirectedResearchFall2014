.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Lorg/apache/james/mime4j/message/Multipart;
.source "HttpMultipart.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private static final b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;


# instance fields
.field private c:Lorg/apache/http/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 86
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 93
    return-void
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .locals 4

    .prologue
    .line 67
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->a([BII)V

    .line 70
    return-object v1
.end method

.method private a(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->e()Ljava/util/List;

    move-result-object v2

    .line 137
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->a()Ljava/nio/charset/Charset;

    move-result-object v3

    .line 139
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v4

    .line 141
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart$1;->a:[I

    invoke-virtual {p1}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->g()Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-static {v3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    .line 146
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 147
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 150
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 151
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 152
    invoke-static {v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 153
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 155
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 156
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/Header;->a()Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/Field;

    .line 160
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/Field;->d()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 161
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 163
    :cond_2
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 164
    if-eqz p3, :cond_3

    .line 165
    sget-object v1, Lorg/apache/james/mime4j/message/MessageWriter;->a:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    .line 167
    :cond_3
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 150
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 169
    :cond_4
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 170
    invoke-static {v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 171
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 172
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->i()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {v3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    .line 176
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 177
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :pswitch_1
    move v0, v5

    .line 186
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 187
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 188
    invoke-static {v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 189
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 190
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 192
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPart;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v5, "Content-Disposition"

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/message/Header;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/Field;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/Field;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 199
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 200
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 201
    if-eqz p3, :cond_5

    .line 202
    sget-object v1, Lorg/apache/james/mime4j/message/MessageWriter;->a:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPart;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object v5

    invoke-virtual {v1, v5, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->a(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    .line 204
    :cond_5
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 207
    :cond_6
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 208
    invoke-static {v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 209
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 210
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    return-void
.end method

.method private static a(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 78
    instance-of v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_0

    .line 79
    check-cast p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {p0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/nio/charset/Charset;
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->d()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Entity;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 107
    const/4 v1, 0x0

    .line 109
    sget-object v2, Lorg/apache/http/entity/mime/HttpMultipart$1;->a:[I

    iget-object v3, p0, Lorg/apache/http/entity/mime/HttpMultipart;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v3}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 121
    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 224
    return-void
.end method

.method public a(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 101
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->d()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Entity;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 128
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    const-wide/16 v7, -0x1

    .line 240
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->e()Ljava/util/List;

    move-result-object v1

    move v2, v0

    move-wide v3, v9

    .line 243
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 245
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 246
    instance-of v5, v0, Lorg/apache/http/entity/mime/content/ContentBody;

    if-eqz v5, :cond_1

    .line 247
    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->c()J

    move-result-wide v5

    .line 248
    cmp-long v0, v5, v9

    if-ltz v0, :cond_0

    .line 249
    add-long/2addr v3, v5

    .line 243
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-wide v0, v7

    .line 265
    :goto_1
    return-wide v0

    :cond_1
    move-wide v0, v7

    .line 254
    goto :goto_1

    .line 258
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->c:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/http/entity/mime/HttpMultipart;->a(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 261
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 262
    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v0, v3

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    move-wide v0, v7

    .line 265
    goto :goto_1
.end method
