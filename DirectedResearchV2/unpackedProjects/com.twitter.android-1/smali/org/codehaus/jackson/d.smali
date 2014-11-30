.class public final Lorg/codehaus/jackson/d;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Ljava/lang/ThreadLocal;


# instance fields
.field private d:Lab;

.field private e:Laj;

.field private f:Lorg/codehaus/jackson/a;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->a()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/d;->a:I

    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->a()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/d;->b:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/d;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/d;-><init>(Lorg/codehaus/jackson/a;)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lab;->a()Lab;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/d;->d:Lab;

    invoke-static {}, Laj;->a()Laj;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/d;->e:Laj;

    sget v0, Lorg/codehaus/jackson/d;->a:I

    iput v0, p0, Lorg/codehaus/jackson/d;->g:I

    sget v0, Lorg/codehaus/jackson/d;->b:I

    iput v0, p0, Lorg/codehaus/jackson/d;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/d;->f:Lorg/codehaus/jackson/a;

    return-void
.end method

.method private static a(Ljava/lang/Object;Z)Ld;
    .locals 4

    new-instance v1, Ld;

    sget-object v0, Lorg/codehaus/jackson/d;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/BufferRecycler;-><init>()V

    sget-object v2, Lorg/codehaus/jackson/d;->c:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {v1, v0, p0, p1}, Ld;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/util/BufferRecycler;

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2

    iget v0, p0, Lorg/codehaus/jackson/d;->g:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/d;->a(Ljava/lang/Object;Z)Ld;

    move-result-object v0

    new-instance v1, Laf;

    iget v2, p0, Lorg/codehaus/jackson/d;->h:I

    iget-object v3, p0, Lorg/codehaus/jackson/d;->f:Lorg/codehaus/jackson/a;

    invoke-direct {v1, v0, v2, v3, p1}, Laf;-><init>(Ld;ILorg/codehaus/jackson/a;Ljava/io/Writer;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 8

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/codehaus/jackson/d;->a(Ljava/lang/Object;Z)Ld;

    move-result-object v1

    new-instance v0, Lac;

    iget v2, p0, Lorg/codehaus/jackson/d;->g:I

    iget-object v4, p0, Lorg/codehaus/jackson/d;->f:Lorg/codehaus/jackson/a;

    iget-object v5, p0, Lorg/codehaus/jackson/d;->d:Lab;

    sget-object v6, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/d;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v6

    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->g:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-direct {p0, v7}, Lorg/codehaus/jackson/d;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lab;->a(ZZ)Lab;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lac;-><init>(Ld;ILjava/io/Reader;Lorg/codehaus/jackson/a;Lab;)V

    return-object v0
.end method

.method public final a([B)Lorg/codehaus/jackson/JsonParser;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/codehaus/jackson/d;->a(Ljava/lang/Object;Z)Ld;

    move-result-object v1

    new-instance v2, Lu;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3, v0}, Lu;-><init>(Ld;[BII)V

    iget v0, p0, Lorg/codehaus/jackson/d;->g:I

    iget-object v1, p0, Lorg/codehaus/jackson/d;->f:Lorg/codehaus/jackson/a;

    iget-object v3, p0, Lorg/codehaus/jackson/d;->e:Laj;

    iget-object v4, p0, Lorg/codehaus/jackson/d;->d:Lab;

    invoke-virtual {v2, v0, v1, v3, v4}, Lu;->a(ILorg/codehaus/jackson/a;Laj;Lab;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method
