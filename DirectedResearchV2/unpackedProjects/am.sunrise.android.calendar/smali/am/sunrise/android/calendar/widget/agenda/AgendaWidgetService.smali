.class public Lam/sunrise/android/calendar/widget/agenda/AgendaWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "AgendaWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/AgendaWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
