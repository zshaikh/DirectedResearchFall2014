.class public Lcom/c/b/d/e;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/d/e;",
        "Lcom/c/b/d/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/d/f;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;


# instance fields
.field private f:Lcom/c/b/c/z;

.field private g:Lcom/c/b/a/f;

.field private h:Lcom/c/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 3963
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "getUser_result"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/d/e;->b:Lorg/apache/c/b/j;

    .line 3965
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/d/e;->c:Lorg/apache/c/b/b;

    .line 3966
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/d/e;->d:Lorg/apache/c/b/b;

    .line 3967
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/d/e;->e:Lorg/apache/c/b/b;

    .line 4041
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/d/f;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4042
    sget-object v1, Lcom/c/b/d/f;->a:Lcom/c/b/d/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "success"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/z;

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4044
    sget-object v1, Lcom/c/b/d/f;->b:Lcom/c/b/d/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4046
    sget-object v1, Lcom/c/b/d/f;->c:Lcom/c/b/d/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4048
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/d/e;->a:Ljava/util/Map;

    .line 4049
    const-class v0, Lcom/c/b/d/e;

    sget-object v1, Lcom/c/b/d/e;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 4050
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4053
    return-void
.end method

.method static synthetic c(Lcom/c/b/d/e;)Lcom/c/b/c/z;
    .locals 1

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/d/e;)Lcom/c/b/a/f;
    .locals 1

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/c/b/d/e;)Lcom/c/b/a/d;
    .locals 1

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 4311
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 4314
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 4315
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 4348
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 4349
    invoke-virtual {p0}, Lcom/c/b/d/e;->d()V

    .line 4350
    return-void

    .line 4318
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 4344
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 4346
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 4320
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_1

    .line 4321
    new-instance v0, Lcom/c/b/c/z;

    invoke-direct {v0}, Lcom/c/b/c/z;-><init>()V

    iput-object v0, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    .line 4322
    iget-object v0, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    invoke-virtual {v0, p1}, Lcom/c/b/c/z;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 4324
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 4328
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_2

    .line 4329
    new-instance v0, Lcom/c/b/a/f;

    invoke-direct {v0}, Lcom/c/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    .line 4330
    iget-object v0, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    invoke-virtual {v0, p1}, Lcom/c/b/a/f;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 4332
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 4336
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_3

    .line 4337
    new-instance v0, Lcom/c/b/a/d;

    invoke-direct {v0}, Lcom/c/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    .line 4338
    iget-object v0, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    invoke-virtual {v0, p1}, Lcom/c/b/a/d;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 4340
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 4318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/d/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4230
    if-nez p1, :cond_1

    .line 4260
    :cond_0
    :goto_0
    return v0

    .line 4233
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/d/e;->a()Z

    move-result v1

    .line 4234
    invoke-virtual {p1}, Lcom/c/b/d/e;->a()Z

    move-result v2

    .line 4235
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 4236
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 4238
    iget-object v1, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    iget-object v2, p1, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    invoke-virtual {v1, v2}, Lcom/c/b/c/z;->a(Lcom/c/b/c/z;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4242
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/d/e;->b()Z

    move-result v1

    .line 4243
    invoke-virtual {p1}, Lcom/c/b/d/e;->b()Z

    move-result v2

    .line 4244
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 4245
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 4247
    iget-object v1, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    iget-object v2, p1, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    invoke-virtual {v1, v2}, Lcom/c/b/a/f;->a(Lcom/c/b/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4251
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/d/e;->c()Z

    move-result v1

    .line 4252
    invoke-virtual {p1}, Lcom/c/b/d/e;->c()Z

    move-result v2

    .line 4253
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 4254
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 4256
    iget-object v1, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    iget-object v2, p1, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    invoke-virtual {v1, v2}, Lcom/c/b/a/d;->a(Lcom/c/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4260
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/d/e;)I
    .locals 2

    .prologue
    .line 4268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4269
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

    .line 4302
    :cond_0
    :goto_0
    return v0

    .line 4275
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/d/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/d/e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4276
    if-nez v0, :cond_0

    .line 4279
    invoke-virtual {p0}, Lcom/c/b/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    iget-object v1, p1, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4280
    if-nez v0, :cond_0

    .line 4284
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/d/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/d/e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4285
    if-nez v0, :cond_0

    .line 4288
    invoke-virtual {p0}, Lcom/c/b/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    iget-object v1, p1, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4289
    if-nez v0, :cond_0

    .line 4293
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/d/e;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/d/e;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4294
    if-nez v0, :cond_0

    .line 4297
    invoke-virtual {p0}, Lcom/c/b/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    iget-object v1, p1, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4298
    if-nez v0, :cond_0

    .line 4302
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3962
    check-cast p1, Lcom/c/b/d/e;

    invoke-virtual {p0, p1}, Lcom/c/b/d/e;->b(Lcom/c/b/d/e;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 4405
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4222
    if-nez p1, :cond_1

    .line 4226
    :cond_0
    :goto_0
    return v0

    .line 4224
    :cond_1
    instance-of v1, p1, Lcom/c/b/d/e;

    if-eqz v1, :cond_0

    .line 4225
    check-cast p1, Lcom/c/b/d/e;

    invoke-virtual {p0, p1}, Lcom/c/b/d/e;->a(Lcom/c/b/d/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 4264
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUser_result("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4376
    const-string v1, "success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4377
    iget-object v1, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    if-nez v1, :cond_0

    .line 4378
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4384
    const-string v1, "userException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4385
    iget-object v1, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    if-nez v1, :cond_1

    .line 4386
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    const-string v1, "systemException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4393
    iget-object v1, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    if-nez v1, :cond_2

    .line 4394
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4380
    :cond_0
    iget-object v1, p0, Lcom/c/b/d/e;->f:Lcom/c/b/c/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4388
    :cond_1
    iget-object v1, p0, Lcom/c/b/d/e;->g:Lcom/c/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4396
    :cond_2
    iget-object v1, p0, Lcom/c/b/d/e;->h:Lcom/c/b/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
