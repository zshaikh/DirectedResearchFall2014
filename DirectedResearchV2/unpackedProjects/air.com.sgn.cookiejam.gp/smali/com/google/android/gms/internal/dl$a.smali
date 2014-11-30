.class Lcom/google/android/gms/internal/dl$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic mr:Lcom/google/android/gms/internal/dl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/internal/dl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dl$a;-><init>(Lcom/google/android/gms/internal/dl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/dl;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v2}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/do;->d(JI)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v2}, Lcom/google/android/gms/internal/dl;->b(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/do;->d(JI)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v2}, Lcom/google/android/gms/internal/dl;->c(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/do;->d(JI)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v2}, Lcom/google/android/gms/internal/dl;->d(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/do;->d(JI)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v2}, Lcom/google/android/gms/internal/dl;->e(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/do;->d(JI)Z

    sget-object v0, Lcom/google/android/gms/internal/do;->mw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v1}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->bf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v1}, Lcom/google/android/gms/internal/dl;->b(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->bf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v1}, Lcom/google/android/gms/internal/dl;->c(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->bf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v1}, Lcom/google/android/gms/internal/dl;->d(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->bf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v1}, Lcom/google/android/gms/internal/dl;->e(Lcom/google/android/gms/internal/dl;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->bf()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dl$a;->mr:Lcom/google/android/gms/internal/dl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dl;->b(Lcom/google/android/gms/internal/dl;Z)V

    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
