.class Lam/sunrise/android/calendar/provider/d;
.super Ljava/lang/Thread;
.source "Content.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/provider/Content;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/provider/Content;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/d;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/provider/Content;Lam/sunrise/android/calendar/provider/a;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/d;-><init>(Lam/sunrise/android/calendar/provider/Content;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/d;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/Content;->b(Lam/sunrise/android/calendar/provider/Content;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/d;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/reminders/RemindersService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/d;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/Content;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method
