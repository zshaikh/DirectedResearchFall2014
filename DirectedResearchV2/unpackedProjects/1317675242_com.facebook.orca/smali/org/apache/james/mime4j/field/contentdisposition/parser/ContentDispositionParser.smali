.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;
.super Ljava/lang/Object;
.source "ContentDispositionParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 132
    invoke-static {}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->a()V

    .line 133
    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->b:[I

    .line 136
    return-void

    .line 135
    nop

    :array_0
    .array-data 4
        0x2
        0x8
        0x1c0000
    .end array-data
.end method
