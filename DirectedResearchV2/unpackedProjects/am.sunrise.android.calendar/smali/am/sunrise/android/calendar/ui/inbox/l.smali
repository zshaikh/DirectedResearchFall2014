.class Lam/sunrise/android/calendar/ui/inbox/l;
.super Landroid/content/BroadcastReceiver;
.source "InboxFragment.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/inbox/h;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/inbox/h;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/inbox/l;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/inbox/h;Lam/sunrise/android/calendar/ui/inbox/i;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/inbox/l;-><init>(Lam/sunrise/android/calendar/ui/inbox/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 366
    if-eqz p2, :cond_0

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/l;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/h;->e(Lam/sunrise/android/calendar/ui/inbox/h;)V

    .line 373
    :cond_0
    return-void
.end method
