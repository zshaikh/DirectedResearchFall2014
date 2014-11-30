.class public Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
.super Ljava/lang/Object;
.source "MRAIDContainerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDContainerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MapDataHolder"
.end annotation


# instance fields
.field cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;


# direct methods
.method protected constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainerHolder;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
