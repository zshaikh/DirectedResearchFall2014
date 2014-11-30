.class public Lcom/acmeaom/android/a/f/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/android/a/u;
.implements Lcom/android/a/v;


# instance fields
.field protected a:Lcom/acmeaom/android/a/f/y;

.field private b:Lcom/android/a/p;

.field private c:Lcom/acmeaom/android/a/f/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    const-string v0, "https://flightwise.com/ws/%@.asmx/%@"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/acmeaom/android/a/f/o;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/acmeaom/android/a/f/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/f/t;-><init>(Lcom/acmeaom/android/a/f/p;)V

    return-object v0
.end method

.method public static c()Lcom/acmeaom/android/a/f/o;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/acmeaom/android/a/f/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/f/w;-><init>(Lcom/acmeaom/android/a/f/p;)V

    return-object v0
.end method

.method public static d()Lcom/acmeaom/android/a/f/o;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/acmeaom/android/a/f/q;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/q;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/android/a/p;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/a/a/r;

    invoke-direct {v0, p1, p0, p0}, Lcom/android/a/a/r;-><init>(Ljava/lang/String;Lcom/android/a/v;Lcom/android/a/u;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/f/o;->b:Lcom/android/a/p;

    invoke-virtual {v0}, Lcom/android/a/p;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/acmeaom/android/a/f/s;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/acmeaom/android/a/f/o;->c:Lcom/acmeaom/android/a/f/s;

    .line 134
    return-void
.end method

.method public declared-synchronized a(Lcom/acmeaom/android/a/f/y;)V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/acmeaom/android/a/f/o;->a:Lcom/acmeaom/android/a/f/y;

    .line 122
    invoke-interface {p1, p0}, Lcom/acmeaom/android/a/f/y;->a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/f/o;->a(Ljava/lang/String;)Lcom/android/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/f/o;->b:Lcom/android/a/p;

    .line 125
    iget-object v0, p0, Lcom/acmeaom/android/a/f/o;->b:Lcom/android/a/p;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/v;->a(Lcom/android/a/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/android/a/aa;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 56
    new-instance v1, Lcom/acmeaom/android/a/a/b/i;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/a/b/i;-><init>([B)V

    .line 57
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v2, Lcom/acmeaom/android/a/f/p;

    invoke-direct {v2, p0, v1}, Lcom/acmeaom/android/a/f/p;-><init>(Lcom/acmeaom/android/a/f/o;Lcom/acmeaom/android/a/a/b/i;)V

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
