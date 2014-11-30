.class public final Lcom/google/android/gms/maps/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/bf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/maps/a/bn;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;
    :try_end_0
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/maps/a/z;->a()Lcom/google/android/gms/maps/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/a/a;)V

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/z;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/a/d;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/e;->a:I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
