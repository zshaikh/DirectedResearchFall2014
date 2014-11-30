.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/maps/a/d;

.field private b:Lcom/google/android/gms/maps/l;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/bf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/d;

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/gms/maps/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/i;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/i;-><init>(Lcom/google/android/gms/maps/model/a/m;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/d/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/d/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/f;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ao;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v1, Lcom/google/android/gms/maps/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/d;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/f;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ao;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/g;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ax;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v1, Lcom/google/android/gms/maps/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/e;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ax;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Lcom/google/android/gms/maps/a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/d/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->b(Lcom/google/android/gms/d/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()Landroid/location/Location;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->j()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()Lcom/google/android/gms/maps/l;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/l;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v1}, Lcom/google/android/gms/maps/a/d;->k()Lcom/google/android/gms/maps/a/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/l;-><init>(Lcom/google/android/gms/maps/a/s;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/l;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/l;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
