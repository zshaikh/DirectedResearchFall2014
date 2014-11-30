.class public final enum Lcom/nativex/monetization/enums/BannerPosition;
.super Ljava/lang/Enum;
.source "BannerPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/enums/BannerPosition$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/BannerPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/BannerPosition;

.field public static final enum BOTTOM:Lcom/nativex/monetization/enums/BannerPosition;

.field private static PHONE_LANDSCAPE_HEIGHT:I

.field private static PHONE_LANDSCAPE_WIDTH:I

.field private static PHONE_PORTRAIT_HEIGHT:I

.field private static PHONE_PORTRAIT_WIDTH:I

.field private static TABLET_LANDSCAPE_HEIGHT:I

.field private static TABLET_LANDSCAPE_WIDTH:I

.field private static TABLET_PORTRAIT_HEIGHT:I

.field private static TABLET_PORTRAIT_WIDTH:I

.field public static final enum TOP:Lcom/nativex/monetization/enums/BannerPosition;

.field private static initialized:Z

.field private static isTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/nativex/monetization/enums/BannerPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/nativex/monetization/enums/BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/enums/BannerPosition;->TOP:Lcom/nativex/monetization/enums/BannerPosition;

    .line 11
    new-instance v0, Lcom/nativex/monetization/enums/BannerPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/nativex/monetization/enums/BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/enums/BannerPosition;->BOTTOM:Lcom/nativex/monetization/enums/BannerPosition;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nativex/monetization/enums/BannerPosition;

    sget-object v1, Lcom/nativex/monetization/enums/BannerPosition;->TOP:Lcom/nativex/monetization/enums/BannerPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nativex/monetization/enums/BannerPosition;->BOTTOM:Lcom/nativex/monetization/enums/BannerPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nativex/monetization/enums/BannerPosition;->$VALUES:[Lcom/nativex/monetization/enums/BannerPosition;

    .line 13
    sput-boolean v2, Lcom/nativex/monetization/enums/BannerPosition;->initialized:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public static final initialize(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42840000

    .line 27
    sget-boolean v1, Lcom/nativex/monetization/enums/BannerPosition;->initialized:Z

    if-nez v1, :cond_0

    .line 28
    sput-boolean v6, Lcom/nativex/monetization/enums/BannerPosition;->initialized:Z

    .line 29
    invoke-static {p0}, Lcom/nativex/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/nativex/monetization/ui/DeviceScreenSize;

    move-result-object v0

    .line 30
    .local v0, "screenSize":Lcom/nativex/monetization/ui/DeviceScreenSize;
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDiagonalInches()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4016000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    move v1, v6

    :goto_0
    sput-boolean v1, Lcom/nativex/monetization/enums/BannerPosition;->isTablet:Z

    .line 31
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    const/high16 v2, 0x43a00000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_PORTRAIT_WIDTH:I

    .line 32
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    const/high16 v2, 0x42480000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_PORTRAIT_HEIGHT:I

    .line 33
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    const/high16 v2, 0x43f00000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_LANDSCAPE_WIDTH:I

    .line 34
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    const/high16 v2, 0x42000000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_LANDSCAPE_HEIGHT:I

    .line 35
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    const/high16 v2, 0x44400000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_PORTRAIT_WIDTH:I

    .line 36
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_PORTRAIT_HEIGHT:I

    .line 37
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    const/high16 v2, 0x44800000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_LANDSCAPE_WIDTH:I

    .line 38
    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    sput v1, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_LANDSCAPE_HEIGHT:I

    .line 41
    .end local v0    # "screenSize":Lcom/nativex/monetization/ui/DeviceScreenSize;
    :cond_0
    return-void

    .line 30
    .restart local v0    # "screenSize":Lcom/nativex/monetization/ui/DeviceScreenSize;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isInitialized()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/nativex/monetization/enums/BannerPosition;->initialized:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/BannerPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/nativex/monetization/enums/BannerPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/BannerPosition;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/BannerPosition;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/nativex/monetization/enums/BannerPosition;->$VALUES:[Lcom/nativex/monetization/enums/BannerPosition;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/BannerPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/BannerPosition;

    return-object v0
.end method


# virtual methods
.method public calculateSize(IIII)Landroid/graphics/Rect;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 53
    sub-int v3, p3, p1

    .line 54
    .local v3, "screenWidth":I
    sub-int v2, p4, p2

    .line 55
    .local v2, "screenHeight":I
    if-le v3, v2, :cond_1

    .line 57
    sget-boolean v5, Lcom/nativex/monetization/enums/BannerPosition;->isTablet:Z

    if-eqz v5, :cond_0

    .line 58
    sget v4, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_LANDSCAPE_WIDTH:I

    .line 59
    .local v4, "width":I
    sget v0, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_LANDSCAPE_HEIGHT:I

    .line 74
    .local v0, "height":I
    :goto_0
    const/4 v1, 0x0

    .line 75
    .local v1, "l":I
    if-ge v4, v3, :cond_3

    .line 76
    sub-int v5, v3, v4

    div-int/lit8 v1, v5, 0x2

    .line 80
    :goto_1
    sget-object v5, Lcom/nativex/monetization/enums/BannerPosition$1;->$SwitchMap$com$nativex$monetization$enums$BannerPosition:[I

    invoke-virtual {p0}, Lcom/nativex/monetization/enums/BannerPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 83
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    add-int v7, v1, v4

    invoke-direct {v5, v1, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    :goto_2
    return-object v5

    .line 61
    .end local v0    # "height":I
    .end local v1    # "l":I
    .end local v4    # "width":I
    :cond_0
    sget v4, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_LANDSCAPE_WIDTH:I

    .line 62
    .restart local v4    # "width":I
    sget v0, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_LANDSCAPE_HEIGHT:I

    .restart local v0    # "height":I
    goto :goto_0

    .line 66
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_1
    sget-boolean v5, Lcom/nativex/monetization/enums/BannerPosition;->isTablet:Z

    if-eqz v5, :cond_2

    .line 67
    sget v4, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_PORTRAIT_WIDTH:I

    .line 68
    .restart local v4    # "width":I
    sget v0, Lcom/nativex/monetization/enums/BannerPosition;->TABLET_PORTRAIT_HEIGHT:I

    .restart local v0    # "height":I
    goto :goto_0

    .line 70
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_2
    sget v4, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_PORTRAIT_WIDTH:I

    .line 71
    .restart local v4    # "width":I
    sget v0, Lcom/nativex/monetization/enums/BannerPosition;->PHONE_PORTRAIT_HEIGHT:I

    .restart local v0    # "height":I
    goto :goto_0

    .line 78
    .restart local v1    # "l":I
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 86
    :pswitch_0
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, p4, v0

    add-int v7, v1, v4

    invoke-direct {v5, v1, v6, v7, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
