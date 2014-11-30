.class public Lcom/nativex/common/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/common/Response$TYPE;
    }
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field private responseType:Lcom/nativex/common/Response$TYPE;

.field private status:Ljava/lang/String;

.field private statusCode:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/nativex/common/Response$TYPE;->STRING:Lcom/nativex/common/Response$TYPE;

    iput-object v0, p0, Lcom/nativex/common/Response;->responseType:Lcom/nativex/common/Response$TYPE;

    .line 42
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/nativex/common/Response;->status:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/nativex/common/Response$TYPE;->STRING:Lcom/nativex/common/Response$TYPE;

    iput-object v0, p0, Lcom/nativex/common/Response;->responseType:Lcom/nativex/common/Response$TYPE;

    .line 42
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/nativex/common/Response;->status:Ljava/lang/String;

    .line 66
    iput p1, p0, Lcom/nativex/common/Response;->statusCode:I

    .line 67
    iput-object p2, p0, Lcom/nativex/common/Response;->status:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p3}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    .line 70
    return-void
.end method

.method private convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/nativex/common/Utilities;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getPrettyResponse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 88
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/nativex/common/Response;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nativex/common/Response;->response:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseType()Lcom/nativex/common/Response$TYPE;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nativex/common/Response;->responseType:Lcom/nativex/common/Response$TYPE;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nativex/common/Response;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/nativex/common/Response;->statusCode:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nativex/common/Response;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected setRawResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nativex/common/Response;->response:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setResponse(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nativex/common/Response;->responseType:Lcom/nativex/common/Response$TYPE;

    sget-object v1, Lcom/nativex/common/Response$TYPE;->STRING:Lcom/nativex/common/Response$TYPE;

    if-ne v0, v1, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/nativex/common/Response;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/common/Response;->response:Ljava/lang/String;

    .line 126
    :cond_0
    return-void
.end method

.method protected setResponseType(Lcom/nativex/common/Response$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/nativex/common/Response$TYPE;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nativex/common/Response;->responseType:Lcom/nativex/common/Response$TYPE;

    .line 188
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nativex/common/Response;->status:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/nativex/common/Response;->statusCode:I

    .line 157
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nativex/common/Response;->url:Ljava/lang/String;

    .line 168
    return-void
.end method
