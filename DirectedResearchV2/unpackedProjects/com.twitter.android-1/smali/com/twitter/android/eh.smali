.class final Lcom/twitter/android/eh;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field private b:Ljava/lang/Class;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/eh;->c:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/twitter/android/eh;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/twitter/android/eh;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/eh;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/eh;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/eh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/eh;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/eh;->c:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/twitter/android/eh;->d:Ljava/lang/ref/WeakReference;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/eh;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method
