.class public abstract Lam/sunrise/android/calendar/authenticator/ui/l;
.super Landroid/os/AsyncTask;
.source "AuthenticatorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lam/sunrise/android/calendar/b/f;

.field private c:Lam/sunrise/android/calendar/authenticator/ui/m;

.field private d:Lam/sunrise/android/calendar/authenticator/ui/n;

.field private e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

.field private f:Lam/sunrise/android/calendar/api/models/datas/Profile;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/b/f;Lam/sunrise/android/calendar/authenticator/ui/m;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->b:Lam/sunrise/android/calendar/authenticator/ui/n;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->d:Lam/sunrise/android/calendar/authenticator/ui/n;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->a:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->b:Lam/sunrise/android/calendar/b/f;

    .line 78
    iput-object p3, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->c:Lam/sunrise/android/calendar/authenticator/ui/m;

    .line 79
    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/l;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 175
    :goto_0
    return-object v0

    .line 106
    :cond_0
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->g:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 109
    if-nez v1, :cond_1

    .line 110
    const-string v0, "AuthenticatorTask"

    const-string v1, "executeTask: profileResponse == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    .line 115
    const-string v0, "AuthenticatorTask"

    const-string v2, "executeTask: statusCode=%d statusMessage=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v5, v5, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iput-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    .line 118
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->a:Landroid/content/Context;

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Profile;->connections:[Lam/sunrise/android/calendar/api/models/datas/Connection;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;[Lam/sunrise/android/calendar/api/models/datas/Connection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 127
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->f:Lam/sunrise/android/calendar/api/models/datas/Profile;

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 132
    :cond_3
    :try_start_1
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 133
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->f:Lam/sunrise/android/calendar/api/models/datas/Profile;

    .line 134
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_2
    const-string v1, "AuthenticatorTask"

    const-string v2, "executeTask: Unable to apply profile batch -- Error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    const-string v1, "AuthenticatorTask"

    const-string v2, "executeTask: Unable to apply profile batch -- Error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    const-string v1, "AuthenticatorTask"

    const-string v2, "executeTask -- RUNTIME EXCEPTION -- %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    instance-of v1, v0, Lretrofit/RetrofitError;

    if-eqz v1, :cond_6

    .line 147
    check-cast v0, Lretrofit/RetrofitError;

    .line 148
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_5

    .line 149
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    .line 150
    if-nez v1, :cond_4

    .line 151
    const-string v0, "AuthenticatorTask"

    const-string v1, "executeTask -- RUNTIME EXCEPTION: response == null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 155
    :cond_4
    const-string v2, "AuthenticatorTask"

    const-string v3, "executeTask -- RUNTIME EXCEPTION: statusCode=%d statusMessage=%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :try_start_3
    const-class v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    invoke-virtual {v0, v1}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 171
    :cond_5
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->d:Lam/sunrise/android/calendar/authenticator/ui/n;

    .line 175
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 163
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private b()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/l;->a(Landroid/content/Context;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 181
    if-nez v1, :cond_0

    .line 182
    const-string v0, "AuthenticatorTask"

    const-string v1, "prepareAuthenticator: authResponse == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 233
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 187
    const-string v0, "AuthenticatorTask"

    const-string v2, "prepareAuthenticator: statusCode == %d statusMessage=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v5, v5, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iput-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    .line 190
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string v0, "AuthenticatorTask"

    const-string v1, "prepareAuthenticator: accessToken == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->g:Ljava/lang/String;

    .line 199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "AuthenticatorTask"

    const-string v2, "prepareAuthenticator -- RUNTIME EXCEPTION -- %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    instance-of v1, v0, Lretrofit/RetrofitError;

    if-eqz v1, :cond_5

    .line 205
    check-cast v0, Lretrofit/RetrofitError;

    .line 206
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_4

    .line 207
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    .line 208
    if-nez v1, :cond_3

    .line 209
    const-string v0, "AuthenticatorTask"

    const-string v1, "prepareAuthenticator -- RUNTIME EXCEPTION: response == null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 213
    :cond_3
    const-string v2, "AuthenticatorTask"

    const-string v3, "prepareAuthenticator -- RUNTIME EXCEPTION: statusCode=%d statusMessage=%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :try_start_1
    const-class v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    invoke-virtual {v0, v1}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 229
    :cond_4
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->d:Lam/sunrise/android/calendar/authenticator/ui/n;

    .line 233
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 221
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Authentication;",
            ">;"
        }
    .end annotation
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/l;->a()Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/authenticator/ui/l;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "AuthenticatorTask"

    const-string v2, "doInBackground -- EXCEPTION -- %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->b:Lam/sunrise/android/calendar/b/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/b/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->c:Lam/sunrise/android/calendar/authenticator/ui/m;

    iget-object v3, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->d:Lam/sunrise/android/calendar/authenticator/ui/n;

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->e:Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v3, v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/m;->a(Lam/sunrise/android/calendar/authenticator/ui/n;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 251
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->c:Lam/sunrise/android/calendar/authenticator/ui/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->f:Lam/sunrise/android/calendar/api/models/datas/Profile;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/m;->a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected abstract c(Landroid/content/Context;)Z
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/l;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->b:Lam/sunrise/android/calendar/b/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/l;->c:Lam/sunrise/android/calendar/authenticator/ui/m;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/m;->a()V

    .line 260
    :cond_0
    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/l;->a(Ljava/lang/Boolean;)V

    return-void
.end method
