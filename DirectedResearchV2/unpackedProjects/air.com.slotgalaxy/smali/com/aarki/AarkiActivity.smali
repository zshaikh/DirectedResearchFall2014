.class public Lcom/aarki/AarkiActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aarki/AarkiActivity$HydraJsInterface;,
        Lcom/aarki/AarkiActivity$PlacementRequest;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aarki/AarkiActivity;->b:Z

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/aarki/AarkiActivity;Z)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aarki/AarkiActivity;->b:Z

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/aarki/AarkiActivity;->c:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/aarki/AarkiActivity;->a()V

    .line 251
    return-void
.end method

.method public static intentForPlacement(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aarki/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/aarki/AarkiActivity$PlacementRequest;

    invoke-direct {v0}, Lcom/aarki/AarkiActivity$PlacementRequest;-><init>()V

    .line 258
    iput-object p1, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->a:Ljava/lang/String;

    .line 259
    iput-object p4, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->b:Ljava/util/Map;

    .line 260
    iput-object p2, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->c:Ljava/lang/Boolean;

    .line 261
    iput-object p3, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->d:Ljava/lang/String;

    .line 263
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aarki/AarkiActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    const-string v2, "com.aarkiAarkiActivity.EXTRA_AARKI_PLACEMENT_REQUEST"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    return-object v1
.end method

.method public static launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/aarki/AarkiActivity;->launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    return-void
.end method

.method public static launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0, p1, p2, p3, p4}, Lcom/aarki/AarkiActivity;->intentForPlacement(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public static launch(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/aarki/AarkiActivity;->launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/aarki/AarkiActivity;->b:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->c:Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check external or internal url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    invoke-virtual {p0, v0}, Lcom/aarki/AarkiActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    const-string v0, "IU"

    const-string v1, "The service is currently not available. Please try again later."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Service Error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x3

    const-string v2, "Exit"

    new-instance v3, Lcom/aarki/AarkiActivity$2;

    invoke-direct {v3, p0}, Lcom/aarki/AarkiActivity$2;-><init>(Lcom/aarki/AarkiActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const-string v3, "ext-"

    .line 56
    if-eqz p1, :cond_3

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ext-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    const-string v2, "ext-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening externally: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v1}, Lcom/aarki/AarkiActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    const/4 v0, 0x1

    .line 77
    :goto_1
    return v0

    .line 67
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "generic"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " This is a normal behavior for Android Emulator environment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_2
    const-string v1, "Link Error"

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x3

    const-string v1, "OK"

    new-instance v3, Lcom/aarki/AarkiActivity$3;

    invoke-direct {v3, p0}, Lcom/aarki/AarkiActivity$3;-><init>(Lcom/aarki/AarkiActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aarki/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    .line 93
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 94
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/aarki/AarkiActivity$1;

    invoke-direct {v1, p0}, Lcom/aarki/AarkiActivity$1;-><init>(Lcom/aarki/AarkiActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/aarki/AarkiActivity$HydraJsInterface;

    invoke-direct {v1, p0}, Lcom/aarki/AarkiActivity$HydraJsInterface;-><init>(Lcom/aarki/AarkiActivity;)V

    const-string v2, "hydra"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 129
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 130
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 133
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/aarki/AarkiActivity;->setContentView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/aarki/AarkiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    const-string v1, "com.aarkiAarkiActivity.EXTRA_AARKI_PLACEMENT_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/aarki/AarkiActivity$PlacementRequest;

    .line 137
    iget-object v1, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "src"

    iget-object v4, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "xbtn"

    const-string v4, "y"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "platform"

    const-string v4, "android"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitials are available. RUN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    iget-object v0, v0, Lcom/aarki/AarkiActivity$PlacementRequest;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aarki/AarkiActivity;->b(Ljava/lang/String;)V

    .line 159
    :goto_1
    return-void

    .line 156
    :cond_1
    invoke-static {v3}, Lcom/aarki/a;->a(Ljava/util/List;)V

    .line 157
    const-string v0, "http://hs.aarki.net/adpick/garden"

    invoke-static {v0, v3}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aarki/AarkiActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aarki/AarkiActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 176
    :goto_0
    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/aarki/AarkiActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v2

    .line 188
    :goto_1
    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/aarki/AarkiActivity;->finish()V

    .line 184
    sget-object v0, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    invoke-static {v0}, Lcom/aarki/Aarki;->a(Lcom/aarki/Aarki$Status;)V

    .line 188
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 165
    return-void
.end method
