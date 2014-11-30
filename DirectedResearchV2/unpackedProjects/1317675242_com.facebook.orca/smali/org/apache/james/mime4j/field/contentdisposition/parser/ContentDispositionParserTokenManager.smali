.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;
.super Ljava/lang/Object;
.source "ContentDispositionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;


# static fields
.field static final b:[J

.field static final c:[I

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[I

.field static final g:[J

.field static final h:[J

.field static final i:[J

.field static final j:[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 111
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->b:[J

    .line 604
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->c:[I

    .line 606
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ";"

    aput-object v2, v0, v1

    const-string v1, "="

    aput-object v1, v0, v6

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

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->d:[Ljava/lang/String;

    .line 609
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

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->e:[Ljava/lang/String;

    .line 615
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->f:[I

    .line 618
    new-array v0, v5, [J

    const-wide/32 v1, 0x1c001f

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->g:[J

    .line 621
    new-array v0, v5, [J

    const-wide/16 v1, 0xa0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->h:[J

    .line 624
    new-array v0, v5, [J

    const-wide/16 v1, 0x20

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->i:[J

    .line 627
    new-array v0, v5, [J

    const-wide/32 v1, 0x3ff40

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->j:[J

    return-void

    .line 111
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 615
    :array_1
    .array-data 4
        -0x1
        -0x1
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
