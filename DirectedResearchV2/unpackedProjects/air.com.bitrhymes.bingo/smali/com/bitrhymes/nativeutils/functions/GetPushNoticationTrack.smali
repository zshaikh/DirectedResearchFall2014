.class public Lcom/bitrhymes/nativeutils/functions/GetPushNoticationTrack;
.super Ljava/lang/Object;
.source "GetPushNoticationTrack.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v8, "bgpush.txt"

    const-string v11, "ERROR_EVENT"

    const-string v10, ","

    .line 21
    const/4 v1, 0x0

    .line 24
    .local v1, "deviceInfoObject":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "bgpush.txt"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 25
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 26
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "trackMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "bgpush.txt"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 35
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 36
    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    :goto_1
    move-object v8, v1

    .line 45
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "trackMsg":Ljava/lang/String;
    :goto_2
    return-object v8

    .line 30
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 40
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 41
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "ERROR_EVENT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v8, 0x0

    goto :goto_2

    .line 38
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "trackMsg":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v8, ""

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 42
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "trackMsg":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 43
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    const-string v8, "ERROR_EVENT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
