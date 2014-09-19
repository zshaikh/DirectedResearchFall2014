.class Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;-><init>(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;->this$0:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "MoPub"

    const-string v1, "Third-party network timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;->this$0:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;->this$0:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->invalidate()V

    .line 74
    return-void
.end method
