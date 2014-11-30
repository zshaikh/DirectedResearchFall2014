.class public Lorg/c/a/d/b/b;
.super Lorg/c/a/d/b/a;
.source "AggregateLifeCycle.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/c/a/d/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/c/a/d/b/b;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/b/b;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/c/a/d/b/a;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/b/b;->b:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/d/b/b;->c:Z

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/c/a/d/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/b/c;

    .line 142
    iget-object v0, v0, Lorg/c/a/d/b/c;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Z)Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lorg/c/a/d/b/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    .line 187
    :cond_0
    new-instance v0, Lorg/c/a/d/b/c;

    invoke-direct {v0, p0, p1}, Lorg/c/a/d/b/c;-><init>(Lorg/c/a/d/b/b;Ljava/lang/Object;)V

    .line 188
    iput-boolean p2, v0, Lorg/c/a/d/b/c;->b:Z

    .line 189
    iget-object v1, p0, Lorg/c/a/d/b/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    instance-of v0, p1, Lorg/c/a/d/b/d;

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Lorg/c/a/d/b/d;

    .line 196
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lorg/c/a/d/b/b;->c:Z

    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    invoke-interface {p1}, Lorg/c/a/d/b/d;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 173
    instance-of v0, p1, Lorg/c/a/d/b/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/c/a/d/b/d;

    invoke-interface {v0}, Lorg/c/a/d/b/d;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/c/a/d/b/b;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/c/a/d/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/b/c;

    .line 77
    iget-boolean v2, v0, Lorg/c/a/d/b/c;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/c/a/d/b/c;->a:Ljava/lang/Object;

    instance-of v2, v2, Lorg/c/a/d/b/d;

    if-eqz v2, :cond_0

    .line 79
    iget-object v0, v0, Lorg/c/a/d/b/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/c/a/d/b/d;

    .line 80
    invoke-interface {v0}, Lorg/c/a/d/b/d;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-interface {v0}, Lorg/c/a/d/b/d;->p()V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/d/b/b;->c:Z

    .line 86
    invoke-super {p0}, Lorg/c/a/d/b/a;->h()V

    .line 87
    return-void
.end method
