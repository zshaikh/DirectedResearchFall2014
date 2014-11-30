.class Lam/sunrise/android/calendar/ui/settings/ad;
.super Ljava/lang/Object;
.source "SettingsAddAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/w;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ad;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/ad;-><init>(Lam/sunrise/android/calendar/ui/settings/w;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 666
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ad;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/w;->d(Lam/sunrise/android/calendar/ui/settings/w;)V

    .line 667
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ad;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/w;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/ad;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/settings/w;->e(Lam/sunrise/android/calendar/ui/settings/w;)Lam/sunrise/android/calendar/ui/settings/ah;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 668
    return-void
.end method
