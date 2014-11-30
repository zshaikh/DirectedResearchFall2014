.class public Lcom/nativex/common/GetImageResponse;
.super Lcom/nativex/common/Response;
.source "GetImageResponse.java"


# instance fields
.field private volatile bitmapResponse:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nativex/common/Response;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/common/GetImageResponse;->bitmapResponse:Landroid/graphics/Bitmap;

    .line 37
    sget-object v0, Lcom/nativex/common/Response$TYPE;->OTHER:Lcom/nativex/common/Response$TYPE;

    invoke-virtual {p0, v0}, Lcom/nativex/common/GetImageResponse;->setResponseType(Lcom/nativex/common/Response$TYPE;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getBitmapResponse()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nativex/common/GetImageResponse;->bitmapResponse:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setResponse(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/nativex/common/GetImageResponse;->getResponseType()Lcom/nativex/common/Response$TYPE;

    move-result-object v1

    sget-object v2, Lcom/nativex/common/Response$TYPE;->OTHER:Lcom/nativex/common/Response$TYPE;

    if-ne v1, v2, :cond_1

    .line 51
    invoke-static {p1}, Lcom/nativex/common/Utilities;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/common/GetImageResponse;->bitmapResponse:Landroid/graphics/Bitmap;

    .line 52
    iget-object v1, p0, Lcom/nativex/common/GetImageResponse;->bitmapResponse:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/common/GetImageResponse;->bitmapResponse:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/common/GetImageResponse;->bitmapResponse:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "bitmapProps":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/nativex/common/Response;->setRawResponse(Ljava/lang/String;)V

    .line 61
    .end local v0    # "bitmapProps":Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "Downloading image failed"

    invoke-super {p0, v1}, Lcom/nativex/common/Response;->setRawResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-super {p0, p1}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    goto :goto_0
.end method
