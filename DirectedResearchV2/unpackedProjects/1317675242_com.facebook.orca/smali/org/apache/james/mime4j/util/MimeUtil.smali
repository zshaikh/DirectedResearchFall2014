.class public final Lorg/apache/james/mime4j/util/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# static fields
.field private static final a:Lorg/apache/commons/logging/Log;

.field private static final b:Ljava/util/Random;

.field private static c:I

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->a:Lorg/apache/commons/logging/Log;

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->b:Ljava/util/Random;

    .line 119
    const/4 v0, 0x0

    sput v0, Lorg/apache/james/mime4j/util/MimeUtil;->c:I

    .line 510
    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x4c

    const/4 v6, 0x0

    .line 431
    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 434
    add-int v1, p1, v0

    if-gt v1, v7, :cond_0

    move-object v0, p0

    .line 444
    :goto_0
    return-object v0

    .line 437
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    neg-int v2, p1

    .line 440
    invoke-static {p0, v6}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    .line 442
    :goto_1
    if-ne v2, v0, :cond_1

    .line 443
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-static {p0, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;I)I

    move-result v4

    .line 449
    sub-int v5, v4, v3

    if-le v5, v7, :cond_2

    .line 450
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v3, v2

    move v2, v4

    .line 456
    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 130
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p1

    .line 498
    :goto_0
    if-ge v1, v0, :cond_1

    .line 499
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 500
    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 503
    :cond_1
    return v0

    .line 498
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    const-string v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
