.class public Lcom/c/b/a/b;
.super Ljava/lang/Exception;
.source "EDAMNotFoundException.java"

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
        "Lcom/c/b/a/b;",
        "Lcom/c/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/a/c;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xb

    .line 36
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "EDAMNotFoundException"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/a/b;->b:Lorg/apache/c/b/j;

    .line 38
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "identifier"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/a/b;->c:Lorg/apache/c/b/b;

    .line 39
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "key"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/a/b;->d:Lorg/apache/c/b/b;

    .line 109
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/a/c;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 110
    sget-object v1, Lcom/c/b/a/c;->a:Lcom/c/b/a/c;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "identifier"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v5}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/c/b/a/c;->b:Lcom/c/b/a/c;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "key"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v5}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/a/b;->a:Ljava/util/Map;

    .line 115
    const-class v0, Lcom/c/b/a/b;

    sget-object v1, Lcom/c/b/a/b;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 308
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 311
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 312
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 335
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 336
    invoke-virtual {p0}, Lcom/c/b/a/b;->c()V

    .line 337
    return-void

    .line 315
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 331
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 333
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 317
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_1

    .line 318
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/a/b;->e:Ljava/lang/String;

    goto :goto_1

    .line 320
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 324
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_2

    .line 325
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/a/b;->f:Ljava/lang/String;

    goto :goto_1

    .line 327
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/c/b/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/a/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/a/b;->a()Z

    move-result v1

    .line 249
    invoke-virtual {p1}, Lcom/c/b/a/b;->a()Z

    move-result v2

    .line 250
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 251
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/c/b/a/b;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/a/b;->b()Z

    move-result v1

    .line 258
    invoke-virtual {p1}, Lcom/c/b/a/b;->b()Z

    move-result v2

    .line 259
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 260
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/c/b/a/b;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/a/b;)I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
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

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/a/b;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/a/b;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 282
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/c/b/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/a/b;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/a/b;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/a/b;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 291
    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/c/b/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/a/b;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/a/b;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 295
    if-nez v0, :cond_0

    .line 299
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/c/b/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/c/b/a/b;

    invoke-virtual {p0, p1}, Lcom/c/b/a/b;->b(Lcom/c/b/a/b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    instance-of v1, p1, Lcom/c/b/a/b;

    if-eqz v1, :cond_0

    .line 240
    check-cast p1, Lcom/c/b/a/b;

    invoke-virtual {p0, p1}, Lcom/c/b/a/b;->a(Lcom/c/b/a/b;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "EDAMNotFoundException("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x1

    .line 365
    invoke-virtual {p0}, Lcom/c/b/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const-string v0, "identifier:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v0, p0, Lcom/c/b/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 368
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :goto_0
    const/4 v0, 0x0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/a/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_1
    const-string v0, "key:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v0, p0, Lcom/c/b/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 378
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/c/b/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/c/b/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
