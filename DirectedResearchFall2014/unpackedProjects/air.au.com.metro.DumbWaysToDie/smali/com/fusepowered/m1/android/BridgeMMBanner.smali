.class Lcom/fusepowered/m1/android/BridgeMMBanner;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMBanner.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->getDpiHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->getDpiWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resize(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 19
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
    .line 26
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m1/android/BridgeMMBanner;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fusepowered/m1/android/MMWebView;

    .line 27
    .local v15, "mmWebView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v15, :cond_5

    .line 29
    invoke-virtual {v15}, Lcom/fusepowered/m1/android/MMWebView;->isMraidResized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const-string v3, "State is currently resized"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 61
    .end local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 31
    .restart local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "width"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 32
    .local v18, "widthArg":Ljava/lang/String;
    const-string v3, "height"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 34
    .local v13, "heightArg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 35
    .local v4, "width":I
    const/4 v5, 0x0

    .line 36
    .local v5, "height":I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v4, v3

    .line 38
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v5, v3

    .line 41
    :cond_2
    const-string v3, "customClosePosition"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 42
    .local v6, "customClosePosition":Ljava/lang/String;
    const-string v3, "offsetX"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 43
    .local v16, "offsetXArg":Ljava/lang/String;
    const-string v3, "offsetY"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 44
    .local v17, "offsetYArg":Ljava/lang/String;
    const/4 v8, 0x0

    .line 45
    .local v8, "offsetY":I
    const/4 v7, 0x0

    .line 46
    .local v7, "offsetX":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v8, v3

    .line 48
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 49
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v7, v3

    .line 51
    :cond_4
    const-string v3, "allowOffscreen"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 52
    .local v9, "allowOffScreen":Z
    invoke-virtual {v15}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 53
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Lcom/fusepowered/m1/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 55
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/BridgeMMBanner;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    .line 56
    .local v10, "xMax":I
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/BridgeMMBanner;->getScreenHeight(Landroid/content/Context;)I

    move-result v11

    .line 57
    .local v11, "yMax":I
    new-instance v2, Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v3, v14, Landroid/util/DisplayMetrics;->density:F

    invoke-direct/range {v2 .. v11}, Lcom/fusepowered/m1/android/DTOResizeParameters;-><init>(FIILjava/lang/String;IIZII)V

    .line 58
    .local v2, "resizeParams":Lcom/fusepowered/m1/android/DTOResizeParameters;
    invoke-virtual {v15, v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidResize(Lcom/fusepowered/m1/android/DTOResizeParameters;)V

    .line 59
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 61
    .end local v2    # "resizeParams":Lcom/fusepowered/m1/android/DTOResizeParameters;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "customClosePosition":Ljava/lang/String;
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    .end local v9    # "allowOffScreen":Z
    .end local v10    # "xMax":I
    .end local v11    # "yMax":I
    .end local v12    # "context":Landroid/content/Context;
    .end local v13    # "heightArg":Ljava/lang/String;
    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .end local v16    # "offsetXArg":Ljava/lang/String;
    .end local v17    # "offsetYArg":Ljava/lang/String;
    .end local v18    # "widthArg":Ljava/lang/String;
    .restart local p1    # "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
