.class Lam/sunrise/android/calendar/ui/settings/a/f;
.super Ljava/lang/Object;
.source "SettingsDefaultCalendarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/a/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lam/sunrise/android/calendar/ui/settings/a/e;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/a/e;Lam/sunrise/android/calendar/ui/settings/a/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->d:Lam/sunrise/android/calendar/ui/settings/a/e;

    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->a:Lam/sunrise/android/calendar/ui/settings/a/h;

    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->a:Lam/sunrise/android/calendar/ui/settings/a/h;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/a/f;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method
