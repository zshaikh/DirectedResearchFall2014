.class Lam/sunrise/android/calendar/ui/settings/m;
.super Ljava/lang/Object;
.source "SettingsAccountInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/i;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/m;->a:Lam/sunrise/android/calendar/ui/settings/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/m;->b:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/m;->c:Ljava/lang/String;

    .line 446
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/m;->a:Lam/sunrise/android/calendar/ui/settings/i;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/p;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method
