.class public Lcom/appoxee/Appoxee;
.super Ljava/lang/Object;
.source "Appoxee.java"


# static fields
.field public static freContext:Lcom/adobe/fre/FREContext;

.field private static mClient:Lcom/appoxee/connection/AppoxeeClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Setup(Landroid/content/Context;Lcom/appoxee/Configuration;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/appoxee/Configuration;

    .prologue
    .line 46
    const-string v0, "2e0704cb"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    sput-object p1, Lcom/appoxee/AppoxeeManager;->mConfiguration:Lcom/appoxee/Configuration;

    .line 49
    invoke-static {}, Lcom/appoxee/Appoxee;->setAppVersion()V

    .line 50
    invoke-static {}, Lcom/appoxee/utils/Utils;->setupLogger()V

    .line 52
    return-void
.end method

.method public static Setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/appoxee/Configuration;)V
    .locals 1
    .param p0, "setAppSDKKey"    # Ljava/lang/String;
    .param p1, "SetAppSecretKey"    # Ljava/lang/String;
    .param p2, "SetAppDefaultActivityClass"    # Ljava/lang/String;
    .param p3, "inboxEnabled"    # Z
    .param p4, "configuration"    # Lcom/appoxee/Configuration;

    .prologue
    .line 33
    sput-object p4, Lcom/appoxee/AppoxeeManager;->mConfiguration:Lcom/appoxee/Configuration;

    .line 34
    invoke-static {p0}, Lcom/appoxee/Configuration;->SetAppSDKKey(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/appoxee/Configuration;->SetAppSecretKey(Ljava/lang/String;)V

    .line 36
    invoke-static {p2}, Lcom/appoxee/Configuration;->SetAppDefaultActivityClass(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appoxee/Configuration;->SetAppoxeeInboxEnable(Z)V

    .line 38
    invoke-static {}, Lcom/appoxee/Appoxee;->setAppVersion()V

    .line 39
    invoke-static {}, Lcom/appoxee/utils/Utils;->setupLogger()V

    .line 40
    return-void
.end method

.method public static addTagsToDevice(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "tags"

    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "response":Lorg/json/JSONObject;
    const/4 v4, 0x1

    .line 187
    .local v4, "result":Z
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "tags"

    const/4 v6, 0x0

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "oldValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "oldTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v2}, Lcom/appoxee/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 195
    :cond_0
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    sget-object v5, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v6, "set"

    invoke-virtual {v5, v6, p0}, Lcom/appoxee/connection/AppoxeeClient;->tag(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v3

    .line 197
    sget-object v5, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v5, v3}, Lcom/appoxee/connection/AppoxeeClient;->getBooleanResult(Lorg/json/JSONObject;)Z

    move-result v4

    .line 198
    if-eqz v4, :cond_1

    .line 199
    const-string v5, "tags"

    invoke-static {v7, p0}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 206
    :cond_1
    :goto_1
    return v4

    .line 202
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static cleanAliasCache()Z
    .locals 1

    .prologue
    .line 168
    const-string v0, "alias"

    invoke-static {v0}, Lcom/appoxee/AppoxeeManager;->removeConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanTagCache()Z
    .locals 1

    .prologue
    .line 277
    const-string v0, "tags"

    invoke-static {v0}, Lcom/appoxee/AppoxeeManager;->removeConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static countReadMessages(Z)I
    .locals 9
    .param p0, "value"    # Z

    .prologue
    .line 579
    const/4 v5, 0x0

    .line 580
    .local v5, "result":I
    const/4 v1, 0x0

    .line 584
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 585
    .local v3, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v7, "read"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 586
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v4

    .line 588
    .local v4, "query":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<Lcom/appoxee/inbox/Message;>;"
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appoxee/inbox/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v6

    invoke-interface {v6}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v6

    sget-object v7, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 587
    invoke-interface {v4, v6, v7}, Lcom/j256/ormlite/stmt/PreparedQuery;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    .line 589
    .local v0, "compiledStatement":Lcom/j256/ormlite/android/AndroidCompiledStatement;
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 590
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 598
    if-eqz v1, :cond_0

    .line 599
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 603
    .end local v0    # "compiledStatement":Lcom/j256/ormlite/android/AndroidCompiledStatement;
    .end local v3    # "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    .end local v4    # "query":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<Lcom/appoxee/inbox/Message;>;"
    :cond_0
    :goto_0
    return v5

    .line 591
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 592
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "countReadMessages problem -IllegalArgumentException:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 593
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    if-eqz v1, :cond_0

    .line 599
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 594
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 595
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "countReadMessages problem :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 596
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    if-eqz v1, :cond_0

    .line 599
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 597
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 598
    if-eqz v1, :cond_1

    .line 599
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_1
    throw v6
.end method

.method public static getDeviceAlias()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "response":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 154
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v3, "get"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/appoxee/connection/AppoxeeClient;->alias(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v2, v0}, Lcom/appoxee/connection/AppoxeeClient;->getStringResult(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_0
    return-object v1
.end method

.method public static getDeviceCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "countryCode"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0
.end method

.method public static getDeviceDensity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 465
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "density"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_0
    return-object v0
.end method

.method public static getDeviceLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "locale"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_0
    return-object v0
.end method

.method public static getDeviceOsName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "osName"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    return-object v0
.end method

.method public static getDeviceOsNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "osNumber"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    return-object v0
.end method

.method public static getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "platform"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_0
    return-object v0
.end method

.method public static getDeviceResolution()Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "resolution"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    return-object v0
.end method

.method public static getDeviceSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceTags()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "response":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 240
    .local v1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v3, "get"

    invoke-virtual {v2, v3}, Lcom/appoxee/connection/AppoxeeClient;->tag(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v2, v0}, Lcom/appoxee/connection/AppoxeeClient;->getArrayResult(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    :cond_0
    return-object v1
.end method

.method public static getHardwareType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "hardwareType"

    invoke-virtual {v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_0
    return-object v0
.end method

.method public static getInAppPayment()Ljava/lang/Double;
    .locals 5

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 528
    .local v2, "value":Ljava/lang/Double;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    sget-object v3, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v4, "payment"

    invoke-virtual {v3, v4}, Lcom/appoxee/connection/AppoxeeClient;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, "attribute":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 532
    const-string v3, "getInAppPayment: attribute value is null"

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 540
    .end local v1    # "attribute":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 533
    .restart local v1    # "attribute":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 534
    move-object v0, v1

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    .line 535
    goto :goto_0

    .line 536
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getInAppPayment: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid float number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNumProductPurchased()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 549
    const/4 v2, 0x0

    .line 551
    .local v2, "value":Ljava/lang/Integer;
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    sget-object v3, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v4, "numProductPurchased"

    invoke-virtual {v3, v4}, Lcom/appoxee/connection/AppoxeeClient;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 554
    .local v1, "attribute":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 555
    const-string v3, "getNumProductPurchased: attribute value is null"

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 563
    .end local v1    # "attribute":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 556
    .restart local v1    # "attribute":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 557
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 558
    goto :goto_0

    .line 559
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNumProductPurchased: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid Integer number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getReadMessages()I
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appoxee/Appoxee;->countReadMessages(Z)I

    move-result v0

    return v0
.end method

.method public static getTagList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "response":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 260
    .local v1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v3, "tagList"

    invoke-virtual {v2, v3}, Lcom/appoxee/connection/AppoxeeClient;->tag(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v2, v0}, Lcom/appoxee/connection/AppoxeeClient;->getArrayResult(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    :cond_0
    return-object v1
.end method

.method public static getUnreadMessages()I
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appoxee/Appoxee;->countReadMessages(Z)I

    move-result v0

    return v0
.end method

.method public static increaseInAppPayment(F)Z
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "result":Z
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "increase"

    const-string v3, "payment"

    invoke-virtual {v1, v2, v3, p0}, Lcom/appoxee/connection/AppoxeeClient;->assignAttribute(Ljava/lang/String;Ljava/lang/String;F)Z

    move-result v0

    .line 499
    :cond_0
    return v0
.end method

.method public static increaseNumProductPurchased(I)Z
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "result":Z
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    sget-object v1, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v2, "increase"

    const-string v3, "numProductPurchased"

    int-to-float v4, p0

    invoke-virtual {v1, v2, v3, v4}, Lcom/appoxee/connection/AppoxeeClient;->assignAttribute(Ljava/lang/String;Ljava/lang/String;F)Z

    move-result v0

    .line 517
    :cond_0
    return v0
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/appoxee/AppoxeeManager;->mReady:Z

    if-nez v0, :cond_0

    .line 82
    const-string v0, "Appoxee is not ready yet!"

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 85
    :cond_0
    sget-boolean v0, Lcom/appoxee/AppoxeeManager;->mReady:Z

    return v0
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "onStop is called"

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->setTimeInAppT1()V

    .line 97
    :cond_0
    return-void
.end method

.method public static removeDeviceAlias()Z
    .locals 5

    .prologue
    .line 132
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v3, "remove"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/appoxee/connection/AppoxeeClient;->alias(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    .local v0, "response":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 135
    .local v1, "result":Z
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v2, v0}, Lcom/appoxee/connection/AppoxeeClient;->getBooleanResult(Lorg/json/JSONObject;)Z

    move-result v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    const-string v2, "alias"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->removeConfiguration(Ljava/lang/String;)Z

    .line 142
    :cond_0
    return v1
.end method

.method public static removeTagsFromDevice(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 218
    .local v0, "response":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 220
    .local v1, "result":Z
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v3, "remove"

    invoke-virtual {v2, v3, p0}, Lcom/appoxee/connection/AppoxeeClient;->tag(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    sget-object v2, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v2, v0}, Lcom/appoxee/connection/AppoxeeClient;->getBooleanResult(Lorg/json/JSONObject;)Z

    move-result v1

    .line 223
    if-eqz v1, :cond_0

    .line 224
    const-string v2, "tags"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->removeConfiguration(Ljava/lang/String;)Z

    .line 228
    :cond_0
    return v1
.end method

.method private static setAppVersion()V
    .locals 4

    .prologue
    .line 55
    sget-object v2, Lcom/appoxee/Configuration;->AppVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 61
    const/4 v1, 0x6

    .line 62
    .local v1, "versionCode":I
    sget-object v2, Lcom/appoxee/AppoxeeManager;->mConfiguration:Lcom/appoxee/Configuration;

    invoke-virtual {v2, v1}, Lcom/appoxee/Configuration;->setAppVersion(I)V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK Version Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 68
    const-string v0, "1.43"

    .line 69
    .local v0, "appVer":Ljava/lang/String;
    invoke-static {v0}, Lcom/appoxee/Configuration;->setAppClientVersion(Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK Version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 73
    .end local v0    # "appVer":Ljava/lang/String;
    .end local v1    # "versionCode":I
    :cond_0
    return-void
.end method

.method public static setClient(Lcom/appoxee/connection/AppoxeeClient;)V
    .locals 0
    .param p0, "appoxeeClient"    # Lcom/appoxee/connection/AppoxeeClient;

    .prologue
    .line 567
    sput-object p0, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    .line 568
    return-void
.end method

.method public static setDeviceAlias(Ljava/lang/String;)Z
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    const-string v5, "alias"

    .line 110
    const/4 v2, 0x1

    .line 111
    .local v2, "result":Z
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "alias"

    const/4 v4, 0x0

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "oldValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/appoxee/Appoxee;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    sget-object v3, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    const-string v4, "set"

    invoke-virtual {v3, v4, p0}, Lcom/appoxee/connection/AppoxeeClient;->alias(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    .local v1, "response":Lorg/json/JSONObject;
    sget-object v3, Lcom/appoxee/Appoxee;->mClient:Lcom/appoxee/connection/AppoxeeClient;

    invoke-virtual {v3, v1}, Lcom/appoxee/connection/AppoxeeClient;->getBooleanResult(Lorg/json/JSONObject;)Z

    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    const-string v3, "alias"

    invoke-static {v5, p0}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 123
    .end local v1    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return v2

    .line 120
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
