.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;
.super Ljava/lang/Object;
.source "StructuredFieldParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 129
    invoke-static {}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->a()V

    .line 130
    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->b:[I

    .line 133
    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0xf800
        0xf800
    .end array-data
.end method
