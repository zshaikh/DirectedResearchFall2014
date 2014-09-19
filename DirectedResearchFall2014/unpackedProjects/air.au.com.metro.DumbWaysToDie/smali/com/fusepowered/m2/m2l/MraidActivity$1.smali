.class Lcom/fusepowered/m2/m2l/MraidActivity$1;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MraidView$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2RActivity;->preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$customEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V
    .locals 0
    .parameter "view"
    .parameter "newViewState"

    .prologue
    .line 82
    return-void
.end method

.method public onExpand(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 78
    return-void
.end method

.method public onFailure(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 74
    return-void
.end method

.method public onReady(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 69
    return-void
.end method
