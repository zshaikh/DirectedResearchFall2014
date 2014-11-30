.class public Lcom/google/android/gms/maps/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private final a:Lcom/google/android/gms/maps/k;

.field private b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/gms/maps/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/k;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/android/gms/maps/a/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->g()V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->a()Lcom/google/android/gms/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->a()Lcom/google/android/gms/d/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/j;->f()Lcom/google/android/gms/maps/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/maps/c;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->a()Lcom/google/android/gms/maps/a/j;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/maps/a/j;->a()Lcom/google/android/gms/maps/a/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->b:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->b:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/maps/a/d;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/a/d;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->b:Lcom/google/android/gms/maps/c;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->b:Lcom/google/android/gms/maps/c;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/k;->a(Lcom/google/android/gms/maps/k;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/k;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->e()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->d()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/k;->a(Lcom/google/android/gms/maps/k;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/maps/k;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->f()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->c()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lcom/google/android/gms/maps/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/k;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
