.class public interface abstract Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;
.super Ljava/lang/Object;
.source "ManipulatableContentDisplayer.java"


# virtual methods
.method public abstract disableClosable()V
.end method

.method public abstract dismiss()V
.end method

.method public abstract enableClosable()V
.end method

.method public abstract getContent()Lv2/com/playhaven/model/PHContent;
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public abstract getSecret()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract isClosable()Z
.end method

.method public abstract launchNestedContentDisplayer(Lv2/com/playhaven/model/PHContent;)V
.end method

.method public abstract launchSubRequest(Lv2/com/playhaven/requests/content/PHSubContentRequest;)V
.end method

.method public abstract launchURL(Ljava/lang/String;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V
.end method

.method public abstract openURL(Ljava/lang/String;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V
.end method

.method public abstract sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
