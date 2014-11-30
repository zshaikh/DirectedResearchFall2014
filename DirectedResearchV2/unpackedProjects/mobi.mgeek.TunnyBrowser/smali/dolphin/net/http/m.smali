.class public final Ldolphin/net/http/m;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transfer-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content-length"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content-type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "connection"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "proxy-connection"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "www-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "proxy-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accept-ranges"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last-modified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "etag"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "set-cookie"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pragma"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "refresh"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "x-permitted-cross-domain-policies"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "access-control-allow-origin"

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/net/http/m;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/http/m;->d:Ljava/util/ArrayList;

    .line 130
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    .line 131
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/http/m;->h:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/http/m;->i:Ljava/util/ArrayList;

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldolphin/net/http/m;->a:J

    .line 161
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldolphin/net/http/m;->b:J

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/net/http/m;->c:I

    .line 163
    return-void
.end method

.method private a(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1

    .prologue
    .line 502
    const-string v0, "Close"

    invoke-static {p1, p2, v0}, Ldolphin/net/http/b;->a(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/net/http/m;->c:I

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v0, "Keep-Alive"

    invoke-static {p1, p2, v0}, Ldolphin/net/http/b;->a(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x2

    iput v0, p0, Ldolphin/net/http/m;->c:I

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Ldolphin/net/http/m;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 419
    iput-wide p1, p0, Ldolphin/net/http/m;->b:J

    .line 420
    return-void
.end method

.method public a(Ldolphin/net/http/n;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    move v2, v1

    :goto_0
    const/16 v0, 0x14

    if-ge v2, v0, :cond_2

    .line 483
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aget-object v3, v0, v2

    .line 484
    if-eqz v3, :cond_0

    .line 485
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 486
    :goto_1
    invoke-interface {p1, v0, v3}, Ldolphin/net/http/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 485
    :cond_1
    sget-object v0, Ldolphin/net/http/m;->g:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_1

    .line 489
    :cond_2
    iget-object v0, p0, Ldolphin/net/http/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 490
    :goto_2
    if-ge v2, v3, :cond_3

    .line 495
    iget-object v0, p0, Ldolphin/net/http/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/http/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ldolphin/net/http/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 499
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 424
    return-void
.end method

.method public a(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xc

    .line 166
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    .line 167
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p1, v6, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 177
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 337
    iget-object v0, p0, Ldolphin/net/http/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Ldolphin/net/http/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :sswitch_0
    const-string v4, "transfer-encoding"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aput-object v3, v2, v6

    .line 186
    iget-object v2, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aput-object v1, v2, v6

    .line 187
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v2, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v2, v0, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 192
    array-length v1, v0

    .line 193
    const-string v2, "identity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldolphin/net/http/m;->a:J

    goto :goto_0

    .line 195
    :cond_2
    if-lez v1, :cond_3

    const-string v2, "chunked"

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Ldolphin/net/http/m;->a:J

    goto :goto_0

    .line 200
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldolphin/net/http/m;->a:J

    goto :goto_0

    .line 205
    :sswitch_1
    const-string v0, "content-length"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aput-object v3, v0, v7

    .line 207
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aput-object v1, v0, v7

    .line 209
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/net/http/m;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 219
    :sswitch_2
    const-string v0, "content-type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aput-object v3, v0, v8

    .line 221
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aput-object v1, v0, v8

    goto/16 :goto_0

    .line 225
    :sswitch_3
    const-string v0, "content-encoding"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aput-object v3, v0, v9

    .line 227
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aput-object v1, v0, v9

    goto/16 :goto_0

    .line 231
    :sswitch_4
    const-string v4, "connection"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 233
    iget-object v2, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 234
    invoke-direct {p0, p1, v0}, Ldolphin/net/http/m;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    .line 238
    :sswitch_5
    const-string v0, "location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v3, v0, v2

    .line 240
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 244
    :sswitch_6
    const-string v4, "proxy-connection"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 246
    iget-object v2, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    .line 247
    invoke-direct {p0, p1, v0}, Ldolphin/net/http/m;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    .line 251
    :sswitch_7
    const-string v0, "www-authenticate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v3, v0, v2

    .line 253
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 257
    :sswitch_8
    const-string v0, "proxy-authenticate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v3, v0, v2

    .line 259
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 263
    :sswitch_9
    const-string v0, "content-disposition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v3, v0, v2

    .line 265
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 269
    :sswitch_a
    const-string v0, "accept-ranges"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v3, v0, v2

    .line 271
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 275
    :sswitch_b
    const-string v0, "expires"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v3, v0, v2

    .line 277
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 281
    :sswitch_c
    const-string v0, "cache-control"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aget-object v4, v2, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 290
    :goto_1
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    aput-object v1, v0, v5

    goto/16 :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    aput-object v3, v0, v5

    goto :goto_1

    .line 294
    :sswitch_d
    const-string v0, "last-modified"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v3, v0, v2

    .line 296
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 300
    :sswitch_e
    const-string v0, "etag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v3, v0, v2

    .line 302
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 306
    :sswitch_f
    const-string v0, "set-cookie"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v3, v0, v2

    .line 308
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 309
    iget-object v0, p0, Ldolphin/net/http/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 313
    :sswitch_10
    const-string v0, "pragma"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v3, v0, v2

    .line 315
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 319
    :sswitch_11
    const-string v0, "refresh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v3, v0, v2

    .line 321
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 325
    :sswitch_12
    const-string v0, "x-permitted-cross-domain-policies"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0x12

    aput-object v3, v0, v2

    .line 327
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 331
    :sswitch_13
    const-string v0, "access-control-allow-origin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v3, v0, v2

    .line 333
    iget-object v0, p0, Ldolphin/net/http/m;->f:[Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_b
        -0x4b88f79d -> :sswitch_9
        -0x4384d946 -> :sswitch_1
        -0x3b6c869d -> :sswitch_13
        -0x3a6d1ac4 -> :sswitch_10
        -0x2e3b8122 -> :sswitch_4
        -0x11fc9c2c -> :sswitch_8
        -0xe7c74b5 -> :sswitch_7
        -0xc71a9ee -> :sswitch_c
        0x2fa915 -> :sswitch_e
        0x8f17c20 -> :sswitch_d
        0x110aef9d -> :sswitch_6
        0x2ed4600e -> :sswitch_2
        0x40b292db -> :sswitch_11
        0x49be662f -> :sswitch_f
        0x4bf6b0f5 -> :sswitch_0
        0x53476b3b -> :sswitch_a
        0x714f9fb5 -> :sswitch_5
        0x7ce07427 -> :sswitch_3
    .end sparse-switch
.end method

.method public b()J
    .locals 2

    .prologue
    .line 347
    iget-wide v0, p0, Ldolphin/net/http/m;->b:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 428
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Ldolphin/net/http/m;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 432
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 444
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 452
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    .line 456
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    .line 468
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x13

    aput-object p1, v0, v1

    .line 472
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Ldolphin/net/http/m;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Ldolphin/net/http/m;->e:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    return-object v0
.end method
