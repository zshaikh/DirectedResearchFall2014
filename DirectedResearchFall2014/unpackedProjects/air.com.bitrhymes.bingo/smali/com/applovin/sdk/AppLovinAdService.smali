.class public interface abstract Lcom/applovin/sdk/AppLovinAdService;
.super Ljava/lang/Object;


# static fields
.field public static final URI_AD_SERVICE:Ljava/lang/String; = "/adservice"

.field public static final URI_API_SERVICE:Ljava/lang/String; = "/api"

.field public static final URI_CLOSE_AD:Ljava/lang/String; = "/adservice/close_ad"

.field public static final URI_LAUNCH_APP:Ljava/lang/String; = "/launch"

.field public static final URI_NATIVE_FUNCTION:Ljava/lang/String; = "/function"

.field public static final URI_NEXT_AD:Ljava/lang/String; = "/adservice/next_ad"

.field public static final URI_OPEN_EXTERNALLY:Ljava/lang/String; = "/openurl"

.field public static final URI_TRACK_CLICK:Ljava/lang/String; = "/adservice/track_click"


# virtual methods
.method public abstract addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V
.end method

.method public abstract addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
.end method

.method public abstract hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z
.end method

.method public abstract loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
.end method

.method public abstract loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
.end method

.method public abstract preloadAd(Lcom/applovin/sdk/AppLovinAdSize;)V
.end method

.method public abstract removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
.end method

.method public abstract trackAdClick(Lcom/applovin/sdk/AppLovinAd;)V
.end method
