.class Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;


# direct methods
.method constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "data:text/html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    invoke-interface {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->didClickInterstitial()V

    :cond_1
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$500(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->canDisplayAd()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PopupAdActivity"

    const-string v1, "start voxel flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$600(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I
    invoke-static {v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$500(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/voxel/sdk/VoxelSDK;->createSessionDialog(Landroid/content/Context;J)Lcom/voxel/sdk/ad/VoxelAppDialog;

    move-result-object v0

    new-instance v1, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;

    invoke-direct {v1, p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4$1;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;)V

    invoke-interface {v0, v1}, Lcom/voxel/sdk/ad/VoxelAppDialog;->setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V

    invoke-interface {v0}, Lcom/voxel/sdk/ad/VoxelAppDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finishPopup()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$300(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$400(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSub4String()Ljava/lang/String;
    invoke-static {v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$200(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    const/4 v0, 0x0

    return v0
.end method
