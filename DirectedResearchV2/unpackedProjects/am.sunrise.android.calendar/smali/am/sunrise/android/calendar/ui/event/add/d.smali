.class Lam/sunrise/android/calendar/ui/event/add/d;
.super Landroid/content/BroadcastReceiver;
.source "AddEventFragment.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/d;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p1}, Lam/sunrise/android/calendar/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/d;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/d;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method
