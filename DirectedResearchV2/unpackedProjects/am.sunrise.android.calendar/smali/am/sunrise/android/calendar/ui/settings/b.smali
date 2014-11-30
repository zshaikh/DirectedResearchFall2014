.class public Lam/sunrise/android/calendar/ui/settings/b;
.super Lam/sunrise/android/calendar/ui/utils/a/a;
.source "BasePreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/content/Context;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lam/sunrise/android/calendar/ui/a/a;->a(Landroid/view/Window;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 35
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/a/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->finish()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/a/a;->onPostCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b;->finish()V

    .line 47
    :cond_0
    return-void
.end method
