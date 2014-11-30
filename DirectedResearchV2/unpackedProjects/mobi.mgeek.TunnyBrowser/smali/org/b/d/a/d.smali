.class Lorg/b/d/a/d;
.super Ljava/lang/Object;
.source "WebSocketTransport.java"


# instance fields
.field private final a:Lorg/b/a/e;

.field private final b:Lorg/b/b/a/j;

.field private final c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/a/e;Lorg/b/b/a/j;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/a/e;",
            "Lorg/b/b/a/j;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lorg/b/d/a/d;->a:Lorg/b/a/e;

    .line 466
    iput-object p2, p0, Lorg/b/d/a/d;->b:Lorg/b/b/a/j;

    .line 467
    iput-object p3, p0, Lorg/b/d/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 468
    return-void
.end method

.method static synthetic a(Lorg/b/d/a/d;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/b/d/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic b(Lorg/b/d/a/d;)Lorg/b/a/e;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/b/d/a/d;->a:Lorg/b/a/e;

    return-object v0
.end method

.method static synthetic c(Lorg/b/d/a/d;)Lorg/b/b/a/j;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/b/d/a/d;->b:Lorg/b/b/a/j;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/b/d/a/d;->a:Lorg/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
