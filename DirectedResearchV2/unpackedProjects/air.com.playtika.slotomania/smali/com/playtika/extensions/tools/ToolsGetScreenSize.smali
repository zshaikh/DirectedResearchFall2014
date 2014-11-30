.class public Lcom/playtika/extensions/tools/ToolsGetScreenSize;
.super Ljava/lang/Object;
.source "ToolsGetScreenSize.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-wide/high16 v11, 0x4000000000000000L

    .line 14
    const/4 v2, 0x0

    .line 16
    .local v2, "result":Lcom/adobe/fre/FREObject;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 19
    .local v5, "x":D
    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    iget v10, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 20
    .local v7, "y":D
    add-double v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 23
    .local v3, "screenInches":D
    :try_start_0
    invoke-static {v3, v4}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 27
    :goto_0
    return-object v2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
