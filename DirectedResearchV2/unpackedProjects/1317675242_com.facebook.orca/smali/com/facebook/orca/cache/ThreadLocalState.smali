.class Lcom/facebook/orca/cache/ThreadLocalState;
.super Ljava/lang/Object;
.source "ThreadLocalState.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/facebook/orca/location/LocationResult;

.field private g:J

.field private h:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    .line 24
    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->d:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->a:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    .line 57
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 60
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/location/LocationResult;J)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->f:Lcom/facebook/orca/location/LocationResult;

    .line 100
    iput-wide p2, p0, Lcom/facebook/orca/cache/ThreadLocalState;->g:J

    .line 101
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/orca/cache/NameComputer;

    invoke-direct {v0}, Lcom/facebook/orca/cache/NameComputer;-><init>()V

    .line 83
    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/NameComputer;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->d:Ljava/util/Map;

    .line 84
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->e:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->e:Z

    .line 45
    return-void
.end method

.method public b(J)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->e:Z

    .line 49
    return-void
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->h:J

    .line 109
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    return-wide v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 76
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->h:J

    return-wide v0
.end method
