.class public Lam/sunrise/android/calendar/ui/settings/SettingsWebView;
.super Lam/sunrise/android/calendar/ui/utils/WebViewActivity;
.source "SettingsWebView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->b()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    if-eqz p1, :cond_1

    .line 31
    const-string v0, "saved_title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 35
    if-lez v0, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->setTitle(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 64
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->finish()V

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "saved_title"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
