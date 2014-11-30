.class public Lcom/c/b/a/d;
.super Ljava/lang/Exception;
.source "EDAMSystemException.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/a/d;",
        "Lcom/c/b/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/a/e;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;


# instance fields
.field private e:Lcom/c/b/a/a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 34
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "EDAMSystemException"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/a/d;->b:Lorg/apache/c/b/j;

    .line 36
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "errorCode"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/a/d;->c:Lorg/apache/c/b/b;

    .line 37
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "message"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/a/d;->d:Lorg/apache/c/b/b;

    .line 111
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/a/e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 112
    sget-object v1, Lcom/c/b/a/e;->a:Lcom/c/b/a/e;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "errorCode"

    new-instance v4, Lorg/apache/c/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/c/b/a/a;

    invoke-direct {v4, v5, v6}, Lorg/apache/c/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/c/b/a/e;->b:Lcom/c/b/a/e;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "message"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/a/d;->a:Ljava/util/Map;

    .line 117
    const-class v0, Lcom/c/b/a/d;

    sget-object v1, Lcom/c/b/a/d;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 328
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 329
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 353
    invoke-virtual {p0}, Lcom/c/b/a/d;->c()V

    .line 354
    return-void

    .line 332
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 348
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 350
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 334
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 335
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    invoke-static {v0}, Lcom/c/b/a/a;->a(I)Lcom/c/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    goto :goto_1

    .line 337
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 341
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 342
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    goto :goto_1

    .line 344
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/a/d;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 262
    if-nez p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/a/d;->a()Z

    move-result v1

    .line 266
    invoke-virtual {p1}, Lcom/c/b/a/d;->a()Z

    move-result v2

    .line 267
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 268
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 270
    iget-object v1, p0, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    iget-object v2, p1, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    invoke-virtual {v1, v2}, Lcom/c/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/a/d;->b()Z

    move-result v1

    .line 275
    invoke-virtual {p1}, Lcom/c/b/a/d;->b()Z

    move-result v2

    .line 276
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 277
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 279
    iget-object v1, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/a/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/a/d;)I
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/a/d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/a/d;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 299
    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/c/b/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    iget-object v1, p1, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 303
    if-nez v0, :cond_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/a/d;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/a/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 308
    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/c/b/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/a/d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 312
    if-nez v0, :cond_0

    .line 316
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/c/b/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lorg/apache/c/b/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/c/b/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/c/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/c/b/a/d;

    invoke-virtual {p0, p1}, Lcom/c/b/a/d;->b(Lcom/c/b/a/d;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    instance-of v1, p1, Lcom/c/b/a/d;

    if-eqz v1, :cond_0

    .line 257
    check-cast p1, Lcom/c/b/a/d;

    invoke-virtual {p0, p1}, Lcom/c/b/a/d;->a(Lcom/c/b/a/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EDAMSystemException("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v1, p0, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    if-nez v1, :cond_1

    .line 382
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/c/b/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, "message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 391
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_0
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/c/b/a/d;->e:Lcom/c/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/c/b/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
