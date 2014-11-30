.class Lcom/nativex/monetization/mraid/MRAIDContainer$2;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field final synthetic val$container:Lcom/nativex/monetization/mraid/MRAIDContainer;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/16 v5, 0xa

    .line 859
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$000(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    move-result-object v3

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v3, v4, :cond_0

    .line 860
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    # setter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;
    invoke-static {v3, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$002(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 861
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$100(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    move-result-object v3

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    .line 863
    :cond_0
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$200(Lcom/nativex/monetization/mraid/MRAIDContainer;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$300(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v3

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v3, v4, :cond_1

    .line 864
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xff

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 865
    .local v1, "containerDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 866
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 867
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer$2$1;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer$2$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer$2;Landroid/graphics/drawable/Drawable;)V

    .line 875
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 876
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 877
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    const/16 v4, 0x3eb

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 878
    .local v2, "msg":Landroid/os/Message;
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 883
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "containerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # operator++ for: Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$208(Lcom/nativex/monetization/mraid/MRAIDContainer;)I

    .line 884
    return-void

    .line 881
    :cond_1
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseAnimationEnd()V
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$400(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0
.end method
