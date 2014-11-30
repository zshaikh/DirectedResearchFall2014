.class Lam/sunrise/android/calendar/provider/c;
.super Ljava/lang/Thread;
.source "Content.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/provider/Content;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/provider/Content;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/c;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/provider/Content;Lam/sunrise/android/calendar/provider/a;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/c;-><init>(Lam/sunrise/android/calendar/provider/Content;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/c;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/Content;->b(Lam/sunrise/android/calendar/provider/Content;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/c;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/reminders/RemindersService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/c;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/c;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/provider/c;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-static {v2}, Lam/sunrise/android/calendar/provider/Content;->c(Lam/sunrise/android/calendar/provider/Content;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method
