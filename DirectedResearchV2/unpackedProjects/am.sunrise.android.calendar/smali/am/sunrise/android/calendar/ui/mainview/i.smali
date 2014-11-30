.class Lam/sunrise/android/calendar/ui/mainview/i;
.super Landroid/content/BroadcastReceiver;
.source "MainViewFragment.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/f;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/mainview/f;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/i;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/mainview/f;Lam/sunrise/android/calendar/ui/mainview/g;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/i;-><init>(Lam/sunrise/android/calendar/ui/mainview/f;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 423
    if-eqz p2, :cond_1

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/i;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/f;->f(Lam/sunrise/android/calendar/ui/mainview/f;)V

    .line 432
    :cond_1
    return-void
.end method
