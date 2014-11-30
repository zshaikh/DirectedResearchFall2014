.class Ldolphin/webkit/iy;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2007
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 2007
    invoke-direct {p0}, Ldolphin/webkit/iy;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2010
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2011
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2012
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2013
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2018
    :cond_1
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->ak()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2019
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2020
    const/16 v2, 0xb9

    invoke-static {v2, v1}, Ldolphin/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 2026
    :cond_2
    :goto_1
    invoke-static {p1}, Ldolphin/webkit/fu;->a(Landroid/content/Context;)Ldolphin/webkit/fu;

    move-result-object v2

    .line 2027
    invoke-virtual {v2, v1}, Ldolphin/webkit/fu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ldolphin/webkit/fu;->a(Z)V

    goto :goto_0

    .line 2022
    :cond_3
    const/16 v2, 0xba

    invoke-static {v2, v1}, Ldolphin/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_1
.end method
