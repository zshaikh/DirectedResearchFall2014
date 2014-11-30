.class Lam/sunrise/android/calendar/ui/firstsync/j;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "FirstSyncActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 199
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;I)V
    .locals 4

    .prologue
    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v1, "am.sunrise.android.calendar.extra.HTTP_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    new-instance v1, Lam/sunrise/android/calendar/ui/firstsync/j;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/firstsync/j;-><init>()V

    const/4 v2, 0x0

    const-string v3, "SyncErrorDialog"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 195
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 223
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/j;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/j;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/j;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->f(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V

    .line 226
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 203
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.HTTP_CODE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    const v1, 0x7f0f00ab

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/firstsync/j;->b(I)V

    .line 208
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/j;->c()V

    .line 210
    if-gtz v0, :cond_0

    .line 211
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/j;->g(I)V

    .line 216
    :goto_0
    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/j;->e(I)V

    .line 217
    return-void

    .line 213
    :cond_0
    const v1, 0x7f0f00a5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/firstsync/j;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/j;->d(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
