.class Lam/sunrise/android/calendar/ui/settings/af;
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
    .line 671
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/af;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/af;-><init>(Lam/sunrise/android/calendar/ui/settings/w;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/af;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/af;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/ag;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/w;)V

    .line 677
    return-void
.end method
