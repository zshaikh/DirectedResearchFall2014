.class public abstract Ldolphin/webkit/a/a/s;
.super Ldolphin/webkit/a/a/k;
.source "ASN1Set.java"


# instance fields
.field protected a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    .line 105
    return-void
.end method

.method private a(Ljava/util/Enumeration;)Ldolphin/webkit/a/a/ap;
    .locals 1

    .prologue
    .line 243
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/a/a/ap;

    .line 246
    if-nez v0, :cond_0

    .line 248
    sget-object v0, Ldolphin/webkit/a/a/az;->a:Ldolphin/webkit/a/a/az;

    .line 251
    :cond_0
    return-object v0
.end method

.method private a([B[B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    .line 262
    :goto_0
    if-eq v2, v3, :cond_3

    .line 264
    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    if-eq v4, v5, :cond_2

    .line 266
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v3, v2, :cond_1

    .line 269
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 266
    goto :goto_1

    .line 262
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_3
    array-length v2, p1

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private b(Ldolphin/webkit/a/a/ap;)[B
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 276
    new-instance v1, Ldolphin/webkit/a/a/o;

    invoke-direct {v1, v0}, Ldolphin/webkit/a/a/o;-><init>(Ljava/io/OutputStream;)V

    .line 280
    :try_start_0
    invoke-virtual {v1, p1}, Ldolphin/webkit/a/a/o;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Ldolphin/webkit/a/a/ap;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method abstract a(Ldolphin/webkit/a/a/bf;)V
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 207
    instance-of v1, p1, Ldolphin/webkit/a/a/s;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    check-cast p1, Ldolphin/webkit/a/a/s;

    .line 214
    invoke-virtual {p0}, Ldolphin/webkit/a/a/s;->f()I

    move-result v1

    invoke-virtual {p1}, Ldolphin/webkit/a/a/s;->f()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 219
    invoke-virtual {p0}, Ldolphin/webkit/a/a/s;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 220
    invoke-virtual {p1}, Ldolphin/webkit/a/a/s;->e()Ljava/util/Enumeration;

    move-result-object v2

    .line 222
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    invoke-direct {p0, v1}, Ldolphin/webkit/a/a/s;->a(Ljava/util/Enumeration;)Ldolphin/webkit/a/a/ap;

    move-result-object v3

    .line 225
    invoke-direct {p0, v2}, Ldolphin/webkit/a/a/s;->a(Ljava/util/Enumeration;)Ldolphin/webkit/a/a/ap;

    move-result-object v4

    .line 227
    invoke-interface {v3}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v3

    .line 228
    invoke-interface {v4}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v4

    .line 230
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ldolphin/webkit/a/a/bb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 238
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 292
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 295
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v7, v2

    move v4, v5

    .line 297
    :goto_0
    if-eqz v4, :cond_2

    .line 301
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/a/a/ap;

    invoke-direct {p0, v0}, Ldolphin/webkit/a/a/s;->b(Ldolphin/webkit/a/a/ap;)[B

    move-result-object v1

    move v2, v6

    move v3, v6

    move v4, v6

    .line 305
    :goto_1
    if-eq v3, v7, :cond_1

    .line 307
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/a/a/ap;

    invoke-direct {p0, v0}, Ldolphin/webkit/a/a/s;->b(Ldolphin/webkit/a/a/ap;)[B

    move-result-object v0

    .line 309
    invoke-direct {p0, v1, v0}, Ldolphin/webkit/a/a/s;->a([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    move v1, v2

    move v2, v4

    .line 324
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    .line 325
    goto :goto_1

    .line 315
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 317
    iget-object v2, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    iget-object v4, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 318
    iget-object v2, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v0, v1

    move v2, v5

    move v1, v3

    .line 321
    goto :goto_2

    :cond_1
    move v7, v2

    .line 328
    goto :goto_0

    .line 330
    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Ldolphin/webkit/a/a/s;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Ldolphin/webkit/a/a/s;->f()I

    move-result v0

    .line 193
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-direct {p0, v1}, Ldolphin/webkit/a/a/s;->a(Ljava/util/Enumeration;)Ldolphin/webkit/a/a/ap;

    move-result-object v2

    .line 196
    mul-int/lit8 v0, v0, 0x11

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 199
    goto :goto_0

    .line 201
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ldolphin/webkit/a/a/s;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
