.class public Lv2/com/playhaven/utils/PHStringUtil;
.super Ljava/lang/Object;
.source "PHStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/utils/PHStringUtil$DefaultUUIDGenerator;,
        Lv2/com/playhaven/utils/PHStringUtil$UUIDGenerator;
    }
.end annotation


# static fields
.field public static UUID_GENERATOR:Lv2/com/playhaven/utils/PHStringUtil$UUIDGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lv2/com/playhaven/utils/PHStringUtil$DefaultUUIDGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv2/com/playhaven/utils/PHStringUtil$DefaultUUIDGenerator;-><init>(Lv2/com/playhaven/utils/PHStringUtil$DefaultUUIDGenerator;)V

    sput-object v0, Lv2/com/playhaven/utils/PHStringUtil;->UUID_GENERATOR:Lv2/com/playhaven/utils/PHStringUtil$UUIDGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p0}, Lv2/com/playhaven/utils/PHStringUtil;->dataDigest(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->convertToBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "b64digest":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static convertToBase64([B)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B

    .prologue
    const/4 v9, 0x0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 172
    .local v1, "formatter":Ljava/util/Formatter;
    array-length v4, p0

    move v5, v9

    :goto_0
    if-lt v5, v4, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 179
    return-object v2

    .line 172
    .end local v2    # "hex":Ljava/lang/String;
    :cond_0
    aget-byte v3, p0, v5

    .line 173
    .local v3, "inByte":B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static createQuery(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 102
    :goto_0
    return-object v4

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v2, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 87
    if-eqz v3, :cond_1

    .line 89
    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v3}, Lv2/com/playhaven/utils/PHStringUtil;->weakUrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "%s=%s"

    .line 95
    :goto_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 96
    aput-object v1, v6, v7

    const/4 v7, 0x1

    .line 97
    aput-object v3, v6, v7

    .line 93
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 95
    :cond_3
    const-string v5, "&%s=%s"

    goto :goto_2
.end method

.method public static createQueryDict(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 44
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 59
    :goto_0
    return-object v6

    .line 45
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v4, "queryComps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "&|\\?"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    move v7, v10

    :goto_1
    if-lt v7, v6, :cond_1

    move-object v6, v4

    .line 59
    goto :goto_0

    .line 48
    :cond_1
    aget-object v2, v3, v7

    .line 49
    .local v2, "part":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "kv":[Ljava/lang/String;
    array-length v8, v1

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    .line 48
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 53
    :cond_2
    aget-object v8, v1, v10

    invoke-static {v8}, Lv2/com/playhaven/utils/PHStringUtil;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Lv2/com/playhaven/utils/PHStringUtil;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static dataDigest(Ljava/lang/String;)[B
    .locals 2
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 207
    :goto_0
    return-object v1

    .line 206
    :cond_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 207
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "to_encode"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lv2/com/playhaven/utils/PHStringUtil;->UUID_GENERATOR:Lv2/com/playhaven/utils/PHStringUtil$UUIDGenerator;

    invoke-interface {v0}, Lv2/com/playhaven/utils/PHStringUtil$UUIDGenerator;->generateUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, Lv2/com/playhaven/utils/PHStringUtil;->dataDigest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 66
    .local v0, "config":Lv2/com/playhaven/configuration/PHConfiguration;
    const-string v2, "PlayHaven-%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static queryComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "queryStart":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static weakUrlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 124
    if-nez p0, :cond_0

    const/4 v7, 0x0

    .line 161
    :goto_0
    return-object v7

    .line 127
    :cond_0
    const/16 v7, 0xf

    new-array v6, v7, [Ljava/lang/String;

    .line 128
    const-string v7, ";"

    aput-object v7, v6, v9

    const-string v7, "?"

    aput-object v7, v6, v10

    const-string v7, " "

    aput-object v7, v6, v11

    .line 129
    const-string v7, "&"

    aput-object v7, v6, v12

    const-string v7, "="

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "$"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 130
    const-string v8, ","

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "["

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "]"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    .line 131
    const-string v8, "#"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "!"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "\'"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    .line 132
    const-string v8, "("

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, ")"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "*"

    aput-object v8, v6, v7

    .line 135
    .local v6, "reserved":[Ljava/lang/String;
    const/16 v7, 0xf

    new-array v2, v7, [Ljava/lang/String;

    .line 136
    const-string v7, "%3B"

    aput-object v7, v2, v9

    const-string v7, "%3F"

    aput-object v7, v2, v10

    const-string v7, "+"

    aput-object v7, v2, v11

    .line 137
    const-string v7, "%26"

    aput-object v7, v2, v12

    const-string v7, "%3D"

    aput-object v7, v2, v13

    const/4 v7, 0x5

    const-string v8, "%24"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    .line 138
    const-string v8, "%2C"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "%5B"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, "%5D"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    .line 139
    const-string v8, "%21"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, "%27"

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-string v8, "%28"

    aput-object v8, v2, v7

    const/16 v7, 0xc

    .line 140
    const-string v8, "%28"

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-string v8, "%29"

    aput-object v8, v2, v7

    const/16 v7, 0xe

    const-string v8, "%2A"

    aput-object v8, v2, v7

    .line 144
    .local v2, "escaped":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "encUrl":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v2

    if-lt v3, v7, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 148
    :cond_1
    aget-object v5, v6, v3

    .line 149
    .local v5, "res":Ljava/lang/String;
    aget-object v1, v2, v3

    .line 152
    .local v1, "esc":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 153
    .local v4, "index":I
    :goto_2
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    .line 154
    invoke-virtual {v0, v4, v7, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method
