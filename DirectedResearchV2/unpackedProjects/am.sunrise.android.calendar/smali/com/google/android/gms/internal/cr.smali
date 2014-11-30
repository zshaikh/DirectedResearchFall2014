.class public Lcom/google/android/gms/internal/cr;
.super Lcom/google/android/gms/internal/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/af",
        "<",
        "Lcom/google/android/gms/internal/cm;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/internal/cv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cv",
            "<",
            "Lcom/google/android/gms/internal/cm;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/cp;

.field private final f:Lcom/google/android/gms/internal/dk;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/af;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ct;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/cs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->d:Lcom/google/android/gms/internal/cv;

    new-instance v0, Lcom/google/android/gms/internal/cp;

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->d:Lcom/google/android/gms/internal/cv;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->e:Lcom/google/android/gms/internal/cp;

    iput-object p4, p0, Lcom/google/android/gms/internal/cr;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/cr;->h:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/dk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cr;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cr;->d:Lcom/google/android/gms/internal/cv;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/dk;-><init>(Landroid/content/Context;Ljava/util/Locale;Lcom/google/android/gms/internal/cv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->f:Lcom/google/android/gms/internal/dk;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cr;->i()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cr;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cr;->j()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cr;->c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cm;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/aj;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/cr;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x41f6b8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cr;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/ay;->e(Lcom/google/android/gms/internal/av;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a_()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->e:Lcom/google/android/gms/internal/cp;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->e:Lcom/google/android/gms/internal/cp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cp;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->e:Lcom/google/android/gms/internal/cp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cp;->c()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/af;->a_()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cm;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/cn;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cm;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public k()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->e:Lcom/google/android/gms/internal/cp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cp;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
