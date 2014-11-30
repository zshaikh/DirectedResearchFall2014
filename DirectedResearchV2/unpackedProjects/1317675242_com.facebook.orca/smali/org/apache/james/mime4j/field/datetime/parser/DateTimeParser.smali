.class public Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.super Ljava/lang/Object;
.source "DateTimeParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# static fields
.field private static b:[I

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 419
    invoke-static {}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->a()V

    .line 420
    invoke-static {}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->b()V

    .line 421
    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->b:[I

    .line 424
    return-void

    .line 423
    nop

    :array_0
    .array-data 4
        0x2
        0x7f0
        0x7f0
        0x7ff800
        0x800000
        -0x1000000
        -0x2000000
    .end array-data
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->c:[I

    .line 427
    return-void

    .line 426
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf
        0xf
    .end array-data
.end method
