.class Lmobi/mgeek/TunnyBrowser/aa;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/util/al;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/util/al;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/aa;->a:Lcom/dolphin/browser/util/al;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/aa;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1330
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->a:Lcom/dolphin/browser/util/al;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dolphin://home"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lcom/dolphin/browser/util/dt;->b(Landroid/content/Context;)V

    .line 1334
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->a:Lcom/dolphin/browser/util/al;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v0

    .line 1335
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v3

    const-string v4, "desktop_shortcut"

    invoke-virtual {v3, v0, v4}, Lcom/dolphin/browser/search/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->a:Lcom/dolphin/browser/util/al;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/util/al;->a(Ljava/lang/String;)V

    .line 1339
    const-string v0, "BrowserActivity"

    const-string v3, "createNewTab"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1342
    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 1346
    :goto_0
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v3

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/aa;->a:Lcom/dolphin/browser/util/al;

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;)Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 1347
    invoke-interface {v3, v0}, Lcom/dolphin/browser/core/ITab;->setCloseOnExit(Z)V

    .line 1348
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1350
    const-string v0, "BrowserActivity"

    const-string v4, "setInitialScale"

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->c:Landroid/os/Bundle;

    const-string v4, "browser.initialZoomLevel"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1354
    if-lez v0, :cond_1

    const/16 v4, 0x3e8

    if-gt v0, v4, :cond_1

    .line 1355
    invoke-interface {v3, v0}, Lcom/dolphin/browser/core/ITab;->setInitialScale(I)V

    .line 1358
    :cond_1
    const-string v0, "com.dolphin.browser.action.CHILD_ACTIVITY"

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    invoke-static {v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/content/Intent;)V

    .line 1361
    :cond_2
    const-string v0, "android.intent.action.SEARCH_LONG_PRESS"

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.ASSIST"

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1363
    :cond_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Z)V

    .line 1365
    :cond_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aa;->b:Landroid/content/Intent;

    const-string v2, "pending_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1367
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Intent;Landroid/content/ContentResolver;)Lcom/dolphin/browser/util/al;

    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Lcom/dolphin/browser/util/al;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1370
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/aa;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    .line 1372
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 1342
    goto/16 :goto_0
.end method
