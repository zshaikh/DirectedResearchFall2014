.class public Lcom/bitrhymes/nativeutils/functions/GetMD5OpenUDID;
.super Ljava/lang/Object;
.source "GetMD5OpenUDID.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v8, "GetMD5OpenUDID"

    const-string v8, "-"

    const-string v11, ","

    .line 26
    const/4 v7, 0x0

    .line 27
    .local v7, openUDID:Ljava/lang/String;
    :try_start_0
    sget-object v8, Lcom/bitrhymes/nativeutils/utils/Utils;->ODID_STRING_PATH:Ljava/lang/String;

    invoke-static {v8}, Lcom/bitrhymes/nativeutils/utils/Utils;->readFromSDFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, idsFromFile:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/bitrhymes/nativeutils/utils/Utils;->validateODID(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 30
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, idsArray:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v7, v4, v8

    .line 33
    .end local v4           #idsArray:[Ljava/lang/String;
    :cond_0
    const-string v8, "GetMD5OpenUDID"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ODID from file:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x28

    if-eq v8, v9, :cond_2

    .line 36
    :cond_1
    const-string v8, "GetMD5OpenUDID"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ODID from file is null or length is 0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->sync(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-static {v7}, Lcom/bitrhymes/nativeutils/utils/Utils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, anotherHash:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, idToSave:Ljava/lang/String;
    sget-object v8, Lcom/bitrhymes/nativeutils/utils/Utils;->ODID_STRING_PATH:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/bitrhymes/nativeutils/utils/Utils;->writeToSDFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v0           #anotherHash:Ljava/lang/String;
    .end local v3           #idToSave:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 45
    .local v1, deviceInfoObject:Lcom/adobe/fre/FREObject;
    invoke-static {v7}, Lcom/bitrhymes/nativeutils/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, md5RawODID:Ljava/lang/String;
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v8, v1

    .line 52
    .end local v1           #deviceInfoObject:Lcom/adobe/fre/FREObject;
    .end local v5           #idsFromFile:Ljava/lang/String;
    .end local v6           #md5RawODID:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 49
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 50
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ERROR_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v8, 0x0

    goto :goto_0
.end method
