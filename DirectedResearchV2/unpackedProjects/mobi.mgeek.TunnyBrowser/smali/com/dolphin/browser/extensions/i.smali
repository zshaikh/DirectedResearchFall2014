.class Lcom/dolphin/browser/extensions/i;
.super Landroid/content/BroadcastReceiver;
.source "DolphinPackageMonitor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/g;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/extensions/g;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/extensions/i;->a:Lcom/dolphin/browser/extensions/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/extensions/g;Lcom/dolphin/browser/extensions/h;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/i;-><init>(Lcom/dolphin/browser/extensions/g;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1

    .line 138
    const-string v2, "DolphinPackageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/extensions/i;->a:Lcom/dolphin/browser/extensions/g;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/extensions/g;->a(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/i;->a:Lcom/dolphin/browser/extensions/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->l()V

    .line 151
    :cond_1
    return-void

    .line 141
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/extensions/i;->a:Lcom/dolphin/browser/extensions/g;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/extensions/g;->b(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v2, "com.dolphin.browser.action.addon_config_changed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "mobi.mgeek.action.extension_config_changed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/extensions/i;->a:Lcom/dolphin/browser/extensions/g;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/extensions/g;->c(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
