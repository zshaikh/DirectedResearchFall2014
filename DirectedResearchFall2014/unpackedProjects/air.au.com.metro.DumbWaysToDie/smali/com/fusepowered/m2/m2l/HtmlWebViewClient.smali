.class Lcom/fusepowered/m2/m2l/HtmlWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HtmlWebViewClient.java"


# static fields
.field static final MOPUB_FAIL_LOAD:Ljava/lang/String; = "mopub://failLoad"

.field static final MOPUB_FINISH_LOAD:Ljava/lang/String; = "mopub://finishLoad"


# instance fields
.field private final mClickthroughUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHtmlWebView:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

.field private mHtmlWebViewListener:Lcom/fusepowered/m2/m2l/HtmlWebViewListener;

.field private final mRedirectUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/HtmlWebViewListener;Lcom/fusepowered/m2/m2l/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "htmlWebViewListener"    # Lcom/fusepowered/m2/m2l/HtmlWebViewListener;
    .param p2, "htmlWebView"    # Lcom/fusepowered/m2/m2l/BaseHtmlWebView;
    .param p3, "clickthrough"    # Ljava/lang/String;
    .param p4, "redirect"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/fusepowered/m2/m2l/HtmlWebViewListener;

    .line 57
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebView:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    .line 58
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mClickthroughUrl:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mRedirectUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p2}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private canHandleApplicationUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/fusepowered/m2/m2l/Utils;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle application specific action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    const-string v3, "You may be running in the emulator or another device which does not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    const-string v3, "have the required application."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private executeIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MoPub"

    if-eqz p3, :cond_0

    move-object v2, p3

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    goto :goto_0

    .line 272
    :cond_0
    const-string v2, "Unable to start intent."

    goto :goto_1
.end method

.method private handleCustomIntentFromUri(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    :try_start_0
    const-string v5, "fnc"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "action":Ljava/lang/String;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    .local v1, "adData":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "customIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const-string v5, "com.mopub.intent.extra.AD_CLICK_DATA"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not handle custom intent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 247
    const-string v6, ". Is your intent spelled correctly?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 246
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "errorMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v2, v4}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 250
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adData":Ljava/lang/String;
    .end local v2    # "customIntent":Landroid/content/Intent;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 238
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not handle custom intent with uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNativeBrowserScheme(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->isNativeBrowserScheme(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v9

    .line 171
    :goto_0
    return v6

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 151
    .local v4, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v6, "url"

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 157
    .local v5, "urlToOpenInNativeBrowser":Ljava/lang/String;
    const-string v6, "navigate"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    :cond_1
    move v6, v9

    .line 158
    goto :goto_0

    .line 152
    .end local v5    # "urlToOpenInNativeBrowser":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 153
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v6, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not handle url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    .line 154
    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v5    # "urlToOpenInNativeBrowser":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 163
    .local v3, "intentUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not handle intent with URI: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 167
    const-string v7, ". Is this intent supported on your phone?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v2, v1}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 171
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private handlePhoneScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->isPhoneScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const/4 v2, 0x0

    .line 135
    :goto_0
    return v2

    .line 127
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle intent with URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    const-string v3, ". Is this intent supported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1, v0}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 135
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleSpecialMoPubScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->isSpecialMoPubScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 101
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "host":Ljava/lang/String;
    const-string v2, "finishLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/fusepowered/m2/m2l/HtmlWebViewListener;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebView:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/m2l/HtmlWebViewListener;->onLoaded(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;)V

    .line 114
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 106
    :cond_2
    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/fusepowered/m2/m2l/HtmlWebViewListener;

    invoke-interface {v2}, Lcom/fusepowered/m2/m2l/HtmlWebViewListener;->onCollapsed()V

    goto :goto_1

    .line 108
    :cond_3
    const-string v2, "failLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/fusepowered/m2/m2l/HtmlWebViewListener;

    sget-object v3, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/m2l/HtmlWebViewListener;->onFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_1

    .line 110
    :cond_4
    const-string v2, "custom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->handleCustomIntentFromUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private isNativeBrowserScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "mopubnativebrowser://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPhoneScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "voicemail:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "sms:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "geo:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "google.streetview:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpecialMoPubScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "mopub://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isWebSiteUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchApplicationUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string v0, "Unable to open intent."

    .line 208
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1, v0}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private showMraidBrowserForUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x10000000

    .line 212
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string p1, "about:blank"

    .line 213
    :cond_1
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Final URI to show in browser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    const-class v4, Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "extra_url"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v0, "Could not handle intent action. . Perhaps you forgot to declare com.mopub.mobileads.MraidBrowser in your Android manifest file."

    .line 222
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2, v0}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    .line 224
    .local v1, "handledByMraidBrowser":Z
    if-nez v1, :cond_2

    .line 225
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    const-string v4, "about:blank"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 229
    :cond_2
    return-void
.end method

.method private urlWithClickTrackingRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mClickthroughUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 198
    :goto_0
    return-object v1

    .line 197
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "encodedUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mClickthroughUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebView:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->wasClicked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 263
    :goto_0
    return v1

    .line 257
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->executeIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 258
    .local v0, "wasIntentStarted":Z
    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/fusepowered/m2/m2l/HtmlWebViewListener;

    invoke-interface {v1}, Lcom/fusepowered/m2/m2l/HtmlWebViewListener;->onClicked()V

    .line 260
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mHtmlWebView:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->onResetUserClick()V

    :cond_1
    move v1, v0

    .line 263
    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->urlWithClickTrackingRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 89
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->showMraidBrowserForUrl(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->handleSpecialMoPubScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->handlePhoneScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->handleNativeBrowserScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 80
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->urlWithClickTrackingRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad clicked. Click URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->isWebSiteUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->canHandleApplicationUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->launchApplicationUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 75
    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;->showMraidBrowserForUrl(Ljava/lang/String;)V

    move v0, v3

    .line 80
    goto :goto_0
.end method
