.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;
.super Ljava/lang/Object;
.source "ContentLanguageParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->a()V

    .line 113
    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->a:[I

    .line 116
    return-void

    .line 115
    nop

    :array_0
    .array-data 4
        0x2
        0x80004
        0x80004
    .end array-data
.end method
