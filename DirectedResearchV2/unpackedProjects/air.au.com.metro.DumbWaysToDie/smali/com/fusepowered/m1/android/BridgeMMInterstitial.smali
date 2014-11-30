.class Lcom/fusepowered/m1/android/BridgeMMInterstitial;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMInterstitial.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 18
    return-void
.end method

.method private getExpandExtrasIntent(Ljava/lang/String;Lcom/fusepowered/m1/android/OverlaySettings;)Landroid/content/Intent;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/fusepowered/m1/android/OverlaySettings;

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 181
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    :cond_0
    const-string v1, "settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    const-string v1, "internalId"

    iget-wide v2, p2, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method private isForcingOrientation(Lcom/fusepowered/m1/android/MMJSResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/fusepowered/m1/android/MMJSResponse;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    iget v1, p1, Lcom/fusepowered/m1/android/MMJSResponse;->result:I

    if-ne v1, v3, :cond_2

    iget-object v1, p1, Lcom/fusepowered/m1/android/MMJSResponse;->response:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 223
    iget-object v0, p1, Lcom/fusepowered/m1/android/MMJSResponse;->response:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, "result":Ljava/lang/String;
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 226
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 224
    goto :goto_0

    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 226
    goto :goto_0
.end method

.method private setAllowOrientationChange(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "allowOrientationChange"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "allowOrientationChange":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->getBaseActivity()Lcom/fusepowered/m1/android/AdViewOverlayActivity;

    move-result-object v2

    .line 236
    .local v2, "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    if-eqz v2, :cond_0

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 239
    .local v1, "canOrientationChange":Z
    invoke-virtual {v2, v1}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setAllowOrientationChange(Z)V

    .line 240
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 243
    .end local v1    # "canOrientationChange":Z
    .end local v2    # "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setForceOrientation(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "portrait"

    const-string v3, "landscape"

    .line 248
    const-string v2, "forceOrientation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, "forceOrientation":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->getBaseActivity()Lcom/fusepowered/m1/android/AdViewOverlayActivity;

    move-result-object v1

    .line 253
    .local v1, "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    if-eqz v1, :cond_1

    .line 255
    const-string v2, "portrait"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientationPortrait()V

    .line 258
    const-string v2, "portrait"

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 268
    .end local v1    # "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    :goto_0
    return-object v2

    .line 260
    .restart local v1    # "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    :cond_0
    const-string v2, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientationLandscape()V

    .line 263
    const-string v2, "landscape"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 268
    .end local v1    # "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 48
    .local v1, "mmWebView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getMMLayout()Lcom/fusepowered/m1/android/MMLayout;

    move-result-object v0

    .line 51
    .local v0, "layout":Lcom/fusepowered/m1/android/MMLayout;
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->closeAreaTouched()V

    .line 52
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 54
    .end local v0    # "layout":Lcom/fusepowered/m1/android/MMLayout;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public expandToExternalBrowser(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->open(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public expandWithProperties(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "PROPERTY_BANNER_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 93
    .local v9, "isBanner":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 95
    const-string v21, "Cannot expand a non banner ad"

    invoke-static/range {v21 .. v21}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v21

    .line 173
    .end local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v21

    .line 98
    .restart local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v21, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 99
    .local v18, "url":Ljava/lang/String;
    const-string v21, "transparent"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 100
    .local v17, "transparent":Ljava/lang/String;
    const-string v21, "useCustomClose"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 101
    .local v19, "useCustomClose":Ljava/lang/String;
    const-string v21, "transition"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 102
    .local v15, "transition":Ljava/lang/String;
    const-string v21, "orientation"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 103
    .local v11, "orientation":Ljava/lang/String;
    const-string v21, "transitionDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 104
    .local v16, "transitionDuration":Ljava/lang/String;
    const-string v21, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 105
    .local v8, "height":Ljava/lang/String;
    const-string v21, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 106
    .local v20, "width":Ljava/lang/String;
    const-string v21, "modal"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 107
    .local v10, "modal":Ljava/lang/String;
    const-string v21, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 108
    .local v7, "creatorAdImplId":Ljava/lang/String;
    const-string v21, "allowOrientationChange"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    .local v5, "allowOrientationChange":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 110
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_d

    .line 112
    new-instance v12, Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-direct {v12}, Lcom/fusepowered/m1/android/OverlaySettings;-><init>()V

    .line 113
    .local v12, "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    if-eqz v18, :cond_1

    .line 115
    move-object/from16 v0, v18

    move-object v1, v12

    iput-object v0, v1, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    .line 117
    :cond_1
    if-eqz v7, :cond_2

    .line 119
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object v2, v12

    iput-wide v0, v2, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    .line 121
    :cond_2
    if-eqz v17, :cond_3

    .line 123
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/OverlaySettings;->setIsTransparent(Z)V

    .line 125
    :cond_3
    if-eqz v19, :cond_4

    .line 127
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/OverlaySettings;->setUseCustomClose(Z)V

    .line 129
    :cond_4
    if-eqz v15, :cond_5

    .line 131
    invoke-virtual {v12, v15}, Lcom/fusepowered/m1/android/OverlaySettings;->setTransition(Ljava/lang/String;)V

    .line 133
    :cond_5
    if-eqz v5, :cond_6

    .line 135
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object v1, v12

    iput-boolean v0, v1, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 137
    :cond_6
    if-nez v11, :cond_7

    .line 139
    const-string v21, "forceOrientation"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "orientation":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 141
    .restart local v11    # "orientation":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    .line 143
    iput-object v11, v12, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 145
    :cond_8
    if-eqz v8, :cond_9

    .line 147
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v12

    iput v0, v1, Lcom/fusepowered/m1/android/OverlaySettings;->height:I

    .line 149
    :cond_9
    if-eqz v20, :cond_a

    .line 151
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v12

    iput v0, v1, Lcom/fusepowered/m1/android/OverlaySettings;->width:I

    .line 153
    :cond_a
    if-eqz v10, :cond_b

    .line 155
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object v1, v12

    iput-boolean v0, v1, Lcom/fusepowered/m1/android/OverlaySettings;->modal:Z

    .line 157
    :cond_b
    if-eqz v16, :cond_c

    .line 161
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v13, v21, v23

    .line 162
    .local v13, "transTimeMillis":J
    invoke-virtual {v12, v13, v14}, Lcom/fusepowered/m1/android/OverlaySettings;->setTransitionDurationInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v13    # "transTimeMillis":J
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->getExpandExtrasIntent(Ljava/lang/String;Lcom/fusepowered/m1/android/OverlaySettings;)Landroid/content/Intent;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 169
    const-string v21, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v3

    .line 170
    .local v3, "adImplId":J
    invoke-static {v6, v3, v4}, Lcom/fusepowered/m1/android/MMSDK$Event;->overlayOpenedBroadCast(Landroid/content/Context;J)V

    .line 171
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v21

    goto/16 :goto_0

    .line 173
    .end local v3    # "adImplId":J
    .end local v12    # "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    .restart local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 163
    .restart local v12    # "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    :catch_0
    move-exception v21

    goto :goto_1
.end method

.method public open(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "url"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 67
    .local v2, "context":Landroid/content/Context;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 69
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "PROPERTY_EXPANDING"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 72
    .local v0, "adImplId":J
    const-string v5, "browser"

    invoke-static {v2, v5, v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 73
    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v5

    .line 76
    .end local v0    # "adImplId":J
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setOrientation(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->setForceOrientation(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    .line 212
    .local v0, "response":Lcom/fusepowered/m1/android/MMJSResponse;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->isForcingOrientation(Lcom/fusepowered/m1/android/MMJSResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->setAllowOrientationChange(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    .line 216
    :cond_1
    return-object v0
.end method

.method public show(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "url"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 30
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 36
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public useCustomClose(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMInterstitial;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 193
    .local v0, "mmWebView":Lcom/fusepowered/m1/android/MMWebView;
    const-string v3, "useCustomClose"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "useCustomClose":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 196
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getAdViewOverlayView()Lcom/fusepowered/m1/android/AdViewOverlayView;

    move-result-object v1

    .line 199
    .local v1, "overlayView":Lcom/fusepowered/m1/android/AdViewOverlayView;
    if-eqz v1, :cond_0

    .line 201
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setUseCustomClose(Z)V

    .line 202
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 206
    .end local v1    # "overlayView":Lcom/fusepowered/m1/android/AdViewOverlayView;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
