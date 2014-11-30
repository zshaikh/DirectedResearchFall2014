.class Lam/sunrise/android/calendar/provider/a;
.super Landroid/content/BroadcastReceiver;
.source "Content.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/provider/Content;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/provider/Content;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/a;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lam/sunrise/android/calendar/provider/d;

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/a;->a:Lam/sunrise/android/calendar/provider/Content;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/provider/d;-><init>(Lam/sunrise/android/calendar/provider/Content;Lam/sunrise/android/calendar/provider/a;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    :cond_0
    return-void
.end method
