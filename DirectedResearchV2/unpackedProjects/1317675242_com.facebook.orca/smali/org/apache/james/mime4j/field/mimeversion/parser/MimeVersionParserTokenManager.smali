.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;
.super Ljava/lang/Object;
.source "MimeVersionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field static final a:[J

.field static final b:[I

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[I

.field static final f:[J

.field static final g:[J

.field static final h:[J

.field static final i:[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 224
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->a:[J

    .line 571
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->b:[I

    .line 573
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->c:[Ljava/lang/String;

    .line 576
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->d:[Ljava/lang/String;

    .line 582
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->e:[I

    .line 585
    new-array v0, v5, [J

    const-wide/32 v1, 0x70007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->f:[J

    .line 588
    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->g:[J

    .line 591
    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->h:[J

    .line 594
    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->i:[J

    return-void

    .line 224
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 582
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
