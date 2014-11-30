.class public Lcom/stuv/ane/facebook/FacebookWrapper;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"


# static fields
.field private static _appId:Ljava/lang/String;

.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;

.field private static _graphLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p0}, Lcom/stuv/ane/facebook/FacebookWrapper;->jsonBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static authorise(Ljava/lang/String;)V
    .locals 6
    .param p0, "readPermissions"    # Ljava/lang/String;

    .prologue
    const-class v5, Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    .line 64
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 66
    .local v1, "session":Lcom/facebook/Session;
    const-string v2, "Fb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Authorise: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v2, v3, :cond_1

    .line 76
    :cond_0
    invoke-static {}, Lcom/stuv/ane/facebook/FacebookWrapper;->buildSession()V

    .line 80
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    const-class v3, Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "readPermissions"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    const-class v3, Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method

.method public static buildSession()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->close()V

    .line 104
    :cond_0
    new-instance v0, Lcom/facebook/Session$Builder;

    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "builder":Lcom/facebook/Session$Builder;
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    .line 107
    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 108
    return-void
.end method

.method private static bundleJSON(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 370
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    return-object v0

    .line 375
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 376
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearSession()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Fb"

    const-string v1, "clearSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 96
    :cond_0
    return-void
.end method

.method public static dialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const-string v8, "dialog"

    const-string v7, " : "

    const-string v6, "Fb"

    .line 146
    const-string v4, "Fb"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dialog "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    const-string v4, "dialog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Session not open: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v4, "Fb"

    const-string v4, "dialogB"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    .line 158
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-static {p1}, Lcom/stuv/ane/facebook/FacebookWrapper;->bundleJSON(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    const-string v4, "Fb"

    const-string v4, "dialogC"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    sget-object v4, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v5

    invoke-direct {v0, v4, v5, p0, v1}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 169
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v4, Lcom/stuv/ane/facebook/FacebookWrapper$1;

    invoke-direct {v4}, Lcom/stuv/ane/facebook/FacebookWrapper$1;-><init>()V

    invoke-virtual {v0, v4}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 194
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v2

    .line 196
    .local v2, "dialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v2}, Lcom/facebook/widget/WebDialog;->show()V

    .line 198
    const-string v4, "Fb"

    const-string v4, "dialogD"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0    # "builder":Lcom/facebook/widget/WebDialog$Builder;
    .end local v2    # "dialog":Lcom/facebook/widget/WebDialog;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "dialog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid request json: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "debugInfo"    # Ljava/lang/String;

    .prologue
    const-string v4, ":\n"

    .line 338
    const-string v1, "Fb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "assert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 344
    .local v0, "eventData":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v1, "debug"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v2, "assert"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dispatchCancel(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "errorData"    # Lcom/stuv/ane/facebook/ErrorData;

    .prologue
    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v0, "eventData":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v1, "data"

    invoke-virtual {p1}, Lcom/stuv/ane/facebook/ErrorData;->getJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v2, "cancel"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    const-string v1, "Fb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 260
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dispatchError(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "errorData"    # Lcom/stuv/ane/facebook/ErrorData;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchError(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;Lcom/facebook/Request;)V

    .line 305
    return-void
.end method

.method public static dispatchError(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;Lcom/facebook/Request;)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "errorData"    # Lcom/stuv/ane/facebook/ErrorData;
    .param p2, "request"    # Lcom/facebook/Request;

    .prologue
    const-string v5, ":\n"

    .line 310
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 312
    .local v0, "eventData":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/stuv/ane/facebook/ErrorData;->setSessionInfo(Lcom/facebook/Session;)Lcom/stuv/ane/facebook/ErrorData;

    .line 316
    :try_start_0
    const-string v2, "action"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    if-eqz p2, :cond_0

    .line 319
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_graphLookup:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 320
    .local v1, "requestId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 321
    const-string v2, "requestId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    .end local v1    # "requestId":Ljava/lang/Integer;
    :cond_0
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/stuv/ane/facebook/ErrorData;->getJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v2, :cond_1

    .line 330
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v3, "error"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    const-string v2, "Fb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 324
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static dispatchSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "successData"    # Lorg/json/JSONObject;

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchSuccess(Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/Request;)V

    .line 274
    return-void
.end method

.method public static dispatchSuccess(Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/Request;)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "successData"    # Lorg/json/JSONObject;
    .param p2, "request"    # Lcom/facebook/Request;

    .prologue
    const-string v5, ":\n"

    .line 279
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v0, "eventData":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    if-eqz p2, :cond_0

    .line 286
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_graphLookup:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 287
    .local v1, "requestId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 288
    const-string v2, "requestId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    .end local v1    # "requestId":Ljava/lang/Integer;
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v2, :cond_1

    .line 297
    sget-object v2, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v3, "success"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    const-string v2, "Fb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "success "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 291
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static externalActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 364
    return-void
.end method

.method public static externalSessionResult(Ljava/lang/Exception;)V
    .locals 4
    .param p0, "exception"    # Ljava/lang/Exception;

    .prologue
    const-string v3, "login"

    .line 112
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 114
    .local v0, "session":Lcom/facebook/Session;
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "login"

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    const-string v1, "login"

    new-instance v1, Lcom/stuv/ane/facebook/ErrorData;

    invoke-direct {v1}, Lcom/stuv/ane/facebook/ErrorData;-><init>()V

    invoke-virtual {v1, p0}, Lcom/stuv/ane/facebook/ErrorData;->addException(Ljava/lang/Exception;)Lcom/stuv/ane/facebook/ErrorData;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchCancel(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V

    goto :goto_0

    .line 124
    :cond_2
    if-eqz p0, :cond_0

    .line 126
    const-string v1, "login"

    new-instance v1, Lcom/stuv/ane/facebook/ErrorData;

    invoke-direct {v1}, Lcom/stuv/ane/facebook/ErrorData;-><init>()V

    invoke-virtual {v1, p0}, Lcom/stuv/ane/facebook/ErrorData;->addException(Ljava/lang/Exception;)Lcom/stuv/ane/facebook/ErrorData;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchError(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V

    goto :goto_0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 140
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    move-object v0, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;)I
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 399
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-nez v1, :cond_1

    .line 401
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 405
    const-string v1, "hi"

    aput-object v1, v0, v3

    .line 408
    :cond_0
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    sget-object v4, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 411
    .end local v0    # "parts":[Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v1, p0}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getResourceIds(Ljava/lang/String;)[I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 416
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 417
    .local v0, "res":[I
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-nez v1, :cond_0

    .line 419
    aput v2, v0, v2

    .line 422
    :cond_0
    sget-object v1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v1, p0}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 423
    return-object v0
.end method

.method public static graph(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .param p0, "graphPath"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "usePost"    # Z
    .param p3, "requestId"    # I

    .prologue
    const-string v7, "Fb"

    const-string v6, "graph"

    const-string v5, " : "

    .line 204
    const-string v3, "Fb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "graph"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    const-string v3, "graph"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session not open: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-static {p1}, Lcom/stuv/ane/facebook/FacebookWrapper;->bundleJSON(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    new-instance v2, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    if-eqz p2, :cond_1

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    :goto_1
    invoke-direct {v2, v3, p0, v0, v4}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 223
    .local v2, "request":Lcom/facebook/Request;
    new-instance v3, Lcom/stuv/ane/facebook/FacebookWrapper$2;

    invoke-direct {v3}, Lcom/stuv/ane/facebook/FacebookWrapper$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 244
    sget-object v3, Lcom/stuv/ane/facebook/FacebookWrapper;->_graphLookup:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v3, "Fb"

    const-string v3, "graph execute"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v2}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0

    .line 216
    .end local v2    # "request":Lcom/facebook/Request;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "graph"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request json: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_1
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 45
    sput-object p1, Lcom/stuv/ane/facebook/FacebookWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 47
    sput-object p0, Lcom/stuv/ane/facebook/FacebookWrapper;->_baseActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public static initialise(Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 53
    sput-object p0, Lcom/stuv/ane/facebook/FacebookWrapper;->_appId:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/stuv/ane/facebook/FacebookWrapper;->_graphLookup:Ljava/util/Map;

    .line 58
    invoke-static {}, Lcom/stuv/ane/facebook/FacebookWrapper;->buildSession()V

    .line 59
    return-void
.end method

.method private static jsonBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 386
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 387
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 393
    return-object v0

    .line 387
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 390
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method
