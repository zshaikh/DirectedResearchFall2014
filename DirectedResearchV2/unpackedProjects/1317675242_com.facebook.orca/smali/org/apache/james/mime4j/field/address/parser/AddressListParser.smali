.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;


# static fields
.field private static b:[I

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 737
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a()V

    .line 738
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b()V

    .line 739
    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 741
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b:[I

    .line 742
    return-void

    .line 741
    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 744
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c:[I

    .line 745
    return-void

    .line 744
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
