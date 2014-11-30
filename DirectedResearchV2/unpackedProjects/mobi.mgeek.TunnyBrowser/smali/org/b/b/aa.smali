.class Lorg/b/b/aa;
.super Ljava/lang/Object;
.source "BayeuxClient.java"

# interfaces
.implements Lorg/b/b/a/j;


# instance fields
.field final synthetic b:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lorg/b/b/aa;->b:Lorg/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lorg/b/b/aa;-><init>(Lorg/b/b/a;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lorg/b/b/aa;->b:Lorg/b/b/a;

    invoke-virtual {v0, p1, p2}, Lorg/b/b/a;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 1172
    iget-object v0, p0, Lorg/b/b/aa;->b:Lorg/b/b/a;

    invoke-virtual {v0, p1, p2}, Lorg/b/b/a;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 1173
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/b/b/aa;->b:Lorg/b/b/a;

    invoke-virtual {v0, p1}, Lorg/b/b/a;->a(Ljava/util/List;)V

    .line 1145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/e;

    .line 1146
    invoke-virtual {p0, v0}, Lorg/b/b/aa;->a(Lorg/b/a/e;)V

    goto :goto_0

    .line 1147
    :cond_0
    return-void
.end method

.method protected a(Lorg/b/a/e;)V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lorg/b/b/aa;->b:Lorg/b/b/a;

    invoke-virtual {v0, p1}, Lorg/b/b/a;->d(Lorg/b/a/e;)V

    .line 1167
    return-void
.end method

.method public a([Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/b/b/aa;->b:Lorg/b/b/a;

    invoke-virtual {v0, p1}, Lorg/b/b/a;->a([Lorg/b/a/d;)V

    .line 1140
    return-void
.end method

.method public b(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    .locals 0

    .prologue
    .line 1151
    invoke-virtual {p0, p1, p2}, Lorg/b/b/aa;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 1152
    return-void
.end method

.method public b([Lorg/b/a/d;)V
    .locals 2

    .prologue
    .line 1161
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "expired"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/b/b/aa;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 1162
    return-void
.end method

.method public c(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    .locals 0

    .prologue
    .line 1156
    invoke-virtual {p0, p1, p2}, Lorg/b/b/aa;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 1157
    return-void
.end method
