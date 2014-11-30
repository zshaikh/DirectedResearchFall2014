.class Lam/sunrise/android/calendar/ui/settings/o;
.super Ljava/lang/Object;
.source "SettingsAccountInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/i;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/i;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/o;->a:Lam/sunrise/android/calendar/ui/settings/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/i;Lam/sunrise/android/calendar/ui/settings/j;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/o;-><init>(Lam/sunrise/android/calendar/ui/settings/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/o;->a:Lam/sunrise/android/calendar/ui/settings/i;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 459
    return-void
.end method
