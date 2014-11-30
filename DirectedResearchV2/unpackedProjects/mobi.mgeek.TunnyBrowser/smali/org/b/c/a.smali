.class public abstract Lorg/b/c/a;
.super Ljava/lang/Object;
.source "AbstractClientSession.java"

# interfaces
.implements Lorg/b/a/a/a;


# static fields
.field protected static final a:Lorg/slf4j/Logger;

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/c/a/d/a;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/b/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lorg/b/a/a/a;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/b/c/a;->a:Lorg/slf4j/Logger;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/b/c/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/c/a;->c:Ljava/util/List;

    .line 47
    new-instance v0, Lorg/c/a/d/a;

    invoke-direct {v0}, Lorg/c/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/b/c/a;->d:Lorg/c/a/d/a;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/b/c/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/b/c/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    return-void
.end method

.method static synthetic a(Lorg/b/c/a;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/b/c/a;->e:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/b/c/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/b/c/d",
            "<",
            "Lorg/b/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-static {p1}, Lorg/b/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/b/c/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    move-object v1, v0

    .line 246
    :goto_0
    if-eqz v1, :cond_1

    .line 247
    new-instance v0, Lorg/b/c/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/b/c/d;-><init>(Ljava/lang/Object;ZLorg/b/c/b;)V

    .line 248
    :goto_1
    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/b/c/a;->r()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    move-object v1, v0

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Lorg/b/c/d;

    invoke-virtual {p0, p1}, Lorg/b/c/a;->a(Ljava/lang/String;)Lorg/b/a/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/b/c/a;->a(Lorg/b/a/c;)Lorg/b/c/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/b/c/d;-><init>(Ljava/lang/Object;ZLorg/b/c/b;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lorg/b/a/c;
.end method

.method protected abstract a(Lorg/b/a/c;)Lorg/b/c/c;
.end method

.method protected a(Lorg/b/a/a/e;Lorg/b/a/e;)V
    .locals 2

    .prologue
    .line 233
    invoke-interface {p2}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/b/c/a;->b(Ljava/lang/String;)Lorg/b/c/d;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lorg/b/c/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 235
    invoke-virtual {v0, p1, p2}, Lorg/b/c/c;->a(Lorg/b/a/a/e;Lorg/b/a/d;)V

    .line 236
    invoke-virtual {v1}, Lorg/b/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0}, Lorg/b/c/c;->b()Z

    .line 238
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lorg/b/a/a/c;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/b/c/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 116
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lorg/b/c/a;->a(Ljava/lang/String;)Lorg/b/a/c;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/b/c/a;->a(Lorg/b/a/c;)Lorg/b/c/c;

    move-result-object v1

    .line 120
    iget-object v0, p0, Lorg/b/c/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 121
    if-nez v0, :cond_0

    move-object v0, v1

    .line 124
    :cond_0
    return-object v0
.end method

.method protected f(Lorg/b/a/e;)V
    .locals 3

    .prologue
    .line 214
    invoke-interface {p1}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/b/c/a;->b(Ljava/lang/String;)Lorg/b/c/d;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lorg/b/c/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 216
    invoke-virtual {v0, p1}, Lorg/b/c/c;->a(Lorg/b/a/d;)V

    .line 217
    invoke-virtual {v1}, Lorg/b/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lorg/b/c/c;->b()Z

    .line 220
    :cond_0
    invoke-virtual {v0}, Lorg/b/c/c;->a()Lorg/b/a/c;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/b/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    invoke-direct {p0, v0}, Lorg/b/c/a;->b(Ljava/lang/String;)Lorg/b/c/d;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lorg/b/c/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 225
    invoke-virtual {v0, p1}, Lorg/b/c/c;->a(Lorg/b/a/d;)V

    .line 226
    invoke-virtual {v2}, Lorg/b/c/d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {v0}, Lorg/b/c/c;->b()Z

    goto :goto_0

    .line 229
    :cond_2
    return-void
.end method

.method protected g(Lorg/b/a/e;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-interface {p1}, Lorg/b/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/b/c/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/b;

    .line 80
    invoke-interface {v0, p0, p1}, Lorg/b/a/a/b;->d(Lorg/b/a/a/a;Lorg/b/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/b/c/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/b;

    .line 86
    invoke-interface {v0, p0, p1}, Lorg/b/a/a/b;->c(Lorg/b/a/a/a;Lorg/b/a/e;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract h()V
.end method

.method protected h(Lorg/b/a/e;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-interface {p1}, Lorg/b/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/b/c/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/b;

    .line 97
    invoke-interface {v0, p0, p1}, Lorg/b/a/a/b;->b(Lorg/b/a/a/a;Lorg/b/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/b/c/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/b;

    .line 103
    invoke-interface {v0, p0, p1}, Lorg/b/a/a/b;->a(Lorg/b/a/a/a;Lorg/b/a/e;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Lorg/b/a/e;)V
    .locals 3

    .prologue
    .line 203
    invoke-interface {p1}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bayeux messages must have a channel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lorg/b/c/a;->h(Lorg/b/a/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Lorg/b/c/a;->f(Lorg/b/a/e;)V

    goto :goto_0
.end method

.method protected q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lorg/b/c/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected r()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/b/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/b/c/a;->e:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected s()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/b/c/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected t()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/b/c/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 192
    invoke-virtual {v0}, Lorg/b/c/c;->d()V

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method
