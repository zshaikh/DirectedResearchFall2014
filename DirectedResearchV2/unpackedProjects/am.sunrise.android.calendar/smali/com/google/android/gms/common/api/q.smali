.class Lcom/google/android/gms/common/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/c;

.field final synthetic b:Lcom/google/android/gms/common/api/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    iput-object p2, p0, Lcom/google/android/gms/common/api/q;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v0}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/m;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v0}, Lcom/google/android/gms/common/api/m;->h(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v1}, Lcom/google/android/gms/common/api/m;->i(Lcom/google/android/gms/common/api/m;)I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    iget-object v1, p0, Lcom/google/android/gms/common/api/q;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/c;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/m;->c(Lcom/google/android/gms/common/api/m;I)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v0}, Lcom/google/android/gms/common/api/m;->d(Lcom/google/android/gms/common/api/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v0}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/m;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/q;->b:Lcom/google/android/gms/common/api/m;

    invoke-static {v1}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/m;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
