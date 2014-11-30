.class Lcom/fusepowered/m2/m2l/MoPubActivity$1;
.super Ljava/lang/Object;
.source "MoPubActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2Activity;->preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialLoaded()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$1;->val$customEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 87
    return-void
.end method
