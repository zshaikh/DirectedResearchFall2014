.class public Lcom/twitter/android/platform/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/twitter/android/platform/k;

    invoke-direct {v0, p1}, Lcom/twitter/android/platform/k;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/platform/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
