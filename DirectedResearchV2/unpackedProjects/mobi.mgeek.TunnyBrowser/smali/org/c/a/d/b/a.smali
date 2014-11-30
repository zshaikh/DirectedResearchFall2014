.class public abstract Lorg/c/a/d/b/a;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"

# interfaces
.implements Lorg/c/a/d/b/d;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field protected final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/c/a/d/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:I

.field private final h:I

.field private volatile i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/c/a/d/b/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/b/a;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/b/a;->b:Ljava/lang/Object;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/d/b/a;->c:I

    iput v1, p0, Lorg/c/a/d/b/a;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/c/a/d/b/a;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/c/a/d/b/a;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/c/a/d/b/a;->h:I

    .line 43
    iput v1, p0, Lorg/c/a/d/b/a;->i:I

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/b/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 209
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x2

    iput v0, p0, Lorg/c/a/d/b/a;->i:I

    .line 172
    sget-object v0, Lorg/c/a/d/b/a;->a:Lorg/c/a/d/c/d;

    const-string v1, "STARTED {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lorg/c/a/d/b/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/b/e;

    .line 174
    invoke-interface {v0, p0}, Lorg/c/a/d/b/e;->b(Lorg/c/a/d/b/d;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/d/b/a;->i:I

    .line 204
    sget-object v0, Lorg/c/a/d/b/a;->a:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    iget-object v0, p0, Lorg/c/a/d/b/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/b/e;

    .line 206
    invoke-interface {v0, p0, p1}, Lorg/c/a/d/b/e;->a(Lorg/c/a/d/b/d;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    sget-object v0, Lorg/c/a/d/b/a;->a:Lorg/c/a/d/c/d;

    const-string v1, "starting {}"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iput v4, p0, Lorg/c/a/d/b/a;->i:I

    .line 181
    iget-object v0, p0, Lorg/c/a/d/b/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/b/e;

    .line 182
    invoke-interface {v0, p0}, Lorg/c/a/d/b/e;->a(Lorg/c/a/d/b/d;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method protected h()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lorg/c/a/d/b/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget v0, p0, Lorg/c/a/d/b/a;->i:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/c/a/d/b/a;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 62
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    return-void

    .line 63
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/c/a/d/b/a;->b()V

    .line 64
    invoke-virtual {p0}, Lorg/c/a/d/b/a;->h()V

    .line 65
    invoke-direct {p0}, Lorg/c/a/d/b/a;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    :try_start_4
    invoke-direct {p0, v0}, Lorg/c/a/d/b/a;->a(Ljava/lang/Throwable;)V

    .line 70
    throw v0

    .line 72
    :catch_1
    move-exception v0

    .line 74
    invoke-direct {p0, v0}, Lorg/c/a/d/b/a;->a(Ljava/lang/Throwable;)V

    .line 75
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public q()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lorg/c/a/d/b/a;->i:I

    .line 109
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lorg/c/a/d/b/a;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
