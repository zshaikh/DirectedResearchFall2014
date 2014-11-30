.class Lcom/google/android/gms/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/a;->a(Lcom/google/android/gms/b/a;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/a;->b(Lcom/google/android/gms/b/a;Landroid/app/Activity;)V

    return-void
.end method
