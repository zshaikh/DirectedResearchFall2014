.class public Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;
.super Ljava/lang/Object;
.source "DolphinHttpClient.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    .line 293
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    :cond_0
    return-void

    .line 300
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public toEntity(Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 315
    return-object v0
.end method

.method public toQueryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 310
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 322
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Lcom/mgeek/android/util/DolphinHttpClient$HttpParameterBuilder;->toQueryString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
