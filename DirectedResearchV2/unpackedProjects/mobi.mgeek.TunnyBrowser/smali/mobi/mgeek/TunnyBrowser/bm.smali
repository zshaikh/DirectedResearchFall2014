.class Lmobi/mgeek/TunnyBrowser/bm;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/core/ad;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkInfo;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1123
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1125
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1127
    if-nez v2, :cond_0

    move v0, v1

    .line 1129
    :goto_0
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/bm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/t/l;->a(Z)V

    .line 1130
    if-nez v2, :cond_1

    .line 1141
    :goto_1
    return-void

    .line 1127
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 1134
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 1135
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/bm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v5, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Ljava/lang/String;)V

    .line 1140
    const-string v0, "BrowserActivity"

    const-string v3, "onNetworkChanged %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1135
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method
