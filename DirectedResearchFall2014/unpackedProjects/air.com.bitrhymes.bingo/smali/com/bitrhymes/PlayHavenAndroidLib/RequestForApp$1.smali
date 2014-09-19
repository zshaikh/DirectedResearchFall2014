.class Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;
.super Ljava/lang/Object;
.source "RequestForApp.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHOpenRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;


# direct methods
.method constructor <init>(Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenFailed(Lv2/com/playhaven/requests/open/PHOpenRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 43
    const-string v0, "AIR_AndroidDialog"

    const-string v1, " onOpenFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;

    iget-object v0, v0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;

    iget-object v0, v0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "PH_REQUEST_APP_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onOpenSuccessful(Lv2/com/playhaven/requests/open/PHOpenRequest;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 36
    const-string v0, "AIR_AndroidDialog"

    const-string v1, " onOpenSuccessful "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;

    iget-object v0, v0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;->this$0:Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;

    iget-object v0, v0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "PH_REQUEST_APP_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
