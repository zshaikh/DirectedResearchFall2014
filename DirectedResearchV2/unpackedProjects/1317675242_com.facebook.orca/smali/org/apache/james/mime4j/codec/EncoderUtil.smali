.class public Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# static fields
.field private static final a:[B

.field private static final b:Ljava/util/BitSet;

.field private static final c:Ljava/util/BitSet;

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->a:[B

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    .line 38
    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->b:Ljava/util/BitSet;

    .line 40
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->c:Ljava/util/BitSet;

    .line 49
    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->d:Ljava/util/BitSet;

    .line 51
    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->e:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 55
    const/16 v1, 0x21

    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    .line 60
    :cond_1
    return-object v0
.end method
