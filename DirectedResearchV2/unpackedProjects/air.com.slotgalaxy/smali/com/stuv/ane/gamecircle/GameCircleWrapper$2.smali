.class Lcom/stuv/ane/gamecircle/GameCircleWrapper$2;
.super Ljava/lang/Object;
.source "GameCircleWrapper.java"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/gamecircle/GameCircleWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAlreadySynchronized()V
    .locals 3

    .prologue
    .line 122
    const-string v0, "GameCircleWrapper"

    const-string v1, "onAlreadySynchronized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    # getter for: Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "oldSyncData"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onConflictDeferral()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "GameCircleWrapper"

    const-string v1, "onConflictDeferral"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onGameUploadSuccess()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "GameCircleWrapper"

    const-string v1, "onGameUploadSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public onNewGameData([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 154
    const-string v1, "GameCircleWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNewGameData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    # getter for: Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_baseActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->access$2()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "whisperSyncData"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    # getter for: Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    # getter for: Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v1

    const-string v2, "newSyncData"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 147
    const-string v0, "GameCircleWrapper"

    const-string v1, "onSynchronizeFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method
