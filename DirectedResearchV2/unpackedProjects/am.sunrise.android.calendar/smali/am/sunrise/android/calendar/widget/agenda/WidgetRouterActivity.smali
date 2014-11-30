.class public Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;
.super Landroid/app/Activity;
.source "WidgetRouterActivity.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v1, "home"

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "event_details"

    const-class v2, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "event_birthdays"

    const-class v2, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->a:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->finish()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    sget-object v2, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 58
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    :cond_2
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    :cond_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/WidgetRouterActivity;->finish()V

    goto :goto_0
.end method
