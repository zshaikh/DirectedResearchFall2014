.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;
.super Ljava/lang/Object;
.source "MimeVersionParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->a()V

    .line 76
    return-void
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->a:[I

    .line 79
    return-void
.end method
