.class Lcom/nativex/monetization/mraid/MRAIDContainer$5;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field final synthetic val$event:Lcom/nativex/monetization/enums/AdEvent;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->val$event:Lcom/nativex/monetization/enums/AdEvent;

    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->onRichMediaEvent:Lcom/nativex/monetization/listeners/OnAdEvent;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$600(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/listeners/OnAdEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->onRichMediaEvent:Lcom/nativex/monetization/listeners/OnAdEvent;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$600(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/listeners/OnAdEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->val$event:Lcom/nativex/monetization/enums/AdEvent;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$5;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nativex/monetization/listeners/OnAdEvent;->onEvent(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1602
    :cond_0
    return-void
.end method
