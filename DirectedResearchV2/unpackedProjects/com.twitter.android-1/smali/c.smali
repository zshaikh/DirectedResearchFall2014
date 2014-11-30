.class public abstract Lc;
.super Lq;


# static fields
.field private static a:Ljava/math/BigDecimal;

.field private static r:Ljava/math/BigDecimal;

.field private static s:Ljava/math/BigDecimal;

.field private static t:Ljava/math/BigDecimal;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private u:I

.field private v:I

.field private w:J

.field private x:D

.field private y:Ljava/math/BigInteger;

.field private z:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000000000000000L

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lc;->a:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lc;->r:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lc;->s:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lc;->t:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Ld;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lq;-><init>(Ld;I)V

    const/4 v0, 0x0

    iput v0, p0, Lc;->u:I

    return-void
.end method

.method private c(I)V
    .locals 6

    const/16 v2, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lc;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lc;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    iget-object v0, p0, Lc;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v0

    iget v2, p0, Lc;->B:I

    iget-boolean v3, p0, Lc;->A:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    invoke-static {v1, v0, v2}, Lag;->a([CII)I

    move-result v0

    iget-boolean v1, p0, Lc;->A:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lc;->v:I

    iput v4, p0, Lc;->u:I

    :goto_0
    return-void

    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    invoke-static {v1, v0, v2}, Lag;->b([CII)J

    move-result-wide v0

    iget-boolean v3, p0, Lc;->A:Z

    if-eqz v3, :cond_3

    neg-long v0, v0

    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lc;->A:Z

    if-eqz v2, :cond_4

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    long-to-int v0, v0

    iput v0, p0, Lc;->v:I

    iput v4, p0, Lc;->u:I

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    long-to-int v0, v0

    iput v0, p0, Lc;->v:I

    iput v4, p0, Lc;->u:I

    goto :goto_0

    :cond_5
    iput-wide v0, p0, Lc;->w:J

    iput v5, p0, Lc;->u:I

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lc;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-boolean v4, p0, Lc;->A:Z

    invoke-static {v1, v0, v2, v4}, Lag;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lc;->w:J

    const/4 v0, 0x2

    iput v0, p0, Lc;->u:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_7
    :try_start_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc;->y:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lc;->u:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lc;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a

    if-ne p1, v2, :cond_9

    :try_start_2
    iget-object v0, p0, Lc;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->f()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lc;->z:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    iput v0, p0, Lc;->u:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_3
    iget-object v0, p0, Lc;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->g()D

    move-result-wide v0

    iput-wide v0, p0, Lc;->x:D

    const/16 v0, 0x8

    iput v0, p0, Lc;->u:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc;->q:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private r()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc;->c(Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ZI)Lorg/codehaus/jackson/JsonToken;
    .locals 1

    const/4 v0, 0x0

    iput-boolean p1, p0, Lc;->A:Z

    iput p2, p0, Lc;->B:I

    iput v0, p0, Lc;->C:I

    iput v0, p0, Lc;->D:I

    iput v0, p0, Lc;->u:I

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1

    if-gtz p3, :cond_0

    if-gtz p4, :cond_0

    invoke-virtual {p0, p1, p2}, Lc;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lc;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lc;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lc;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final b(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1

    iput-boolean p1, p0, Lc;->A:Z

    iput p2, p0, Lc;->B:I

    iput p3, p0, Lc;->C:I

    iput p4, p0, Lc;->D:I

    const/4 v0, 0x0

    iput v0, p0, Lc;->u:I

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final d()I
    .locals 5

    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lc;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc;->c(I)V

    :cond_0
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lc;->w:J

    long-to-int v0, v0

    int-to-long v1, v0

    iget-wide v3, p0, Lc;->w:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc;->c(Ljava/lang/String;)V

    :cond_1
    iput v0, p0, Lc;->v:I

    :goto_0
    iget v0, p0, Lc;->u:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc;->u:I

    :cond_2
    iget v0, p0, Lc;->v:I

    return v0

    :cond_3
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lc;->v:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lc;->x:D

    const-wide/high16 v2, -0x3e20000000000000L

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lc;->x:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lc;->r()V

    :cond_6
    iget-wide v0, p0, Lc;->x:D

    double-to-int v0, v0

    iput v0, p0, Lc;->v:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    sget-object v0, Lc;->s:Ljava/math/BigDecimal;

    iget-object v1, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lc;->t:Ljava/math/BigDecimal;

    iget-object v1, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9

    :cond_8
    invoke-direct {p0}, Lc;->r()V

    :cond_9
    iget-object v0, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lc;->v:I

    goto :goto_0

    :cond_a
    invoke-static {}, Lc;->l()V

    goto :goto_0
.end method

.method public final e()J
    .locals 4

    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lc;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc;->c(I)V

    :cond_0
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lc;->v:I

    int-to-long v0, v0

    iput-wide v0, p0, Lc;->w:J

    :goto_0
    iget v0, p0, Lc;->u:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc;->u:I

    :cond_1
    iget-wide v0, p0, Lc;->w:J

    return-wide v0

    :cond_2
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lc;->w:J

    goto :goto_0

    :cond_3
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lc;->x:D

    const-wide/high16 v2, -0x3c20000000000000L

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lc;->x:D

    const-wide/high16 v2, 0x43e0000000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lc;->s()V

    :cond_5
    iget-wide v0, p0, Lc;->x:D

    double-to-long v0, v0

    iput-wide v0, p0, Lc;->w:J

    goto :goto_0

    :cond_6
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    sget-object v0, Lc;->a:Ljava/math/BigDecimal;

    iget-object v1, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lc;->r:Ljava/math/BigDecimal;

    iget-object v1, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lc;->s()V

    :cond_8
    iget-object v0, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lc;->w:J

    goto :goto_0

    :cond_9
    invoke-static {}, Lc;->l()V

    goto :goto_0
.end method

.method public final f()D
    .locals 2

    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lc;->u:I

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lc;->c(I)V

    :cond_0
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc;->z:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lc;->x:D

    :goto_0
    iget v0, p0, Lc;->u:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc;->u:I

    :cond_1
    iget-wide v0, p0, Lc;->x:D

    return-wide v0

    :cond_2
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lc;->x:D

    goto :goto_0

    :cond_3
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lc;->w:J

    long-to-double v0, v0

    iput-wide v0, p0, Lc;->x:D

    goto :goto_0

    :cond_4
    iget v0, p0, Lc;->u:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lc;->v:I

    int-to-double v0, v0

    iput-wide v0, p0, Lc;->x:D

    goto :goto_0

    :cond_5
    invoke-static {}, Lc;->l()V

    goto :goto_0
.end method
