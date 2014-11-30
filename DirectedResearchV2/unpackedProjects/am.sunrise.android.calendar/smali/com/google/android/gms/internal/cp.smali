.class public Lcom/google/android/gms/internal/cp;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/cv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cv",
            "<",
            "Lcom/google/android/gms/internal/cm;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/cv",
            "<",
            "Lcom/google/android/gms/internal/cm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cp;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cp;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cp;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/cp;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cp;->a:Lcom/google/android/gms/internal/cv;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->a:Lcom/google/android/gms/internal/cv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cv;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->a:Lcom/google/android/gms/internal/cv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cv;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cm;

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cm;->a(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->a:Lcom/google/android/gms/internal/cv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cv;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->a:Lcom/google/android/gms/internal/cv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cv;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cm;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cp;->d:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cp;->e:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->a:Lcom/google/android/gms/internal/cv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/cv;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cm;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cm;->a(Lcom/google/android/gms/location/f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cp;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cp;->a(Z)V

    :cond_0
    return-void
.end method
