.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;
.super Ljava/lang/Object;
.source "StructuredFieldParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field static final b:[J

.field static final c:[I

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[I

.field static final g:[J

.field static final h:[J

.field static final i:[J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 101
    new-array v0, v5, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->b:[J

    .line 596
    new-array v0, v3, [I

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->c:[I

    .line 598
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    aput-object v2, v0, v5

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->d:[Ljava/lang/String;

    .line 601
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v3

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v4

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->e:[Ljava/lang/String;

    .line 607
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->f:[I

    .line 610
    new-array v0, v4, [J

    const-wide/32 v1, 0xf801

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->g:[J

    .line 613
    new-array v0, v4, [J

    const-wide/16 v1, 0x3fe

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->h:[J

    .line 616
    new-array v0, v4, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->i:[J

    return-void

    .line 101
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 607
    :array_1
    .array-data 4
        -0x1
        0x1
        0x0
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
