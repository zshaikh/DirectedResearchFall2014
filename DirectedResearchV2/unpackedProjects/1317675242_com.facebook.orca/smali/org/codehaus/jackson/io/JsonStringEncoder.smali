.class public final Lorg/codehaus/jackson/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field protected static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:[C

.field private static final d:[B


# instance fields
.field protected final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->g()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->c:[C

    .line 24
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->h()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->d:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[C

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method
