.class public Lcom/bitrhymes/facebookext/functions/FBLogEventFunction;
.super Ljava/lang/Object;
.source "FBLogEventFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "pixelStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 19
    .local v4, "pixelValueStr":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 23
    .local v2, "pixelValue":D
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 24
    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 26
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 28
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v2

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    .line 43
    const/4 v5, 0x0

    return-object v5

    .line 31
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 32
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 34
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 36
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 38
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
