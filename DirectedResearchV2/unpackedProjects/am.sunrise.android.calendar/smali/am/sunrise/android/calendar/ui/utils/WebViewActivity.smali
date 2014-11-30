.class public Lam/sunrise/android/calendar/ui/utils/WebViewActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "WebViewActivity.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/utils/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/utils/h;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/utils/f;->a(Lam/sunrise/android/calendar/ui/utils/h;)V

    .line 93
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/utils/f;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/utils/f;->b()V

    .line 89
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/utils/f;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b0065

    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lam/sunrise/android/calendar/ui/a/a;->a(Landroid/view/Window;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 35
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 40
    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    if-lez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.SHOW_UP"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    const-string v1, "am.sunrise.android.calendar.extra.URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v3, "am.sunrise.android.calendar.extra.URL"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    const-string v3, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v1, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    const-string v3, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/f;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/utils/f;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/utils/f;->setArguments(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/utils/f;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->a:Lam/sunrise/android/calendar/ui/utils/f;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;->finish()V

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
