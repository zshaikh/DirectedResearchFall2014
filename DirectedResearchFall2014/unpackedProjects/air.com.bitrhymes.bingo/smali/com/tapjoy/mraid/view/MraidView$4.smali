.class Lcom/tapjoy/mraid/view/MraidView$4;
.super Landroid/webkit/WebViewClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1040
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mDensity:F
    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->access$500(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I
    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1102(Lcom/tapjoy/mraid/view/MraidView;I)I

    .line 972
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mDensity:F
    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->access$500(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I
    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1202(Lcom/tapjoy/mraid/view/MraidView;I)I

    .line 973
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/controller/Utility;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mDensity:F
    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->access$500(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/controller/Utility;->init(F)V

    .line 975
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->createCloseImageButton()V

    .line 976
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$600(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v0, v1, :cond_1

    .line 977
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 979
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 949
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const-string v4, "android.intent.action.VIEW"

    .line 984
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldOverrideUrlLoading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    # getter for: Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;
    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/tapjoy/mraid/listener/MraidViewListener;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    move v4, v7

    .line 1032
    :goto_0
    return v4

    .line 994
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 998
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v4, "mraid"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 999
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 1001
    :cond_1
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1002
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1004
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1005
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v4}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v7

    .line 1006
    goto :goto_0

    .line 1008
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v4, "mailto:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1009
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1011
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1012
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v4}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v7

    .line 1013
    goto :goto_0

    .line 1015
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1016
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1018
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1019
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v4}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 1020
    goto :goto_0

    .line 1023
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1025
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1026
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1028
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1029
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v4}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v7

    .line 1030
    goto/16 :goto_0

    .line 1031
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1032
    .local v1, "e2":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
