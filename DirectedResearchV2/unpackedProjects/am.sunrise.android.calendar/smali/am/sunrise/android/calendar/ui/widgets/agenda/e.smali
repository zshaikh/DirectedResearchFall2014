.class Lam/sunrise/android/calendar/ui/widgets/agenda/e;
.super Landroid/content/BroadcastReceiver;
.source "AgendaView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/e;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;Lam/sunrise/android/calendar/ui/widgets/agenda/a;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/e;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 301
    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 303
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

    .line 307
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/e;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V

    .line 310
    :cond_1
    return-void
.end method
