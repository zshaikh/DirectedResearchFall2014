.class Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->createInterstitial(Ljava/lang/String;)Lcom/appsponsor/appsponsorsdk/PopupAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;


# direct methods
.method constructor <init>(Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const-string v1, ""

    sget-object v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialCached:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didClickInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const-string v1, ""

    sget-object v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialClicked:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didCloseInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const-string v1, ""

    sget-object v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialClosed:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didFailToLoad(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const-string v1, ""

    sget-object v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialFailedToLoad:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public willAppear()V
    .locals 3

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const-string v1, ""

    sget-object v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialWillAppear:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public willDisappear()V
    .locals 3

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;->this$0:Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const-string v1, ""

    sget-object v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialWillDisappear:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
