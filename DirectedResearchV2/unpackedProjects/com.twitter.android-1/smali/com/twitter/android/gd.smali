.class public final Lcom/twitter/android/gd;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lcom/twitter/android/BaseListFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/BaseListFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/BaseListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/BaseListFragment;

    iget-boolean v0, v0, Lcom/twitter/android/BaseListFragment;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->g()Lcom/twitter/android/widget/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v1}, Lcom/twitter/android/BaseListFragment;->d_()V

    iget-object v1, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/BaseListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/widget/r;Z)V

    :cond_0
    return-void
.end method
