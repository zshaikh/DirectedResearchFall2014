.class public Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;
.super Lcom/inmobi/androidsdk/ai/controller/JSController;
.source "JSDisplayController.java"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/JSController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    .line 43
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 44
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    .line 46
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    .line 49
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "InMobiAndroidSDK_3.6.2"

    .line 104
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 106
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 107
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 108
    const v4, 0x1020002

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 114
    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    .line 115
    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getWhetherTablet(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 117
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    move v0, v5

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-boolean v7, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    :cond_1
    move v1, v0

    .line 123
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Device current rotation: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Density of device: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 126
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 127
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 128
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 129
    iput v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 130
    iput v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 132
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 132
    iput v0, v4, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    .line 135
    if-eqz v1, :cond_2

    if-ne v1, v8, :cond_c

    .line 136
    :cond_2
    const-string v0, "portrait"

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 154
    :goto_0
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    if-lez v0, :cond_3

    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    if-gtz v0, :cond_4

    .line 155
    :cond_3
    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 156
    iput v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 157
    iput-boolean v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 160
    :cond_4
    if-eqz v1, :cond_5

    if-ne v1, v8, :cond_d

    .line 161
    :cond_5
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 162
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 168
    :goto_1
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device Width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Device height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int v0, v3, v0

    .line 172
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    if-le v1, v2, :cond_6

    iput v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 173
    :cond_6
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    if-le v1, v0, :cond_7

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 175
    :cond_7
    new-array v1, v8, [I

    .line 176
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLocationOnScreen([I)V

    .line 177
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    if-gez v3, :cond_8

    .line 178
    aget v3, v1, v5

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 179
    :cond_8
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    if-gez v3, :cond_9

    .line 180
    aget v3, v1, v7

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 181
    const-string v3, "InMobiAndroidSDK_3.6.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "topStuff: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    const-string v4, " ,bottomStuff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v6, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_9
    const-string v3, "InMobiAndroidSDK_3.6.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loc 0: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loc 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, v1, v7

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 188
    if-gez v1, :cond_a

    .line 189
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 190
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    if-gez v1, :cond_a

    .line 191
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 192
    iput v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 197
    :cond_a
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 198
    if-gez v0, :cond_b

    .line 199
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 200
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    if-gez v0, :cond_b

    .line 201
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 202
    iput v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 205
    :cond_b
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 206
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 207
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "final expanded width after density : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string v1, "final expanded height after density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "portrait width requested :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, "portrait height requested :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object p1

    .line 138
    :cond_c
    const-string v0, "landscape"

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    goto/16 :goto_0

    .line 164
    :cond_d
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 165
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    goto/16 :goto_1
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    .locals 1

    .prologue
    .line 322
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 323
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 324
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 325
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 326
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 327
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 328
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    .line 329
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    .line 330
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    .line 331
    iget-object v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    .line 332
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    .line 333
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 334
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 335
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 336
    iget-boolean v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    iput-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 337
    iget-object v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 338
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 339
    iget v0, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 340
    return-void
.end method


# virtual methods
.method public acceptAction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->acceptAction(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 356
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "JSDisplayController-> close"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v3, "InMobiAndroidSDK_3.6.2"

    .line 261
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSDisplayController-> expand: url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "JSDisplayController-> Already expanded state"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    .line 270
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_2

    .line 271
    const-string v0, "window.mraidview.fireErrorEvent(\"Current state is not default\", \"expand\")"

    .line 273
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->postInjectJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Exception while expanding the ad. "

    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 276
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_3

    .line 277
    const-string v0, "window.mraidview.fireErrorEvent(\"Expand cannot be called on interstitial ad\", \"expand\")"

    .line 279
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->postInjectJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V

    .line 283
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> At the time of expand the properties are: Expandable width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string v2, " Expandable height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    const-string v2, " Expandable orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    const-string v2, " Expandable lock orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    const-string v2, " Expandable Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    const-string v2, " Expandable Use custom close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->lockExpandOrientation(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V

    .line 309
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->expand(Ljava/lang/String;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 423
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getCurrentRotation(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSDisplayController-> getOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    const-string v1, "-1"

    .line 429
    const-string v2, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 412
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "JSDisplayController-> getPlacementType"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getPlacementType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 87
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "JSDisplayController-> getState"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isViewable()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 407
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "JSDisplayController-> isViewable"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v0

    return v0
.end method

.method public onOrientationChange()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->onOrientationEventChange()V

    .line 317
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 82
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> open: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->openURL(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public rejectAction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->rejectAction(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 222
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    const-class v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 222
    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 225
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> ExpandProperties is set: Expandable Width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Expandable height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Expandable orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Expandable lock orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    const-string v2, " Expandable Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    const-string v2, " Expandable Use Custom close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->expProps:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while setting the expand properties "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 347
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSDisplayController-> useCustomClose"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setCustomClose(Z)V

    .line 349
    return-void
.end method
