.class public Lcom/twitter/android/client/WidgetSmallProvider;
.super Landroid/appwidget/AppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "on_delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "widget_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "widget_provider"

    const v2, 0x7f050004

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/twitter/android/client/e;->b(Landroid/content/Context;)V

    const-string v1, "on_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string v1, "clear_logged_out"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
