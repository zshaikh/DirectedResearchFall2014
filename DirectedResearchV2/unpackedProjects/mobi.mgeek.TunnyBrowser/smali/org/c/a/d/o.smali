.class Lorg/c/a/d/o;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic a:Lorg/c/a/d/l;


# direct methods
.method private constructor <init>(Lorg/c/a/d/l;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lorg/c/a/d/o;->a:Lorg/c/a/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/d/l;Lorg/c/a/d/m;)V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lorg/c/a/d/o;-><init>(Lorg/c/a/d/l;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/c/a/d/o;->a:Lorg/c/a/d/l;

    iget-object v0, v0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lorg/c/a/d/o;->a:Lorg/c/a/d/l;

    iget-object v0, v0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    iget-object v1, p0, Lorg/c/a/d/o;->a:Lorg/c/a/d/l;

    iput-object p1, v1, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[:null="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/d/o;->a:Lorg/c/a/d/l;

    iget-object v1, v1, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
