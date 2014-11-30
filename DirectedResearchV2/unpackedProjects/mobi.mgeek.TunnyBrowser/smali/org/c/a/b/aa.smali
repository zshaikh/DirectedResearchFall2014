.class public Lorg/c/a/b/aa;
.super Ljava/lang/Object;
.source "PathMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private transient d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lorg/c/a/b/aa;->a:Ljava/lang/Object;

    .line 530
    iput-object p2, p0, Lorg/c/a/b/aa;->b:Ljava/lang/Object;

    .line 531
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lorg/c/a/b/aa;->c:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/c/a/b/aa;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/c/a/b/aa;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 545
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lorg/c/a/b/aa;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/b/aa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/b/aa;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/aa;->d:Ljava/lang/String;

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/c/a/b/aa;->d:Ljava/lang/String;

    return-object v0
.end method
