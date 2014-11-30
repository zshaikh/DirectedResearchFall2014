.class final Lcom/nativex/monetization/MonetizationManager$5;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/MonetizationManager;->fetchBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V
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
    .line 650
    iput-object p1, p0, Lcom/nativex/monetization/MonetizationManager$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nativex/monetization/MonetizationManager$5;->val$customPlacement:Ljava/lang/String;

    iput-object p3, p0, Lcom/nativex/monetization/MonetizationManager$5;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 654
    iget-object v0, p0, Lcom/nativex/monetization/MonetizationManager$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nativex/monetization/MonetizationManager$5;->val$customPlacement:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nativex/monetization/MonetizationManager$5;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    invoke-static {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDManager;->cacheBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/listeners/OnAdEvent;)Z

    .line 655
    return-void
.end method
