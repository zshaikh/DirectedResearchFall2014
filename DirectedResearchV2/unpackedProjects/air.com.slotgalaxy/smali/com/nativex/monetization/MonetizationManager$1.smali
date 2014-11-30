.class final Lcom/nativex/monetization/MonetizationManager$1;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$customPlacement:Ljava/lang/String;

.field final synthetic val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/nativex/monetization/MonetizationManager$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nativex/monetization/MonetizationManager$1;->val$customPlacement:Ljava/lang/String;

    iput-object p3, p0, Lcom/nativex/monetization/MonetizationManager$1;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/nativex/monetization/MonetizationManager$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nativex/monetization/MonetizationManager$1;->val$customPlacement:Ljava/lang/String;

    iget-object v2, p0, Lcom/nativex/monetization/MonetizationManager$1;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDManager;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Z

    .line 393
    return-void
.end method
