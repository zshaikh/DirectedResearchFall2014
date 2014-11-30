.class public interface abstract Lcom/playhaven/src/common/PHAPIRequest$Delegate;
.super Ljava/lang/Object;
.source "PHAPIRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAPIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
.end method

.method public abstract requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
.end method
