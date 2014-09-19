.class public Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDisplayProperty"
.end annotation


# static fields
.field private static final DISPLAY_DIAGONAL:I = 0x0

.field private static final DISPLAY_DPI:I = 0x1

.field private static final DISPLAY_HEIGHT:I = 0x2

.field private static final DISPLAY_HEIGHT_INCHES:I = 0x3

.field private static final DISPLAY_WIDTH:I = 0x4

.field private static final DISPLAY_WIDTH_INCHES:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDiagonal(Landroid/util/DisplayMetrics;)D
    .locals 8
    .parameter "displayMetrics"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getWidthInches(Landroid/util/DisplayMetrics;)D

    move-result-wide v2

    .line 148
    .local v2, widthInches:D
    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getHeightInches(Landroid/util/DisplayMetrics;)D

    move-result-wide v0

    .line 149
    .local v0, heightInches:D
    mul-double v4, v2, v2

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private getDisplayProperty(Landroid/view/Display;I)D
    .locals 3
    .parameter "display"
    .parameter "propertyId"

    .prologue
    .line 126
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    packed-switch p2, :pswitch_data_0

    .line 136
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    .line 130
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getDiagonal(Landroid/util/DisplayMetrics;)D

    move-result-wide v1

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getDpi(Landroid/util/DisplayMetrics;)D

    move-result-wide v1

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getHeight(Landroid/util/DisplayMetrics;)D

    move-result-wide v1

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getHeightInches(Landroid/util/DisplayMetrics;)D

    move-result-wide v1

    goto :goto_0

    .line 134
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getWidth(Landroid/util/DisplayMetrics;)D

    move-result-wide v1

    goto :goto_0

    .line 135
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getWidthInches(Landroid/util/DisplayMetrics;)D

    move-result-wide v1

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getDpi(Landroid/util/DisplayMetrics;)D
    .locals 6
    .parameter "displayMetrics"

    .prologue
    .line 141
    iget v4, p1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v0, v4

    .line 142
    .local v0, dpiX:D
    iget v4, p1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v2, v4

    .line 143
    .local v2, dpiY:D
    mul-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private getHeight(Landroid/util/DisplayMetrics;)D
    .locals 2
    .parameter "displayMetrics"

    .prologue
    .line 153
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method private getHeightInches(Landroid/util/DisplayMetrics;)D
    .locals 4
    .parameter "displayMetrics"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getHeight(Landroid/util/DisplayMetrics;)D

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getDpi(Landroid/util/DisplayMetrics;)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getWidth(Landroid/util/DisplayMetrics;)D
    .locals 2
    .parameter "displayMetrics"

    .prologue
    .line 161
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method private getWidthInches(Landroid/util/DisplayMetrics;)D
    .locals 4
    .parameter "displayMetrics"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getWidth(Landroid/util/DisplayMetrics;)D

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getDpi(Landroid/util/DisplayMetrics;)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private onError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 170
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .parameter "context"
    .parameter "args"

    .prologue
    .line 108
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-static {v6}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->getAsInt(Lcom/adobe/fre/FREObject;)I

    move-result v4

    .line 110
    .local v4, propertyId:I
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, display:Landroid/view/Display;
    invoke-direct {p0, v0, v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->getDisplayProperty(Landroid/view/Display;I)D

    move-result-wide v2

    .line 114
    .local v2, property:D
    const/4 v5, 0x0

    .line 117
    .local v5, result:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v2, v3}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 122
    :goto_0
    return-object v5

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v6, "ERROR: FREWrongThreadException in DeviceInfoGetDisplayProperty#call"

    invoke-direct {p0, v6}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
