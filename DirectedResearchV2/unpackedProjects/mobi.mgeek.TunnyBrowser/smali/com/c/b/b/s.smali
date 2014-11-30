.class public Lcom/c/b/b/s;
.super Ljava/lang/Object;
.source "NoteStore.java"

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
        "Lcom/c/b/b/s;",
        "Lcom/c/b/b/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/t;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    .line 17231
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "listTags_args"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/s;->b:Lorg/apache/c/b/j;

    .line 17233
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/s;->c:Lorg/apache/c/b/b;

    .line 17299
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/t;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 17300
    sget-object v1, Lcom/c/b/b/t;->a:Lcom/c/b/b/t;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "authenticationToken"

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/c/a/c;

    invoke-direct {v5, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17302
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/s;->a:Ljava/util/Map;

    .line 17303
    const-class v0, Lcom/c/b/b/s;

    sget-object v1, Lcom/c/b/b/s;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 17304
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17307
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17338
    iput-object p1, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    .line 17339
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 1

    .prologue
    .line 17470
    invoke-virtual {p0}, Lcom/c/b/b/s;->b()V

    .line 17472
    sget-object v0, Lcom/c/b/b/s;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 17473
    iget-object v0, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17474
    sget-object v0, Lcom/c/b/b/s;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 17475
    iget-object v0, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 17476
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 17478
    :cond_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 17479
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 17480
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 17347
    iget-object v0, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/s;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 17400
    if-nez p1, :cond_1

    .line 17412
    :cond_0
    :goto_0
    return v0

    .line 17403
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/s;->a()Z

    move-result v1

    .line 17404
    invoke-virtual {p1}, Lcom/c/b/b/s;->a()Z

    move-result v2

    .line 17405
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 17406
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 17408
    iget-object v1, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/b/s;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17412
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/s;)I
    .locals 2

    .prologue
    .line 17420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17421
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

    .line 17436
    :cond_0
    :goto_0
    return v0

    .line 17427
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/s;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/s;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 17428
    if-nez v0, :cond_0

    .line 17431
    invoke-virtual {p0}, Lcom/c/b/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/b/s;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 17432
    if-nez v0, :cond_0

    .line 17436
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 17499
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17230
    check-cast p1, Lcom/c/b/b/s;

    invoke-virtual {p0, p1}, Lcom/c/b/b/s;->b(Lcom/c/b/b/s;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17392
    if-nez p1, :cond_1

    .line 17396
    :cond_0
    :goto_0
    return v0

    .line 17394
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/s;

    if-eqz v1, :cond_0

    .line 17395
    check-cast p1, Lcom/c/b/b/s;

    invoke-virtual {p0, p1}, Lcom/c/b/b/s;->a(Lcom/c/b/b/s;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 17416
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listTags_args("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17486
    const-string v1, "authenticationToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17487
    iget-object v1, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17488
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17493
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17490
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
