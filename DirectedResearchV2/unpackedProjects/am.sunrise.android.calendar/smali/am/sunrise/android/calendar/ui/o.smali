.class Lam/sunrise/android/calendar/ui/o;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/HomeActivity;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/o;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;Lam/sunrise/android/calendar/ui/j;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/o;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 462
    if-eqz p2, :cond_1

    .line 463
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 464
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

    .line 468
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/o;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->d(Lam/sunrise/android/calendar/ui/HomeActivity;)V

    .line 471
    :cond_1
    return-void
.end method
