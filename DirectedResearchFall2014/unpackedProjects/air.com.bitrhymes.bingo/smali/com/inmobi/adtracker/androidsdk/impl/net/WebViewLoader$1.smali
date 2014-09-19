.class Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$1;
.super Ljava/lang/Object;
.source "WebViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "https://d.appsdt.com/sdkdwnldbeacon.html"

    const-string v4, "Sending goal: "

    const-string v3, "IMAdTrackerSDK_V_2_5_1"

    const-string v2, " , url: "

    .line 299
    sget-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->TestMode:Z

    if-nez v0, :cond_0

    .line 301
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending goal: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "https://d.appsdt.com/sdkdwnldbeacon.html"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    const-string v1, "https://d.appsdt.com/sdkdwnldbeacon.html"

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending goal: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->testJsServerURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->testJsServerURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
