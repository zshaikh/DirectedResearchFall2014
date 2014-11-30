.class Lmobi/mgeek/TunnyBrowser/aj;
.super Landroid/os/Handler;
.source "BrowserActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 3011
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const v5, 0x7f080426

    const/4 v2, 0x0

    .line 3017
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3099
    :cond_0
    :goto_0
    return-void

    .line 3019
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3020
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lcom/dolphin/browser/core/t;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3021
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-string v4, "link_context_menu"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;JLjava/lang/String;)Z

    goto :goto_0

    .line 3027
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3029
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 3033
    const-string v3, "webview"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 3035
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 3038
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3039
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080425

    if-ne v3, v4, :cond_1

    .line 3040
    const-string v0, "home"

    const-string v2, "longpressurl"

    const-string v3, "openinbackground"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    .line 3045
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->I()V

    goto :goto_0

    .line 3046
    :cond_1
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08042b

    if-ne v3, v4, :cond_2

    .line 3047
    const-string v2, "home"

    const-string v3, "longpressurl"

    const-string v4, "viewimage"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3051
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080424

    if-ne v3, v0, :cond_3

    .line 3052
    const-string v0, "home"

    const-string v2, "longpressurl"

    const-string v3, "openinnewtab"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3064
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08040c

    if-ne v3, v0, :cond_4

    .line 3065
    const-string v0, "home"

    const-string v2, "longpressurl"

    const-string v3, "sharelink"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3069
    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080427

    if-ne v3, v0, :cond_5

    .line 3070
    const-string v0, "home"

    const-string v2, "longpressurl"

    const-string v3, "copylinkurl"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->copy(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3074
    :cond_5
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-eq v3, v5, :cond_6

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08042a

    if-ne v3, v0, :cond_0

    .line 3076
    :cond_6
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-ne v3, v5, :cond_7

    const-string v0, "savelink"

    .line 3078
    :goto_1
    const-string v3, "home"

    const-string v4, "longpressurl"

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v0

    const-wide/16 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 3076
    :cond_7
    const-string v0, "saveimage"

    goto :goto_1

    .line 3087
    :sswitch_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3092
    :sswitch_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->stopLoading()V

    goto/16 :goto_0

    .line 3096
    :sswitch_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aj;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->s(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    goto/16 :goto_0

    .line 3017
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6e -> :sswitch_4
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x4d2 -> :sswitch_0
    .end sparse-switch
.end method
