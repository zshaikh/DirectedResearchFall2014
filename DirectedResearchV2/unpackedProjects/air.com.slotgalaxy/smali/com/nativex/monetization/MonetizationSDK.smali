.class public Lcom/nativex/monetization/MonetizationSDK;
.super Ljava/lang/Object;
.source "MonetizationSDK.java"


# static fields
.field public static final ACTION_RATE_APP:I = 0x64

.field public static final ACTION_UPGRADE_APP:I = 0x65


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/enums/Language;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appId"    # I
    .param p3, "applicationName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "publisherUserId"    # Ljava/lang/String;
    .param p6, "language"    # Lcom/nativex/monetization/enums/Language;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nativex/monetization/MonetizationSDK;->initialize(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/enums/Language;Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/nativex/monetization/ApplicationInputs;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "inputs"    # Lcom/nativex/monetization/ApplicationInputs;

    .prologue
    const-string v2, "Inputs cannot be null in MonetizationSDK.intialize()."

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p2, :cond_0

    .line 82
    const-string v0, "Inputs cannot be null in MonetizationSDK.intialize()."

    invoke-static {v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inputs cannot be null in MonetizationSDK.intialize()."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/nativex/monetization/ApplicationInputs;->getAppId()I

    move-result v2

    invoke-virtual {p2}, Lcom/nativex/monetization/ApplicationInputs;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nativex/monetization/ApplicationInputs;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/nativex/monetization/ApplicationInputs;->getPublisherUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nativex/monetization/ApplicationInputs;->getLanguage()Lcom/nativex/monetization/enums/Language;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nativex/monetization/MonetizationSDK;->initialize(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/enums/Language;Z)V

    .line 88
    return-void
.end method


# virtual methods
.method public createSession()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/MonetizationSDK;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V

    .line 290
    return-void
.end method

.method public createSession(Lcom/nativex/monetization/listeners/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nativex/monetization/listeners/SessionListener;

    .prologue
    .line 277
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/manager/SessionManager;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught in createSession()"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enableLogging(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 184
    invoke-static {p1}, Lcom/nativex/common/Log;->enableLogging(Z)V

    .line 185
    return-void
.end method

.method public endSession()V
    .locals 2

    .prologue
    .line 298
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught in endSession()"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initialize(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/enums/Language;Z)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appId"    # I
    .param p3, "applicationName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "publisherUserId"    # Ljava/lang/String;
    .param p6, "language"    # Lcom/nativex/monetization/enums/Language;
    .param p7, "willCallCreateSession"    # Z

    .prologue
    const-string v4, "Context cannot be null in MonetizationSDK.intialize()."

    .line 132
    const-string v2, "nativeX"

    const-string v3, "Using NativeX MonetizationSDK version 5.0.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez p1, :cond_0

    .line 134
    const-string v2, "Context cannot be null in MonetizationSDK.intialize()."

    invoke-static {v4}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Context cannot be null in MonetizationSDK.intialize()."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    if-nez p3, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 139
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    iget-object p3, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 145
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    if-nez p5, :cond_2

    .line 146
    const-string p5, ""

    .line 148
    :cond_2
    if-gtz p2, :cond_4

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid application id."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "err":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v0    # "err":Ljava/lang/String;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const-string p3, ""

    goto :goto_0

    .line 153
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {p4}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 155
    invoke-static {p4}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    const-string v0, "Package name cannot be empty or null."

    .line 157
    .restart local v0    # "err":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    .end local v0    # "err":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setContext(Landroid/content/Context;)V

    .line 163
    invoke-static {p2}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setAppId(I)V

    .line 164
    invoke-static {p3}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setApplicationName(Ljava/lang/String;)V

    .line 165
    invoke-static {p5}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setPublisherUserId(Ljava/lang/String;)V

    .line 166
    invoke-static {p4}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setPackageName(Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/nativex/common/SharedPreferenceManager;->initialize(Landroid/content/Context;)V

    .line 168
    invoke-static {p6}, Lcom/nativex/monetization/manager/StringsManager;->initialize(Lcom/nativex/monetization/enums/Language;)V

    .line 169
    invoke-static {p1}, Lcom/nativex/common/ExternalTrackingManager;->createHandler(Landroid/app/Activity;)V

    .line 171
    const/4 v2, 0x1

    if-ne p7, v2, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/nativex/monetization/MonetizationSDK;->createSession()V

    .line 174
    :cond_6
    return-void
.end method

.method public redeemCurrency()V
    .locals 2

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/advertiser/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/nativex/advertiser/NetworkConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/advertiser/NetworkConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->getDeviceBalance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught in redeemCurrency()"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->release()V

    .line 193
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nativex/monetization/communication/ServerRequestManager;->endSession(Lcom/nativex/common/OnTaskCompletedListener;Z)V

    .line 194
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->release()V

    .line 195
    invoke-static {}, Lcom/nativex/monetization/manager/ManagementService;->getInstance()Lcom/nativex/monetization/manager/ManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/manager/ManagementService;->release()V

    .line 196
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->release()V

    .line 197
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->release()V

    .line 198
    invoke-static {}, Lcom/nativex/common/StatsDManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonetizationSDK: Exception caught while releasing the managers"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public upgradeMyApp(Landroid/app/Activity;Lcom/nativex/monetization/DialogInputs;Lcom/nativex/monetization/listeners/ClickListenerBase;)V
    .locals 15
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "inputs"    # Lcom/nativex/monetization/DialogInputs;
    .param p3, "clickListener"    # Lcom/nativex/monetization/listeners/ClickListenerBase;

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getApplicationName()Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "applicationName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Package name cannot be empty or null in dialog inputs."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v11    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 236
    .local v14, "e":Ljava/lang/Exception;
    const-string v0, "MonetizationSDK: Exception caught in upgradeMyApp()"

    invoke-static {v0, v14}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 228
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v11    # "applicationName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_CURRENCY:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v0}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 229
    .local v13, "currencyTitleName":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_CURRENCY:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v0}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 230
    .local v12, "currencyLCName":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TITLE_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v1}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "titleMessage":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    sget-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_THIS_APP:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v0}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 232
    .local v10, "appTitle":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getCurrencyAmount()I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_FREE:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v0}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 233
    .local v9, "amount":Ljava/lang/String;
    :goto_4
    sget-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_USER_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v0}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    aput-object v12, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "userMessage":Ljava/lang/String;
    invoke-static {}, Lcom/nativex/monetization/manager/DialogManager;->getInstance()Lcom/nativex/monetization/manager/DialogManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_UPGRADE_BUTTON:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v1}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x65

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/nativex/monetization/manager/DialogManager;->showRateUpgradeDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/listeners/ClickListenerBase;I)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 228
    .end local v3    # "titleMessage":Ljava/lang/String;
    .end local v4    # "userMessage":Ljava/lang/String;
    .end local v9    # "amount":Ljava/lang/String;
    .end local v10    # "appTitle":Ljava/lang/String;
    .end local v12    # "currencyLCName":Ljava/lang/String;
    .end local v13    # "currencyTitleName":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    .line 229
    .restart local v13    # "currencyTitleName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    .restart local v3    # "titleMessage":Ljava/lang/String;
    .restart local v12    # "currencyLCName":Ljava/lang/String;
    :cond_5
    move-object v10, v11

    .line 231
    goto :goto_3

    .line 232
    .restart local v10    # "appTitle":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/nativex/monetization/DialogInputs;->getCurrencyAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v9, v0

    goto :goto_4
.end method
