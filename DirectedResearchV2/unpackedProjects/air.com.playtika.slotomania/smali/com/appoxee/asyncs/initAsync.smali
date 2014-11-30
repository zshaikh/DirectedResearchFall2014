.class public Lcom/appoxee/asyncs/initAsync;
.super Landroid/os/AsyncTask;
.source "initAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mInboxEnabled:Z

.field mSetAppDefaultActivityClass:Ljava/lang/String;

.field mSetAppSDKKey:Ljava/lang/String;

.field mSetAppSecretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "setAppSDKKey"    # Ljava/lang/String;
    .param p2, "setAppSecretKey"    # Ljava/lang/String;
    .param p3, "setAppDefaultActivityClass"    # Ljava/lang/String;
    .param p4, "inboxEnabled"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSDKKey:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSecretKey:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppDefaultActivityClass:Ljava/lang/String;

    .line 25
    iput-boolean p4, p0, Lcom/appoxee/asyncs/initAsync;->mInboxEnabled:Z

    .line 28
    sget-object v2, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    const-string v3, "appoxee_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mSetAppSDKKey"

    iget-object v3, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSDKKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    const-string v2, "mSetAppSecretKey"

    iget-object v3, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSecretKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    const-string v2, "mSetAppDefaultActivityClass"

    iget-object v3, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppDefaultActivityClass:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    const-string v2, "mInboxEnabled"

    iget-boolean v3, p0, Lcom/appoxee/asyncs/initAsync;->mInboxEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    const-string v2, "isAirVersion"

    sget-boolean v3, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/asyncs/initAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSDKKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSecretKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppDefaultActivityClass:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/appoxee/asyncs/initAsync;->mInboxEnabled:Z

    new-instance v4, Lcom/appoxee/asyncs/initAsync$1;

    invoke-direct {v4, p0}, Lcom/appoxee/asyncs/initAsync$1;-><init>(Lcom/appoxee/asyncs/initAsync;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appoxee/Appoxee;->Setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/appoxee/Configuration;)V

    .line 47
    const-string v0, "Setup Params:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSetAppSDKKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSDKKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSetAppSecretKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppSecretKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string v2, "mSetAppDefaultActivityClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appoxee/asyncs/initAsync;->mSetAppDefaultActivityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInboxEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/appoxee/asyncs/initAsync;->mInboxEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/asyncs/initAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 54
    new-instance v0, Lcom/appoxee/asyncs/Setup;

    invoke-direct {v0}, Lcom/appoxee/asyncs/Setup;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appoxee/asyncs/Setup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method
