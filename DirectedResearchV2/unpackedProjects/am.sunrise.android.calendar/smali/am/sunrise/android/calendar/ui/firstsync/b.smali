.class Lam/sunrise/android/calendar/ui/firstsync/b;
.super Ljava/lang/Object;
.source "FirstRunActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    iput p2, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 199
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 200
    if-nez v0, :cond_1

    .line 201
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->c(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/b;->b:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
