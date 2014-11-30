.class public Lcom/acmeaom/android/a/c/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/c/i;

.field private final b:I

.field private final c:I

.field private final d:Lcom/acmeaom/android/a/c/c;

.field private e:Z

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:I

.field private i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/c/i;IILcom/acmeaom/android/a/c/c;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/a/c/g;->e:Z

    .line 22
    iput-object p1, p0, Lcom/acmeaom/android/a/c/g;->a:Lcom/acmeaom/android/a/c/i;

    .line 23
    iput p2, p0, Lcom/acmeaom/android/a/c/g;->b:I

    .line 24
    iput p3, p0, Lcom/acmeaom/android/a/c/g;->c:I

    .line 25
    iput-object p4, p0, Lcom/acmeaom/android/a/c/g;->d:Lcom/acmeaom/android/a/c/c;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/c/g;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/acmeaom/android/a/c/g;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/a/c/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/acmeaom/android/a/c/g;->i:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/acmeaom/android/a/c/g;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/acmeaom/android/a/c/g;->h:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/a/c/g;->e:Z

    .line 30
    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/acmeaom/android/a/c/g;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/acmeaom/android/a/c/g;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/acmeaom/android/a/c/g;->a:Lcom/acmeaom/android/a/c/i;

    sget-object v1, Lcom/acmeaom/android/a/c/i;->a:Lcom/acmeaom/android/a/c/i;

    if-ne v0, v1, :cond_2

    .line 48
    iget v0, p0, Lcom/acmeaom/android/a/c/g;->h:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/acmeaom/android/a/c/g;->h:I

    .line 50
    iget v0, p0, Lcom/acmeaom/android/a/c/g;->h:I

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/acmeaom/android/a/c/g;->i:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 53
    iget v0, p0, Lcom/acmeaom/android/a/c/g;->h:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/a/c/g;->h:I

    .line 55
    new-instance v0, Lcom/acmeaom/android/a/c/h;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/c/h;-><init>(Lcom/acmeaom/android/a/c/g;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/c/g;->i:Ljava/lang/Runnable;

    .line 70
    iget-object v0, p0, Lcom/acmeaom/android/a/c/g;->d:Lcom/acmeaom/android/a/c/c;

    iget-object v1, p0, Lcom/acmeaom/android/a/c/g;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1}, Lcom/acmeaom/android/a/c/c;->a(Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/acmeaom/android/a/c/g;->f:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/a/c/g;->k:Z

    .line 87
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/acmeaom/android/a/c/g;->g:Ljava/lang/Runnable;

    .line 38
    return-void
.end method
