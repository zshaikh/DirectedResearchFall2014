.class public Lcom/sgn/mobile/InstallTracker;
.super Landroid/content/BroadcastReceiver;
.source "InstallTracker.java"


# static fields
.field private static SP:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getReferrer()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "unknown"

    .line 74
    :try_start_0
    const-string v1, "unknown"

    .line 75
    .local v1, "referrer":Ljava/lang/String;
    sget-object v2, Lcom/sgn/mobile/InstallTracker;->SP:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lcom/sgn/mobile/InstallTracker;->SP:Landroid/content/SharedPreferences;

    const-string v3, "referrer"

    const-string v4, "unknown"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 83
    .end local v1    # "referrer":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "unknown"

    move-object v2, v5

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const-string v10, "referrer"

    .line 21
    const-string v9, "sgn_referrer"

    invoke-virtual {p1, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    sput-object v9, Lcom/sgn/mobile/InstallTracker;->SP:Landroid/content/SharedPreferences;

    .line 22
    const-string v9, "referrer"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 23
    .local v8, "referrer":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 25
    sget-object v9, Lcom/sgn/mobile/InstallTracker;->SP:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "referrer"

    invoke-interface {v0, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    const-string v1, ""

    .line 31
    .local v1, "fwdClassString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 32
    .local v7, "localObject":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 67
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "fwdClassString":Ljava/lang/String;
    .end local v7    # "localObject":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/sgn/mobile/InstallTracker;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "fwdClassString":Ljava/lang/String;
    .restart local v7    # "localObject":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/sgn/mobile/InstallTracker;
    :cond_1
    new-instance v3, Landroid/content/ComponentName;

    const-class v9, Lcom/sgn/mobile/InstallTracker;

    invoke-direct {v3, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v3, "localComponentName":Landroid/content/ComponentName;
    check-cast v7, Landroid/content/pm/PackageManager;

    .end local v7    # "localObject":Landroid/content/pm/PackageManager;
    const/16 v9, 0x80

    invoke-virtual {v7, v3, v9}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 38
    .local v2, "localActivityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    .line 40
    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 41
    .local v7, "localObject":Ljava/util/Set;
    if-eqz v7, :cond_0

    .line 43
    check-cast v7, Ljava/util/Set;

    .end local v7    # "localObject":Ljava/util/Set;
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 44
    .end local p0    # "this":Lcom/sgn/mobile/InstallTracker;
    .local v6, "localIterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .local v7, "localObject":Ljava/lang/String;
    :try_start_1
    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    check-cast v7, Ljava/lang/String;

    .end local v7    # "localObject":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully forwarded install notification to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 55
    .local v4, "localException1":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not forward Market\'s INSTALL_REFERRER intent to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 61
    .end local v2    # "localActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "localComponentName":Landroid/content/ComponentName;
    .end local v4    # "localException1":Ljava/lang/Exception;
    .end local v6    # "localIterator":Ljava/util/Iterator;
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 63
    .local v5, "localException2":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled exception while forwarding install intents.  Possibly lost some install information."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
