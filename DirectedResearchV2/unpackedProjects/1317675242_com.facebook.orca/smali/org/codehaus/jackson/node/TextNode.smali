.class public final Lorg/codehaus/jackson/node/TextNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "TextNode.java"


# static fields
.field static final a:Lorg/codehaus/jackson/node/TextNode;


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lorg/codehaus/jackson/node/TextNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/node/TextNode;->a:Lorg/codehaus/jackson/node/TextNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    return-void
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0x22

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0, p1}, Lorg/codehaus/jackson/util/CharTypes;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    return-void
.end method

.method public static d(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lorg/codehaus/jackson/node/TextNode;->a:Lorg/codehaus/jackson/node/TextNode;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/node/TextNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected A()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    const-string v1, "Unexpected end-of-String when base64 content"

    sget-object v2, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected a(Lorg/codehaus/jackson/Base64Variant;CI)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 268
    return-void
.end method

.method protected a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V
    .locals 3

    .prologue
    .line 278
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    if-eqz p4, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/JsonParseException;

    sget-object v2, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {v1, v0, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 280
    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Z)Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "true"

    iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 66
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    .line 67
    iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v9

    .line 72
    :goto_0
    if-ge v3, v2, :cond_0

    .line 76
    :goto_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 77
    if-lt v4, v2, :cond_1

    .line 154
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    return-object v0

    .line 80
    :cond_1
    const/16 v5, 0x20

    if-le v3, v5, :cond_f

    .line 81
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v5

    .line 82
    if-gez v5, :cond_2

    .line 83
    invoke-virtual {p0, p1, v3, v9}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 87
    :cond_2
    if-lt v4, v2, :cond_3

    .line 88
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TextNode;->A()V

    .line 90
    :cond_3
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 91
    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v6

    .line 92
    if-gez v6, :cond_4

    .line 93
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v4, v7}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 95
    :cond_4
    shl-int/lit8 v4, v5, 0x6

    or-int/2addr v4, v6

    .line 97
    if-lt v3, v2, :cond_6

    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v5

    if-nez v5, :cond_5

    .line 101
    shr-int/lit8 v1, v4, 0x4

    .line 102
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TextNode;->A()V

    .line 107
    :cond_6
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 108
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v6

    .line 111
    if-gez v6, :cond_a

    .line 112
    if-eq v6, v8, :cond_7

    .line 113
    const/4 v6, 0x2

    invoke-virtual {p0, p1, v3, v6}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 116
    :cond_7
    if-lt v5, v2, :cond_8

    .line 117
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TextNode;->A()V

    .line 119
    :cond_8
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 120
    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v6

    if-nez v6, :cond_9

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected padding character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v10, v6}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 124
    :cond_9
    shr-int/lit8 v4, v4, 0x4

    .line 125
    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto/16 :goto_0

    .line 129
    :cond_a
    shl-int/lit8 v3, v4, 0x6

    or-int/2addr v3, v6

    .line 131
    if-lt v5, v2, :cond_c

    .line 133
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v4

    if-nez v4, :cond_b

    .line 134
    shr-int/lit8 v1, v3, 0x2

    .line 135
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto/16 :goto_2

    .line 138
    :cond_b
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TextNode;->A()V

    .line 140
    :cond_c
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 141
    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v6

    .line 142
    if-gez v6, :cond_e

    .line 143
    if-eq v6, v8, :cond_d

    .line 144
    invoke-virtual {p0, p1, v5, v10}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 146
    :cond_d
    shr-int/lit8 v3, v3, 0x2

    .line 147
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    :goto_3
    move v3, v4

    .line 153
    goto/16 :goto_0

    .line 150
    :cond_e
    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v6

    .line 151
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c(I)V

    goto :goto_3

    :cond_f
    move v3, v4

    goto/16 :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/TextNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
