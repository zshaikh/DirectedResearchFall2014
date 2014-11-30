.class public Lcom/acmeaom/android/b/c/d/e;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/b/c/d/i;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    sget-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 36
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/acmeaom/android/b/c/d/f;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/d/f;-><init>(Lcom/acmeaom/android/b/c/d/e;)V

    const-string v2, "kCloudsStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    new-instance v1, Lcom/acmeaom/android/b/c/d/g;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/d/g;-><init>(Lcom/acmeaom/android/b/c/d/e;)V

    const-string v2, "kCloudsOpacityChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcom/acmeaom/android/b/c/d/h;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/d/h;-><init>(Lcom/acmeaom/android/b/c/d/e;)V

    const-string v2, "kCloudTileTypeChangedNotification"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/b/c/d/e;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/d/e;->k()V

    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/b/c/d/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/d/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 117
    check-cast p1, Ljava/util/HashMap;

    .line 118
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->b()Lcom/acmeaom/android/a/f/g;

    .line 124
    const-string v1, "kCloudTileType"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/aa;->a(Z)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "kCloudsStatusKey"

    const-string v2, "kCloudsStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "kCloudsOpacityKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/b/c/d/i;->a(F)V

    .line 113
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 56
    const-string v0, "kCloudsStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/d/e;->g()V

    .line 85
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/i;->b_()V

    .line 88
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/d/e;->g()V

    .line 66
    new-instance v0, Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/d/e;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/d/i;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    .line 67
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    sget-object v1, Lcom/acmeaom/android/a/f/l;->m:Lcom/acmeaom/android/a/f/l;

    iget v1, v1, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/d/i;->a(I)V

    .line 69
    const-string v0, "kCloudsOpacityKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/b/c/d/i;->a(F)V

    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->b:Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/d/i;->a(Lcom/acmeaom/android/a/a/b/ae;)V

    .line 73
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/i;->e()V

    .line 74
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/i;->g()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    .line 81
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/i;->i()V

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/e;->a:Lcom/acmeaom/android/b/c/d/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/i;->m()V

    .line 101
    :cond_0
    return-void
.end method
