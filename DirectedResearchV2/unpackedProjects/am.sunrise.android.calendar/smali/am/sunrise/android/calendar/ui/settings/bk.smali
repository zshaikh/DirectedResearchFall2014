.class Lam/sunrise/android/calendar/ui/settings/bk;
.super Ljava/lang/Object;
.source "SettingsVisibleCalendarsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/bj;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/bj;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/bk;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bk;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Lam/sunrise/android/calendar/ui/settings/bj;Z)V

    .line 68
    return-void
.end method
