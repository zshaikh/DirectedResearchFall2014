.class Lam/sunrise/android/calendar/ui/settings/z;
.super Ljava/lang/Object;
.source "SettingsAddAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/w;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/z;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/z;->b:Ljava/lang/String;

    .line 653
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/z;->c:Ljava/lang/String;

    .line 654
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/z;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/w;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/z;->b:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/z;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/aa;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method
