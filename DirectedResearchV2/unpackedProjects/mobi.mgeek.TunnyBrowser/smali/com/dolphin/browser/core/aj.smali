.class Lcom/dolphin/browser/core/aj;
.super Landroid/content/BroadcastReceiver;
.source "PluginInstallMonitor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ah;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/ah;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/core/aj;->a:Lcom/dolphin/browser/core/ah;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 132
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/ah;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/dolphin/browser/core/aj;->a:Lcom/dolphin/browser/core/ah;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/dolphin/browser/core/ah;->a(Lcom/dolphin/browser/core/ah;Ljava/lang/String;Z)V

    .line 142
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 145
    const/16 v5, 0x1000

    :try_start_0
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 149
    if-eqz v2, :cond_0

    .line 150
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 151
    if-eqz v4, :cond_0

    .line 155
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 156
    const-string v7, "android.webkit.permission.PLUGIN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    :goto_2
    if-eqz v0, :cond_0

    .line 163
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/core/ah;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/core/aj;->a:Lcom/dolphin/browser/core/ah;

    invoke-static {v1}, Lcom/dolphin/browser/core/ah;->a(Lcom/dolphin/browser/core/ah;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method
