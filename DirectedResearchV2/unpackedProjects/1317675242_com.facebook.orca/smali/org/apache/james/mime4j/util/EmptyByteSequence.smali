.class final Lorg/apache/james/mime4j/util/EmptyByteSequence;
.super Ljava/lang/Object;
.source "EmptyByteSequence.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/ByteSequence;


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/james/mime4j/util/EmptyByteSequence;->b:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/james/mime4j/util/EmptyByteSequence;->b:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
