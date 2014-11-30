.class public Lcom/nativex/monetization/communication/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;,
        Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/nativex/common/Request;",
        "Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static cancel:Z

.field private static listener:Lcom/nativex/common/OnBaseTaskCompletedListener;

.field public static status:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;


# instance fields
.field private restServiceManager:Lcom/nativex/common/IHTTPServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    sput-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask;->status:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nativex/monetization/communication/BaseAsyncTask;->cancel:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask;->listener:Lcom/nativex/common/OnBaseTaskCompletedListener;

    return-void
.end method

.method public constructor <init>(Lcom/nativex/common/IHTTPServiceManager;)V
    .locals 1
    .param p1, "serviceManager"    # Lcom/nativex/common/IHTTPServiceManager;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    .line 60
    sget-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    sput-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask;->status:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    .line 61
    iput-object p1, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nativex/monetization/communication/BaseAsyncTask;->cancel:Z

    .line 63
    return-void
.end method

.method public static cancelTask()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nativex/monetization/communication/BaseAsyncTask;->cancel:Z

    .line 190
    return-void
.end method

.method public static setOnTaskCompletedListener(Lcom/nativex/common/OnBaseTaskCompletedListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/nativex/common/OnBaseTaskCompletedListener;

    .prologue
    .line 170
    sput-object p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->listener:Lcom/nativex/common/OnBaseTaskCompletedListener;

    .line 171
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/nativex/common/Request;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Lcom/nativex/common/Request;

    .prologue
    const/4 v10, 0x0

    const-string v9, "BaseAsyncTask: Unexpected exception caught while releasing RestServiceManager."

    .line 68
    sget-object v7, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->RUNNING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    sput-object v7, Lcom/nativex/monetization/communication/BaseAsyncTask;->status:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    .line 70
    const/4 v0, 0x0

    .line 74
    .local v0, "count":I
    if-nez p1, :cond_0

    .line 75
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 143
    :try_start_1
    iget-object v8, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    invoke-interface {v8}, Lcom/nativex/common/IHTTPServiceManager;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :goto_0
    return-object v7

    .line 144
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "BaseAsyncTask: Unexpected exception caught while releasing RestServiceManager."

    invoke-static {v9, v1}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_2
    array-length v7, p1

    if-ge v3, v7, :cond_9

    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, "response":Lcom/nativex/common/Response;
    aget-object v4, p1, v3

    .line 82
    .local v4, "request":Lcom/nativex/common/Request;
    sget-boolean v7, Lcom/nativex/monetization/communication/BaseAsyncTask;->cancel:Z

    if-eqz v7, :cond_1

    instance-of v7, v4, Lcom/nativex/monetization/communication/requests/EndSessionRequest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_1

    .line 78
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lcom/nativex/common/Request;->shouldExecute()Z

    move-result v7

    if-nez v7, :cond_3

    .line 88
    new-instance v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    invoke-direct {v2, p0}, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;-><init>(Lcom/nativex/monetization/communication/BaseAsyncTask;)V

    .line 89
    .local v2, "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    iput-object v4, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->request:Lcom/nativex/common/Request;

    .line 90
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->response:Lcom/nativex/common/Response;

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->success:Z

    .line 92
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {p0, v7}, Lcom/nativex/monetization/communication/BaseAsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 125
    .end local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 126
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BaseAsyncTask.doInBackground: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request failed. IOException."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4}, Lcom/nativex/common/Request;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BaseAsyncTask.doInBackground: response body ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 130
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    new-instance v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    invoke-direct {v2, p0}, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;-><init>(Lcom/nativex/monetization/communication/BaseAsyncTask;)V

    .line 132
    .restart local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    iput-object v4, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->request:Lcom/nativex/common/Request;

    .line 133
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->success:Z

    .line 134
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->response:Lcom/nativex/common/Response;

    .line 135
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {p0, v7}, Lcom/nativex/monetization/communication/BaseAsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    .end local v3    # "i":I
    .end local v4    # "request":Lcom/nativex/common/Request;
    .end local v5    # "response":Lcom/nativex/common/Response;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 140
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "BaseAsyncTask: Unexpected exception caught in doInBackground()"

    invoke-static {v7, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    :try_start_6
    iget-object v7, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    invoke-interface {v7}, Lcom/nativex/common/IHTTPServiceManager;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    iput-object v10, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 95
    .restart local v3    # "i":I
    .restart local v4    # "request":Lcom/nativex/common/Request;
    .restart local v5    # "response":Lcom/nativex/common/Response;
    :cond_3
    :try_start_7
    invoke-virtual {v4}, Lcom/nativex/common/Request;->generateRequest()V

    .line 96
    invoke-virtual {v4}, Lcom/nativex/common/Request;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request URL -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request body -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequest()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 100
    :cond_4
    invoke-virtual {v4}, Lcom/nativex/common/Request;->preExecute()V

    .line 101
    iget-object v7, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    invoke-interface {v7, v4}, Lcom/nativex/common/IHTTPServiceManager;->execute(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;

    move-result-object v5

    .line 102
    invoke-virtual {v4}, Lcom/nativex/common/Request;->postExecute()V

    .line 103
    invoke-virtual {v4}, Lcom/nativex/common/Request;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " response body -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 110
    :cond_5
    :goto_5
    new-instance v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    invoke-direct {v2, p0}, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;-><init>(Lcom/nativex/monetization/communication/BaseAsyncTask;)V

    .line 111
    .restart local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    iput-object v4, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->request:Lcom/nativex/common/Request;

    .line 112
    iput-object v5, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->response:Lcom/nativex/common/Response;

    .line 114
    invoke-virtual {v5}, Lcom/nativex/common/Response;->getStatusCode()I

    move-result v6

    .line 115
    .local v6, "statusCode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request status -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/nativex/common/Response;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 116
    const/16 v7, 0xc8

    if-lt v6, v7, :cond_7

    const/16 v7, 0x190

    if-ge v6, v7, :cond_7

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->success:Z

    .line 123
    :goto_6
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {p0, v7}, Lcom/nativex/monetization/communication/BaseAsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 142
    .end local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    .end local v3    # "i":I
    .end local v4    # "request":Lcom/nativex/common/Request;
    .end local v5    # "response":Lcom/nativex/common/Response;
    .end local v6    # "statusCode":I
    :catchall_0
    move-exception v7

    .line 143
    :try_start_8
    iget-object v8, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    invoke-interface {v8}, Lcom/nativex/common/IHTTPServiceManager;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 146
    :goto_7
    throw v7

    .line 107
    .restart local v3    # "i":I
    .restart local v4    # "request":Lcom/nativex/common/Request;
    .restart local v5    # "response":Lcom/nativex/common/Response;
    :cond_6
    :try_start_9
    const-string v7, "Response is null."

    invoke-static {v7}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 120
    .restart local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    .restart local v6    # "statusCode":I
    :cond_7
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->success:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 128
    .end local v2    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    .end local v6    # "statusCode":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_a
    const-string v8, "null"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "request":Lcom/nativex/common/Request;
    .end local v5    # "response":Lcom/nativex/common/Response;
    :cond_9
    :try_start_b
    iget-object v7, p0, Lcom/nativex/monetization/communication/BaseAsyncTask;->restServiceManager:Lcom/nativex/common/IHTTPServiceManager;

    invoke-interface {v7}, Lcom/nativex/common/IHTTPServiceManager;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 144
    :catch_3
    move-exception v7

    move-object v1, v7

    .line 145
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "BaseAsyncTask: Unexpected exception caught while releasing RestServiceManager."

    invoke-static {v9, v1}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 144
    .end local v3    # "i":I
    :catch_4
    move-exception v7

    move-object v1, v7

    .line 145
    const-string v7, "BaseAsyncTask: Unexpected exception caught while releasing RestServiceManager."

    invoke-static {v9, v1}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    move-object v1, v8

    .line 145
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "BaseAsyncTask: Unexpected exception caught while releasing RestServiceManager."

    invoke-static {v9, v1}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Lcom/nativex/common/Request;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/communication/BaseAsyncTask;->doInBackground([Lcom/nativex/common/Request;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 155
    sget-object v1, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    sput-object v1, Lcom/nativex/monetization/communication/BaseAsyncTask;->status:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    .line 157
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseAsyncTask.onPostExecute(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tasks executed successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 158
    sget-object v1, Lcom/nativex/monetization/communication/BaseAsyncTask;->listener:Lcom/nativex/common/OnBaseTaskCompletedListener;

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/nativex/monetization/communication/BaseAsyncTask;->listener:Lcom/nativex/common/OnBaseTaskCompletedListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/nativex/common/OnBaseTaskCompletedListener;->taskCompleted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseAsyncTask: Unexpected exception caught in onPostExecute()"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/communication/BaseAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;)V
    .locals 5
    .param p1, "values"    # [Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    .prologue
    .line 177
    :try_start_0
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 181
    .local v1, "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    iget-object v2, v1, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->request:Lcom/nativex/common/Request;

    iget-boolean v3, v1, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->success:Z

    iget-object v4, v1, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->response:Lcom/nativex/common/Response;

    invoke-virtual {v2, v3, v4}, Lcom/nativex/common/Request;->executeListener(ZLcom/nativex/common/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "holder":Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BaseAsyncTask: Unexpected exception caught in onProgressUpdate()"

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/communication/BaseAsyncTask;->onProgressUpdate([Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;)V

    return-void
.end method
