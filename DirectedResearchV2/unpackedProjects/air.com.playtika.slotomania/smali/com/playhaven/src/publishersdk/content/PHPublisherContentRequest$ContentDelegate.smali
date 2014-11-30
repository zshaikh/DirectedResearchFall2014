.class public interface abstract Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
.super Ljava/lang/Object;
.source "PHPublisherContentRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentDelegate"
.end annotation


# virtual methods
.method public abstract didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V
.end method

.method public abstract didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
.end method

.method public abstract willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
.end method

.method public abstract willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
.end method
