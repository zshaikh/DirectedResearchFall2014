.class public abstract Lorg/b/b/a/a;
.super Lorg/b/c/e;
.source "ClientTransport.java"


# instance fields
.field protected final a:Lorg/slf4j/Logger;

.field private b:Z

.field private c:Lorg/b/c/h;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/b/c/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/b/b/a/a;->a:Lorg/slf4j/Logger;

    .line 46
    return-void
.end method


# virtual methods
.method protected a([Lorg/b/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/b/b/a/a;->c:Lorg/b/c/h;

    invoke-interface {v0, p1}, Lorg/b/c/h;->a([Lorg/b/a/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "jsonContext"

    invoke-virtual {p0, v0}, Lorg/b/b/a/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/h;

    iput-object v0, p0, Lorg/b/b/a/a;->c:Lorg/b/c/h;

    .line 51
    iget-object v0, p0, Lorg/b/b/a/a;->c:Lorg/b/c/h;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/b/c/o;

    invoke-direct {v0}, Lorg/b/c/o;-><init>()V

    iput-object v0, p0, Lorg/b/b/a/a;->c:Lorg/b/c/h;

    .line 53
    :cond_0
    return-void
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/b/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/b/b/a/a;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/b/b/a/a;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs abstract a(Lorg/b/b/a/j;[Lorg/b/a/e;)V
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method protected b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/b/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/b/b/a/a;->c:Lorg/b/c/h;

    invoke-interface {v1, p1}, Lorg/b/c/h;->a(Ljava/lang/String;)[Lorg/b/a/e;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/b/b/a/a;->b:Z

    return v0
.end method

.method public abstract c()V
.end method

.method public d()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
