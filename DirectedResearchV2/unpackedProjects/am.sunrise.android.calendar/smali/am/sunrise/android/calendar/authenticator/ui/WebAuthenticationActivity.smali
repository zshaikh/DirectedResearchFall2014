.class public Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;
.super Lam/sunrise/android/calendar/ui/utils/WebViewActivity;
.source "WebAuthenticationActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/utils/h;
.implements Lam/sunrise/android/calendar/ui/utils/i;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a_(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const-string v1, "http://0.0.0.0/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    const-string v2, "errorDescription"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->a:Landroid/os/Handler;

    new-instance v3, Lam/sunrise/android/calendar/authenticator/ui/q;

    invoke-direct {v3, p0, v2}, Lam/sunrise/android/calendar/authenticator/ui/q;-><init>(Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_0
    return v0

    .line 91
    :cond_0
    const-string v2, "accessToken"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->a:Landroid/os/Handler;

    new-instance v3, Lam/sunrise/android/calendar/authenticator/ui/r;

    invoke-direct {v3, p0, v1}, Lam/sunrise/android/calendar/authenticator/ui/r;-><init>(Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string v1, "User-Info"

    invoke-static {}, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;->create()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->b()V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, p0}, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->a(Lam/sunrise/android/calendar/ui/utils/h;)V

    .line 49
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 65
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->finish()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
