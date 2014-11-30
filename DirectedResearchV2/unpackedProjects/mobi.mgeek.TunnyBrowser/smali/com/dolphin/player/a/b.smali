.class public Lcom/dolphin/player/a/b;
.super Ljava/lang/Object;
.source "Calculagraph.java"


# static fields
.field private static c:I


# instance fields
.field private a:Lcom/dolphin/player/a/d;

.field private b:Ljava/util/Timer;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x3e8

    sput v0, Lcom/dolphin/player/a/b;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "CalculagraphTimer"

    invoke-direct {p0, v0}, Lcom/dolphin/player/a/b;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/player/a/b;->d:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/player/a/b;->b:Ljava/util/Timer;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/a/b;)Lcom/dolphin/player/a/d;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/player/a/b;->a:Lcom/dolphin/player/a/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 59
    iget-object v1, p0, Lcom/dolphin/player/a/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/dolphin/player/a/b;->a:Lcom/dolphin/player/a/d;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/dolphin/player/a/b;->a:Lcom/dolphin/player/a/d;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/dolphin/player/a/d;->a(J)V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/dolphin/player/a/b;->b:Ljava/util/Timer;

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/dolphin/player/a/b;->b:Ljava/util/Timer;

    .line 68
    :cond_1
    new-instance v2, Lcom/dolphin/player/a/c;

    invoke-direct {v2, p0}, Lcom/dolphin/player/a/c;-><init>(Lcom/dolphin/player/a/b;)V

    .line 78
    iget-object v3, p0, Lcom/dolphin/player/a/b;->b:Ljava/util/Timer;

    sget v4, Lcom/dolphin/player/a/b;->c:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/dolphin/player/a/d;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/dolphin/player/a/b;->a:Lcom/dolphin/player/a/d;

    .line 56
    return-void
.end method
