.class public Lcom/bitrhymes/facebookext/functions/FBPublishInstallFunction;
.super Ljava/lang/Object;
.source "FBPublishInstallFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 20
    .local v0, "applicationId":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 31
    :goto_0
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 21
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 22
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 23
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 24
    .local v1, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v1}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v1    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 26
    .local v1, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v1}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v1    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 28
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v1    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_0
    const-string v2, "cannot start publish install, applicationId is null"

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
