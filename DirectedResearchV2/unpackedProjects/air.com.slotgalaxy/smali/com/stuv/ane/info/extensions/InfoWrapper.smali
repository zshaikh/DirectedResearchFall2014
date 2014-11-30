.class public Lcom/stuv/ane/info/extensions/InfoWrapper;
.super Ljava/lang/Object;
.source "InfoWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSharedPref(Ljava/lang/String;)V
    .locals 3
    .param p0, "prefName"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v1, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public static getAccounts()Lorg/json/JSONArray;
    .locals 9

    .prologue
    .line 117
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v1, "accountArray":Lorg/json/JSONArray;
    sget-object v5, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 120
    .local v3, "accounts":[Landroid/accounts/Account;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 138
    return-object v1

    .line 120
    :cond_0
    aget-object v0, v3, v6

    .line 123
    .local v0, "account":Landroid/accounts/Account;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v2, "accountObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v7, "type"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 130
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    sget-object v1, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 97
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLogcat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    const-string v0, "Info"

    const-string v1, "Getting logcat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, ""

    return-object v0
.end method

.method public static getMAC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOpenUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lorg/OpenUDID/OpenUDID_manager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/OpenUDID/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    sget-object v1, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    const-string v1, "none"

    :goto_0
    return-object v1

    .line 107
    :pswitch_0
    const-string v1, "gsm"

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v1, "cdma"

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSdk()I
    .locals 1

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 8

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 70
    .local v3, "serial_no":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 71
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 72
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getSharedPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefName"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 44
    sput-object p1, Lcom/stuv/ane/info/extensions/InfoWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 46
    sput-object p0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public static initialise()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/OpenUDID/OpenUDID_manager;->sync(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static setKeepScreenOn(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    const/16 v1, 0x80

    .line 175
    if-eqz p0, :cond_0

    .line 177
    sget-object v0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static test(Ljava/lang/String;)V
    .locals 6
    .param p0, "streamName"    # Ljava/lang/String;

    .prologue
    const-string v5, "notify"

    const-string v4, "Info"

    .line 201
    const/high16 v1, -0x80000000

    .line 203
    .local v1, "streamType":I
    const-string v2, "Info"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "notify"

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "media"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 207
    const/4 v1, 0x3

    .line 208
    const-string v2, "Info"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "media "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :goto_0
    sget-object v2, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 232
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v2, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 234
    const-string v2, "Info"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nyo   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/stuv/ane/info/extensions/InfoWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 211
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const-string v2, "ring"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 213
    const/4 v1, 0x2

    .line 214
    const-string v2, "Info"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    const-string v2, "system"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 219
    const/4 v1, 0x1

    .line 220
    const-string v2, "Info"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_3
    const-string v2, "notify"

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const/4 v1, 0x5

    .line 226
    const-string v2, "Info"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notify "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
