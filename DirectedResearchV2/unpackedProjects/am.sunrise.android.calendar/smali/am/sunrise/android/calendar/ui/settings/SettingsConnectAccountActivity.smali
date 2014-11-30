.class public Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;
.super Lam/sunrise/android/calendar/ui/utils/WebViewActivity;
.source "SettingsConnectAccountActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/a/c;
.implements Lam/sunrise/android/calendar/ui/utils/h;
.implements Lam/sunrise/android/calendar/ui/utils/i;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/a/b;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;-><init>()V

    .line 55
    new-instance v0, Lam/sunrise/android/calendar/ui/a/b;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/a/b;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->a:Lam/sunrise/android/calendar/ui/a/b;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v0, "https://api.sunrise.am/v2/connections/ACCOUNT_TYPE/authorize?redirectURI=http://0.0.0.0"

    const-string v1, "ACCOUNT_TYPE"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->f:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->d(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public a_(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "http://0.0.0.0/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->b:Landroid/os/Handler;

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/al;

    invoke-direct {v2, p0, v0}, Lam/sunrise/android/calendar/ui/settings/al;-><init>(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :goto_0
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->b:Landroid/os/Handler;

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/am;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/am;-><init>(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v1, "User-Info"

    invoke-static {}, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;->create()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string v1, "Authorization"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->f:Ljava/lang/String;

    invoke-static {v2}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->f:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->b()V

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.CONNECT_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->d:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->e:Ljava/lang/String;

    .line 82
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, p0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->a(Lam/sunrise/android/calendar/ui/utils/h;)V

    .line 85
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->a:Lam/sunrise/android/calendar/ui/a/b;

    invoke-virtual {v0, p0, p0}, Lam/sunrise/android/calendar/ui/a/b;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/a/c;)V

    .line 88
    return-void

    .line 78
    :cond_0
    const-string v0, "saved_connect_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c:Ljava/lang/String;

    .line 79
    const-string v0, "saved_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->d:Ljava/lang/String;

    .line 80
    const-string v0, "saved_account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onDestroy()V

    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->a:Lam/sunrise/android/calendar/ui/a/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a/b;->b()V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 115
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->finish()V

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "saved_connect_url"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "saved_account_name"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "saved_account_type"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
