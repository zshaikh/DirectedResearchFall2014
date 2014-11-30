.class Lorg/c/a/c/b/o;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/c/a/c/b/n;


# direct methods
.method constructor <init>(Lorg/c/a/c/b/n;J)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lorg/c/a/c/b/o;->b:Lorg/c/a/c/b/n;

    iput-wide p2, p0, Lorg/c/a/c/b/o;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 718
    iget-object v0, p0, Lorg/c/a/c/b/o;->b:Lorg/c/a/c/b/n;

    invoke-static {v0}, Lorg/c/a/c/b/n;->a(Lorg/c/a/c/b/n;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/b/g;

    .line 720
    iget-wide v2, p0, Lorg/c/a/c/b/o;->a:J

    invoke-virtual {v0, v2, v3}, Lorg/c/a/c/b/g;->b(J)V

    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
