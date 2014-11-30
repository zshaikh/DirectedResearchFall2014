.class public interface abstract Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsponsor/appsponsorsdk/PopupAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PopupAdListener"
.end annotation


# virtual methods
.method public abstract didCacheInterstitial()V
.end method

.method public abstract didClickInterstitial()V
.end method

.method public abstract didCloseInterstitial()V
.end method

.method public abstract didFailToLoad(Ljava/lang/Exception;)V
.end method

.method public abstract willAppear()V
.end method

.method public abstract willDisappear()V
.end method
