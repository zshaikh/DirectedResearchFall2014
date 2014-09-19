.class Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/ApplifierImpact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactPlayVideoRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/a1/ApplifierImpact;


# direct methods
.method private constructor <init>(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/a1/ApplifierImpact;Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 805
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;-><init>(Lcom/fusepowered/a1/ApplifierImpact;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 809
    const-string v3, "Running videoplayrunner"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 810
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v3, :cond_1

    .line 811
    const-string v3, "Selected campaign found"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 815
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v3, v3, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v4, "showSpinner"

    invoke-virtual {v3, v4, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 824
    iget-object v3, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    #calls: Lcom/fusepowered/a1/ApplifierImpact;->createPauseScreenTimer()V
    invoke-static {v3}, Lcom/fusepowered/a1/ApplifierImpact;->access$2(Lcom/fusepowered/a1/ApplifierImpact;)V

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, playUrl:Ljava/lang/String;
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 828
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoStreamUrl()Ljava/lang/String;

    move-result-object v2

    .line 830
    :cond_0
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    sget-object v4, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v3, v4}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->setViewState(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start videoplayback with: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v3, v3, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v3, v2}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->playVideo(Ljava/lang/String;)V

    .line 836
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v2           #playUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 817
    .restart local v0       #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 818
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Couldn\'t create data JSON"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 835
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "Campaign is null"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
