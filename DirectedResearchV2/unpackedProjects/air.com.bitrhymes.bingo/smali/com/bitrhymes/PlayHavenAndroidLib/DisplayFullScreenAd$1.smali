.class Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;
.super Ljava/lang/Object;
.source "DisplayFullScreenAd.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHContentRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;


# direct methods
.method constructor <init>(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V
    .locals 2
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "arg1"    # Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .prologue
    .line 79
    const-string v0, "PlayhavenEXt"

    const-string v1, "onDismissedContent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onDisplayedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V
    .locals 2
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "arg1"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 72
    const-string v0, "PlayhavenEXt"

    const-string v1, "onDisplayedContent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onFailedToDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 3
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "arg1"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 64
    const-string v0, "PlayhavenEXt"

    const-string v1, "onFailedToDisplayContent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    # getter for: Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    # getter for: Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "PH_FULLSCREEN_AD_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onNoContent(Lv2/com/playhaven/requests/content/PHContentRequest;)V
    .locals 3
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;

    .prologue
    .line 57
    const-string v0, "PlayhavenEXt"

    const-string v1, "onNoContent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    # getter for: Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    # getter for: Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "PH_FULLSCREEN_AD_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onReceivedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V
    .locals 3
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "arg1"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    # getter for: Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    # getter for: Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "PH_FULLSCREEN_AD_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    const-string v0, "PlayhavenEXt"

    const-string v1, "onReceivedContent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onSentContentRequest(Lv2/com/playhaven/requests/content/PHContentRequest;)V
    .locals 2
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;

    .prologue
    .line 44
    const-string v0, "PlayhavenEXt"

    const-string v1, "onSentContentRequest "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public onWillDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V
    .locals 2
    .param p1, "arg0"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "arg1"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 38
    const-string v0, "PlayhavenEXt"

    const-string v1, "onWillDisplayContent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
