.class public Lcom/acmeaom/android/a/a/b/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/b/h;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->c:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/acmeaom/android/a/a/b/h;->c:Ljava/util/HashMap;

    check-cast v0, Ljava/lang/Enum;

    iget-object v3, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/h;->e:Ljava/lang/Enum;

    .line 24
    iput-object p2, p0, Lcom/acmeaom/android/a/a/b/h;->d:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private d(Ljava/lang/Enum;)Ljava/util/concurrent/locks/Condition;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    .line 73
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/h;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 30
    return-void
.end method

.method public a(Ljava/lang/Enum;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/acmeaom/android/a/a/b/h;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/h;->e:Ljava/lang/Enum;

    .line 35
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/a/b/h;->d(Ljava/lang/Enum;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 36
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/h;->b()V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/Enum;Lcom/acmeaom/android/a/a/b/j;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/b/j;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 68
    :goto_0
    return v0

    .line 60
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/h;->e:Ljava/lang/Enum;

    if-eq v1, p1, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/a/b/h;->d(Ljava/lang/Enum;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/b/j;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/h;->e:Ljava/lang/Enum;

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/h;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/acmeaom/android/a/a/b/h;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    return-void
.end method

.method public b(Ljava/lang/Enum;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->e:Ljava/lang/Enum;

    if-eq v0, p1, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/a/b/h;->d(Ljava/lang/Enum;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->e:Ljava/lang/Enum;

    return-object v0
.end method

.method public c(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 90
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/h;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
