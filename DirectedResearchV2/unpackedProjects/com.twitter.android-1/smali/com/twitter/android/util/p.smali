.class final Lcom/twitter/android/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:J

.field private synthetic b:Lcom/twitter/android/util/k;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/k;J)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/util/p;->b:Lcom/twitter/android/util/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/twitter/android/util/p;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/util/p;->b:Lcom/twitter/android/util/k;

    iget-object v1, v0, Lcom/twitter/android/util/k;->c:[I

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/util/p;->b:Lcom/twitter/android/util/k;

    iget-object v0, v0, Lcom/twitter/android/util/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/twitter/android/util/o;

    iget-object v1, p0, Lcom/twitter/android/util/p;->b:Lcom/twitter/android/util/k;

    iget-wide v2, p0, Lcom/twitter/android/util/p;->a:J

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/util/o;-><init>(Lcom/twitter/android/util/k;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
