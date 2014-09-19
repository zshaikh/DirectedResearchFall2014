.class public Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;
.super Ljava/lang/Object;
.source "GetRawOpenUDID.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetRawOpenUDID"


# instance fields
.field openUDID:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParserError"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .parameter "arg0"
    .parameter "arg1"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParserError"
        }
    .end annotation

    .prologue
    const-string v6, "-"

    const-string v6, "GetRawOpenUDID"

    const-string v9, ","

    .line 22
    :try_start_0
    sget-object v6, Lcom/bitrhymes/nativeutils/utils/Utils;->ODID_STRING_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/bitrhymes/nativeutils/utils/Utils;->readFromSDFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, idsFromFile:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bitrhymes/nativeutils/utils/Utils;->validateODID(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, idsArray:[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    iput-object v6, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    .line 29
    .end local v4           #idsArray:[Ljava/lang/String;
    :cond_0
    const-string v6, "GetRawOpenUDID"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ODID from file:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v6, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_2

    .line 32
    :cond_1
    const-string v6, "GetRawOpenUDID"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ODID from file is null or length is 0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->sync(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    .line 37
    iget-object v6, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-static {v6}, Lcom/bitrhymes/nativeutils/utils/Utils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, anotherHash:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, idToSave:Ljava/lang/String;
    sget-object v6, Lcom/bitrhymes/nativeutils/utils/Utils;->ODID_STRING_PATH:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/bitrhymes/nativeutils/utils/Utils;->writeToSDFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .end local v0           #anotherHash:Ljava/lang/String;
    .end local v3           #idToSave:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 42
    .local v1, deviceInfoObject:Lcom/adobe/fre/FREObject;
    const-string v6, "GetRawOpenUDID"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OpenUDID:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v6, p0, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;->openUDID:Ljava/lang/String;

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v6, v1

    .line 49
    .end local v1           #deviceInfoObject:Lcom/adobe/fre/FREObject;
    .end local v5           #idsFromFile:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 45
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 46
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ERROR_EVENT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v6, 0x0

    goto :goto_0
.end method
