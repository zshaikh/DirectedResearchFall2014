.class Lcom/fusepowered/m2/m2l/MraidActivity$3;
.super Lcom/fusepowered/m2/m2l/MraidView$BaseMraidListener;
.source "MraidActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2RActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/M2RActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/M2RActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidActivity$3;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    .line 119
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidView$BaseMraidListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V
    .locals 2
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;
    .param p2, "newViewState"    # Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$3;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    # getter for: Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->access$0(Lcom/fusepowered/m2/m2l/M2RActivity;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$3;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->finish()V

    .line 127
    return-void
.end method

.method public onReady(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 2
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$3;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    # getter for: Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->access$0(Lcom/fusepowered/m2/m2l/M2RActivity;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$3;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->showInterstitialCloseButton()V

    .line 123
    return-void
.end method
