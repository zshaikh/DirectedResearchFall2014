.class final Lcom/google/android/gms/internal/ek$a;
.super Lcom/google/android/gms/internal/eh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final id:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

.field final synthetic ie:Lcom/google/android/gms/internal/ek;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$a;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0}, Lcom/google/android/gms/internal/eh;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ek$a;->id:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->i()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->i()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->getStatusCode()I

    move-result v2

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->close()V

    :cond_0
    move-object v4, v1

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/ek$a;->ie:Lcom/google/android/gms/internal/ek;

    new-instance v0, Lcom/google/android/gms/internal/ek$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/ek$a;->ie:Lcom/google/android/gms/internal/ek;

    iget-object v2, p0, Lcom/google/android/gms/internal/ek$a;->id:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ek$b;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void

    :cond_1
    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
