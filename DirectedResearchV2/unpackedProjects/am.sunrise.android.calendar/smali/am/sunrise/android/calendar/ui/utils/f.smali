.class public Lam/sunrise/android/calendar/ui/utils/f;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "WebViewFragment.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/utils/i;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Landroid/webkit/WebView;

.field private f:Lcom/actionbarsherlock/view/MenuItem;

.field private g:Landroid/webkit/WebViewClient;

.field private h:Lam/sunrise/android/calendar/ui/utils/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 58
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/utils/g;-><init>(Lam/sunrise/android/calendar/ui/utils/f;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->g:Landroid/webkit/WebViewClient;

    .line 90
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/utils/f;)Lam/sunrise/android/calendar/ui/utils/h;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->h:Lam/sunrise/android/calendar/ui/utils/h;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/utils/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/utils/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/utils/f;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/utils/f;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->d:Z

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->c:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 223
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 224
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 226
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 227
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 230
    :cond_0
    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/utils/f;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/f;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 236
    :cond_0
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/utils/f;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/f;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/utils/h;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/utils/f;->h:Lam/sunrise/android/calendar/ui/utils/h;

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->a:Lam/sunrise/android/calendar/ui/utils/i;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->a:Lam/sunrise/android/calendar/ui/utils/i;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/utils/i;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 205
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 206
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 210
    :goto_1
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 218
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 184
    instance-of v0, p1, Lam/sunrise/android/calendar/ui/utils/i;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Lam/sunrise/android/calendar/ui/utils/i;

    iput-object p1, p0, Lam/sunrise/android/calendar/ui/utils/f;->a:Lam/sunrise/android/calendar/ui/utils/i;

    .line 187
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/utils/f;->setHasOptionsMenu(Z)V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    const-string v0, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->c:Z

    .line 105
    const-string v0, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->d:Z

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    .line 113
    :goto_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->c:Z

    .line 115
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->d:Z

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f0b0176

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    .line 159
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->f:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f03001f

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 166
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 130
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/f;->c()V

    .line 136
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 137
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->a:Lam/sunrise/android/calendar/ui/utils/i;

    .line 192
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 193
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 173
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v0, "saved_cache_paranoid"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/utils/f;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-string v0, "saved_allow_mailto"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/utils/f;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 142
    const v0, 0x7f0b0059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 147
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/utils/f;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/f;->c()V

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/f;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/utils/f;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method
