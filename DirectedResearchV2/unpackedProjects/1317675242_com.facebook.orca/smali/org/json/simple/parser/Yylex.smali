.class Lorg/json/simple/parser/Yylex;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[C

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[Ljava/lang/String;

.field private static final g:[I


# instance fields
.field private h:Ljava/io/Reader;

.field private i:I

.field private j:I

.field private k:[C

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/json/simple/parser/Yylex;->a:[I

    const-string v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    invoke-static {v0}, Lorg/json/simple/parser/Yylex;->a(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->b:[C

    invoke-static {}, Lorg/json/simple/parser/Yylex;->d()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->c:[I

    invoke-static {}, Lorg/json/simple/parser/Yylex;->e()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->d:[I

    const/16 v0, 0x2a3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/json/simple/parser/Yylex;->e:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unkown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Error: pushback value was too large"

    aput-object v2, v0, v1

    sput-object v0, Lorg/json/simple/parser/Yylex;->f:[Ljava/lang/String;

    invoke-static {}, Lorg/json/simple/parser/Yylex;->f()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->g:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/json/simple/parser/Yylex;->j:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->k:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->s:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/json/simple/parser/Yylex;->h:Ljava/io/Reader;

    return-void
.end method

.method private static a(Ljava/lang/String;I[I)I
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    move v0, p1

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_1
    add-int/lit8 v5, v2, 0x1

    aput v3, p2, v2

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v0, v5

    move v2, v4

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    move v2, v5

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 7

    const/4 v1, 0x0

    const/high16 v0, 0x10000

    new-array v0, v0, [C

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_1
    add-int/lit8 v5, v2, 0x1

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    move v1, v5

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    move v2, v5

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;I[I)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    move v0, p1

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    aput v2, p2, v0

    move v0, v4

    move v2, v5

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static c(Ljava/lang/String;I[I)I
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    move v0, p1

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_1
    add-int/lit8 v5, v2, 0x1

    aput v3, p2, v2

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v0, v5

    move v2, v4

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    move v2, v5

    goto :goto_1
.end method

.method private c(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/json/simple/parser/Yylex;->f:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    sget-object v0, Lorg/json/simple/parser/Yylex;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static d()[I
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

    invoke-static {v2, v1, v0}, Lorg/json/simple/parser/Yylex;->a(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static e()[I
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    invoke-static {v2, v1, v0}, Lorg/json/simple/parser/Yylex;->b(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static f()[I
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    invoke-static {v2, v1, v0}, Lorg/json/simple/parser/Yylex;->c(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private g()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lorg/json/simple/parser/Yylex;->n:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v1, p0, Lorg/json/simple/parser/Yylex;->n:I

    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v3, p0, Lorg/json/simple/parser/Yylex;->o:I

    iget v4, p0, Lorg/json/simple/parser/Yylex;->n:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/json/simple/parser/Yylex;->o:I

    iget v1, p0, Lorg/json/simple/parser/Yylex;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/simple/parser/Yylex;->o:I

    iget v0, p0, Lorg/json/simple/parser/Yylex;->m:I

    iget v1, p0, Lorg/json/simple/parser/Yylex;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/simple/parser/Yylex;->m:I

    iget v0, p0, Lorg/json/simple/parser/Yylex;->l:I

    iget v1, p0, Lorg/json/simple/parser/Yylex;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/simple/parser/Yylex;->l:I

    iput v5, p0, Lorg/json/simple/parser/Yylex;->n:I

    :cond_0
    iget v0, p0, Lorg/json/simple/parser/Yylex;->m:I

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->k:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/json/simple/parser/Yylex;->m:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->k:[C

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->k:[C

    :cond_1
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->h:Ljava/io/Reader;

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v2, p0, Lorg/json/simple/parser/Yylex;->o:I

    iget-object v3, p0, Lorg/json/simple/parser/Yylex;->k:[C

    array-length v3, v3

    iget v4, p0, Lorg/json/simple/parser/Yylex;->o:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_2

    iget v1, p0, Lorg/json/simple/parser/Yylex;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/json/simple/parser/Yylex;->o:I

    move v0, v5

    :goto_0
    return v0

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->h:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v2, p0, Lorg/json/simple/parser/Yylex;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/json/simple/parser/Yylex;->o:I

    int-to-char v0, v0

    aput-char v0, v1, v2

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lorg/json/simple/parser/Yylex;->q:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/json/simple/parser/Yylex;->j:I

    return-void
.end method

.method public final a(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/json/simple/parser/Yylex;->h:Ljava/io/Reader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->s:Z

    iput-boolean v1, p0, Lorg/json/simple/parser/Yylex;->t:Z

    iput v1, p0, Lorg/json/simple/parser/Yylex;->n:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->o:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->l:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->m:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->r:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->q:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->p:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->j:I

    return-void
.end method

.method public final b(I)C
    .locals 2

    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v1, p0, Lorg/json/simple/parser/Yylex;->n:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v2, p0, Lorg/json/simple/parser/Yylex;->n:I

    iget v3, p0, Lorg/json/simple/parser/Yylex;->l:I

    iget v4, p0, Lorg/json/simple/parser/Yylex;->n:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public c()Lorg/json/simple/parser/Yytoken;
    .locals 15

    iget v0, p0, Lorg/json/simple/parser/Yylex;->o:I

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->k:[C

    sget-object v2, Lorg/json/simple/parser/Yylex;->b:[C

    sget-object v3, Lorg/json/simple/parser/Yylex;->e:[I

    sget-object v4, Lorg/json/simple/parser/Yylex;->d:[I

    sget-object v5, Lorg/json/simple/parser/Yylex;->g:[I

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    :goto_0
    :pswitch_0
    iget v6, p0, Lorg/json/simple/parser/Yylex;->l:I

    iget v7, p0, Lorg/json/simple/parser/Yylex;->q:I

    iget v8, p0, Lorg/json/simple/parser/Yylex;->n:I

    sub-int v8, v6, v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/json/simple/parser/Yylex;->q:I

    const/4 v7, -0x1

    iput v6, p0, Lorg/json/simple/parser/Yylex;->n:I

    iput v6, p0, Lorg/json/simple/parser/Yylex;->m:I

    sget-object v8, Lorg/json/simple/parser/Yylex;->a:[I

    iget v9, p0, Lorg/json/simple/parser/Yylex;->j:I

    aget v8, v8, v9

    iput v8, p0, Lorg/json/simple/parser/Yylex;->i:I

    move v8, v7

    move v7, v6

    :cond_0
    :goto_1
    if-ge v7, v1, :cond_1

    add-int/lit8 v9, v7, 0x1

    aget-char v7, v0, v7

    move v13, v9

    move v9, v7

    move v7, v13

    :goto_2
    iget v10, p0, Lorg/json/simple/parser/Yylex;->i:I

    aget v10, v4, v10

    aget-char v11, v2, v9

    add-int/2addr v10, v11

    aget v10, v3, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    move v7, v8

    move v8, v9

    :goto_3
    iput v6, p0, Lorg/json/simple/parser/Yylex;->l:I

    if-gez v7, :cond_5

    move v6, v7

    :goto_4
    packed-switch v6, :pswitch_data_0

    const/4 v6, -0x1

    if-ne v8, v6, :cond_6

    iget v6, p0, Lorg/json/simple/parser/Yylex;->n:I

    iget v7, p0, Lorg/json/simple/parser/Yylex;->m:I

    if-ne v6, v7, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->t:Z

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_1
    iget-boolean v9, p0, Lorg/json/simple/parser/Yylex;->t:Z

    if-eqz v9, :cond_2

    const/4 v7, -0x1

    move v13, v8

    move v8, v7

    move v7, v13

    goto :goto_3

    :cond_2
    iput v7, p0, Lorg/json/simple/parser/Yylex;->m:I

    iput v6, p0, Lorg/json/simple/parser/Yylex;->l:I

    invoke-direct {p0}, Lorg/json/simple/parser/Yylex;->g()Z

    move-result v0

    iget v1, p0, Lorg/json/simple/parser/Yylex;->m:I

    iget v6, p0, Lorg/json/simple/parser/Yylex;->l:I

    iget-object v7, p0, Lorg/json/simple/parser/Yylex;->k:[C

    iget v9, p0, Lorg/json/simple/parser/Yylex;->o:I

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v1, v9

    move-object v13, v7

    move v7, v8

    move v8, v0

    move-object v0, v13

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    aget-char v1, v7, v1

    move-object v13, v7

    move v7, v0

    move-object v0, v13

    move v14, v9

    move v9, v1

    move v1, v14

    goto :goto_2

    :cond_4
    iput v10, p0, Lorg/json/simple/parser/Yylex;->i:I

    iget v10, p0, Lorg/json/simple/parser/Yylex;->i:I

    aget v10, v5, v10

    and-int/lit8 v11, v10, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    iget v6, p0, Lorg/json/simple/parser/Yylex;->i:I

    and-int/lit8 v8, v10, 0x8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_7

    move v8, v9

    move v13, v6

    move v6, v7

    move v7, v13

    goto :goto_3

    :cond_5
    sget-object v6, Lorg/json/simple/parser/Yylex;->c:[I

    aget v6, v6, v7

    goto :goto_4

    :pswitch_1
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lorg/json/simple/parser/Yylex;->a(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_6
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/simple/parser/Yylex;->a(I)V

    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_a
    new-instance v0, Lorg/json/simple/parser/ParseException;

    iget v1, p0, Lorg/json/simple/parser/Yylex;->q:I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Character;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/json/simple/parser/Yylex;->b(I)C

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {v0, v1, v2, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :pswitch_b
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_d
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_f
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_11
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_12
    :try_start_0
    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    int-to-char v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json/simple/parser/ParseException;

    iget v2, p0, Lorg/json/simple/parser/Yylex;->q:I

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v1

    :pswitch_13
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_16
    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->u:Ljava/lang/StringBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_6
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/json/simple/parser/Yylex;->c(I)V

    goto/16 :goto_0

    :cond_7
    move v8, v6

    move v6, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
        :pswitch_0
        :pswitch_2
        :pswitch_10
        :pswitch_4
        :pswitch_14
        :pswitch_b
        :pswitch_17
        :pswitch_e
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_d
        :pswitch_3
        :pswitch_11
        :pswitch_16
        :pswitch_c
        :pswitch_13
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method