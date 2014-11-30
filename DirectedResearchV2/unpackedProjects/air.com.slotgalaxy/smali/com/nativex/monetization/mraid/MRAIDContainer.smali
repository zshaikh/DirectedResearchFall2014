.class Lcom/nativex/monetization/mraid/MRAIDContainer;
.super Landroid/view/ViewGroup;
.source "MRAIDContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDContainer$6;
    }
.end annotation


# static fields
.field public static final DELAY_BRING_TO_FRONT:J = 0x64L

.field public static final DELAY_REATTACH:J = 0x28L

.field private static final MRAID_INTERFACE_NAME:Ljava/lang/String; = "nativeXSDK"

.field public static final MSG_BRING_TO_FRONT:I = 0x3e8

.field public static final MSG_CLOSE_ANIMATION_END:I = 0x3eb

.field public static final MSG_CLOSE_ANIMATION_MIN_DURATION:J = 0x1f4L

.field public static final MSG_LOAD_AD_DATA:I = 0x3ea

.field public static final MSG_REATTACH:I = 0x3e9

.field private static final REATTACH_RETRY_COUNT:I = 0x14

.field private static closeRegionSize:I

.field static final handler:Landroid/os/Handler;


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityClassName:Ljava/lang/String;

.field private adConverted:Z

.field private adExpired:Z

.field private adFinishedLoading:Z

.field private adIsCached:Z

.field private adIsPending:Z

.field private adName:Ljava/lang/String;

.field private adToDeviceHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

.field private adToDeviceInterface:Lcom/nativex/monetization/mraid/JSIAdToDevice;

.field private attemptedReleaseCount:I

.field private bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

.field private closeIndicatorIsVisible:Z

.field private closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field private closePositionChanged:Z

.field private closeRect:Landroid/graphics/Rect;

.field private closeRegion:Landroid/widget/ImageView;

.field private containerName:Ljava/lang/String;

.field private currentPosition:Lcom/nativex/monetization/mraid/objects/CurrentPosition;

.field private defaultActivityOrientation:I

.field private defaultPosition:Lcom/nativex/monetization/mraid/objects/DefaultPosition;

.field private detachedFromActivity:Z

.field private deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

.field private dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

.field private didFireDisplayListener:Z

.field private expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

.field private inlinePageHeight:I

.field private lastEventLevel:I

.field private maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

.field private mraidLoaded:Z

.field private oldHeight:I

.field private oldWidth:I

.field private onCloseClicked:Landroid/view/View$OnClickListener;

.field private onRichMediaEvent:Lcom/nativex/monetization/listeners/OnAdEvent;

.field private orientationProperties:Lcom/nativex/monetization/mraid/objects/OrientationProperties;

.field private placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

.field private position:Lcom/nativex/monetization/mraid/AdPosition;

.field private released:Z

.field private resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

.field private schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

.field private secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

.field private state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

.field private statsDTimestamp:J

.field private tempRect:Landroid/graphics/Rect;

.field private url:Ljava/lang/String;

.field private webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

.field private workers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/mraid/MRAIDDialogWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1416
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer$4;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer$4;-><init>()V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 87
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 90
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachedFromActivity:Z

    .line 91
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 92
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 94
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .line 98
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 101
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 102
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 103
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 104
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 105
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 106
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    .line 120
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 121
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 123
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z

    .line 124
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 125
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 126
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 128
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 129
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J

    .line 132
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 159
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 87
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 90
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachedFromActivity:Z

    .line 91
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 92
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 94
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .line 98
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 101
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 102
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 103
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 104
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 105
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 106
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    .line 120
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 121
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 123
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z

    .line 124
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 125
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 126
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 128
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 129
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J

    .line 132
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 148
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 87
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 90
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachedFromActivity:Z

    .line 91
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 92
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 94
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .line 98
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 101
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 102
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 103
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 104
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 105
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 106
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    .line 120
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 121
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 123
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z

    .line 124
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 125
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 126
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 128
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 129
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J

    .line 132
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 143
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 87
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 90
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachedFromActivity:Z

    .line 91
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 92
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 94
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .line 98
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z

    .line 101
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    .line 102
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 103
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 104
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 105
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 106
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    .line 120
    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 121
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 123
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z

    .line 124
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 125
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 126
    iput-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 128
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 129
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J

    .line 132
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    .line 153
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->init(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->loadAdUrl(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/MRAIDUtils$States;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)Lcom/nativex/monetization/mraid/MRAIDUtils$States;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "x1"    # Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/JSIDeviceToAd;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nativex/monetization/mraid/MRAIDContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/nativex/monetization/mraid/MRAIDContainer;)I
    .locals 2
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/nativex/monetization/mraid/MRAIDContainer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/listeners/OnAdEvent;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onRichMediaEvent:Lcom/nativex/monetization/listeners/OnAdEvent;

    return-object v0
.end method

.method private addCloseRegion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 246
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->bringChildToFront(Landroid/view/View;)V

    .line 266
    return-void

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 249
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    .line 254
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attachToCurrentActivity(I)Z
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 398
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eq v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismiss()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->createDialog()Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 404
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdCached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->show()V

    .line 407
    :cond_1
    iput-boolean v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z

    move v0, v5

    .line 419
    :goto_0
    return v0

    .line 411
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachFromParent()V

    .line 412
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 414
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 418
    :cond_3
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->sendReattachMessage(I)V

    move v0, v4

    .line 419
    goto :goto_0
.end method

.method private canFireEvent(Lcom/nativex/monetization/enums/AdEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/nativex/monetization/enums/AdEvent;

    .prologue
    const/4 v2, 0x1

    .line 1609
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/AdEvent;->getEventLevel()I

    move-result v0

    if-gez v0, :cond_0

    move v0, v2

    .line 1614
    :goto_0
    return v0

    .line 1611
    :cond_0
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/AdEvent;->getEventLevel()I

    move-result v0

    iget v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    if-le v0, v1, :cond_1

    move v0, v2

    .line 1612
    goto :goto_0

    .line 1614
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeCloseIndicatorBackground()V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "closeDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->getThemeElementType()Lcom/nativex/monetization/theme/ThemeElementTypes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_DEFAULT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    return-void
.end method

.method private closeAd()V
    .locals 1

    .prologue
    .line 1214
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 1215
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted:Z

    if-eqz v0, :cond_0

    .line 1216
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->getDeviceBalance()V

    .line 1218
    :cond_0
    return-void
.end method

.method private createDialog()Lcom/nativex/monetization/mraid/MRAIDDialog;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDDialog;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 429
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    return-object v0
.end method

.method private declared-synchronized doRelease()V
    .locals 6

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 837
    :goto_0
    monitor-exit p0

    return-void

    .line 796
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 799
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Not on UI thread"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->onReleaseFailed(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 835
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->onReleaseFailed(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 793
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 802
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    .line 803
    .local v0, "currentActivity":Landroid/app/Activity;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    .line 804
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    .line 805
    .local v3, "worker":Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->release()V

    goto :goto_1

    .line 807
    .end local v3    # "worker":Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    :cond_2
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 808
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->removeAllViews()V

    .line 809
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v4, :cond_3

    .line 810
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/MRAIDWebView;->release()V

    .line 812
    :cond_3
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v4, :cond_4

    .line 813
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/MRAIDWebView;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 816
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v4, v5, :cond_5

    .line 817
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachFromParent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 822
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 823
    :try_start_5
    iget v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 824
    instance-of v4, v0, Lcom/nativex/monetization/activities/InterstitialActivity;

    if-eqz v4, :cond_6

    .line 825
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 828
    :cond_6
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    if-eqz v4, :cond_7

    .line 829
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismiss()V

    .line 831
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Ad released"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 833
    sget-object v4, Lcom/nativex/monetization/enums/AdEvent;->DISMISSED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v5, "Ad is dismissed"

    invoke-virtual {p0, v4, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 819
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const-string p1, ""

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPageSize()V
    .locals 2

    .prologue
    .line 1326
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 1327
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const-string v1, "nativeXSizeScript"

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setJsObjectName(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 1329
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setActivity(Landroid/app/Activity;)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setWillNotDraw(Z)V

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    .line 193
    sget v0, Lcom/nativex/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 194
    new-instance v0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adToDeviceHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    .line 195
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adToDeviceHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-direct {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;-><init>(Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    .line 196
    new-instance v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adToDeviceHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-direct {v0, v1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;-><init>(Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adToDeviceInterface:Lcom/nativex/monetization/mraid/JSIAdToDevice;

    .line 197
    new-instance v0, Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    .line 199
    new-instance v0, Lcom/nativex/monetization/mraid/AdPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nativex/monetization/mraid/AdPosition;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    .line 200
    new-instance v0, Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/objects/MaxSize;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    .line 201
    new-instance v0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    .line 202
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 203
    new-instance v0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/objects/CurrentPosition;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    .line 205
    new-instance v0, Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nativex/monetization/custom/views/CustomImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;)V

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    .line 208
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 209
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 212
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 213
    invoke-static {p1}, Lcom/nativex/monetization/enums/BannerPosition;->initialize(Landroid/app/Activity;)V

    .line 214
    return-void
.end method

.method private isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 519
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 520
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isResizePropertiesValid()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1054
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    if-nez v4, :cond_0

    .line 1055
    const-string v4, "Resize properties null."

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    move v4, v7

    .line 1126
    :goto_0
    return v4

    .line 1058
    :cond_0
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1059
    const-string v4, "The WebView cannot be smaller than the close region."

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    move v4, v7

    .line 1060
    goto :goto_0

    .line 1062
    :cond_1
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 1063
    :cond_2
    const-string v4, "The WebView could not be bigger than the screen when resized."

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    move v4, v7

    .line 1064
    goto :goto_0

    .line 1066
    :cond_3
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 1067
    const-string v4, "The resize() method should not be used to expand fullscreen, please use expand()"

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    move v4, v7

    .line 1068
    goto :goto_0

    .line 1070
    :cond_4
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getCheckRect(Lcom/nativex/monetization/mraid/MRAIDWebView;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1071
    .local v3, "resizeRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->allowOffscreen()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1072
    const/4 v0, 0x1

    .line 1073
    .local v0, "closeIsOnScreen":Z
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$ClosePosition:[I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getCustomClosePosition()Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1108
    :pswitch_0
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 1109
    :cond_5
    const/4 v0, 0x0

    .line 1121
    :cond_6
    :goto_1
    if-nez v0, :cond_f

    .line 1122
    const-string v4, "Close region must be on screen"

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    move v4, v7

    .line 1123
    goto/16 :goto_0

    .line 1075
    :pswitch_1
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_7

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_6

    .line 1076
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 1080
    :pswitch_2
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_8

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 1081
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 1085
    :pswitch_3
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_9

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_9

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 1088
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 1092
    :pswitch_4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 1093
    .local v1, "posX":I
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 1094
    .local v2, "posY":I
    if-ltz v1, :cond_a

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 1095
    :cond_a
    const/4 v0, 0x0

    .line 1097
    :cond_b
    if-ltz v2, :cond_c

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 1098
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1102
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    :pswitch_5
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_d

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_6

    .line 1103
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1113
    :pswitch_6
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_e

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_e

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 1116
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1126
    .end local v0    # "closeIsOnScreen":Z
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private onCloseAnimationEnd()V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->doRelease()V

    .line 893
    return-void
.end method

.method private onReleaseFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v2, "["

    .line 841
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->attemptedReleaseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to release the ad failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 843
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 847
    :goto_1
    return-void

    .line 842
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 845
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Ad failed to release."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private removeCloseRegion()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 270
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :cond_0
    :pswitch_0
    return-void

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendBringToFrontMessage()V
    .locals 4

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_1

    .line 1400
    :cond_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1401
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1403
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendReattachMessage(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 437
    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    .line 438
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 440
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setCloseRegionPosition(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "adPosition"    # Landroid/graphics/Rect;

    .prologue
    .line 663
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$ClosePosition:[I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {v5}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 701
    :pswitch_0
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    .line 702
    .local v1, "l":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 703
    .local v3, "t":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 704
    .local v2, "r":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 714
    .local v0, "b":I
    :goto_0
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 715
    return-void

    .line 665
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 666
    .restart local v1    # "l":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 667
    .restart local v3    # "t":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 668
    .restart local v2    # "r":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 669
    .restart local v0    # "b":I
    goto :goto_0

    .line 672
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    .line 673
    .restart local v1    # "l":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 674
    .restart local v3    # "t":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 675
    .restart local v2    # "r":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 676
    .restart local v0    # "b":I
    goto :goto_0

    .line 679
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_3
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 680
    .restart local v1    # "l":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 681
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 682
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 683
    .restart local v0    # "b":I
    goto :goto_0

    .line 686
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_4
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 687
    .restart local v1    # "l":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 688
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 689
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 690
    .restart local v0    # "b":I
    goto/16 :goto_0

    .line 693
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 694
    .restart local v1    # "l":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 695
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 696
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 697
    .restart local v0    # "b":I
    goto/16 :goto_0

    .line 708
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :pswitch_6
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 709
    .restart local v1    # "l":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 710
    .restart local v3    # "t":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 711
    .restart local v2    # "r":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .restart local v0    # "b":I
    goto/16 :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private setDefaultPosition()V
    .locals 3

    .prologue
    .line 1333
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    if-nez v1, :cond_0

    .line 1334
    new-instance v1, Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    invoke-direct {v1}, Lcom/nativex/monetization/mraid/objects/DefaultPosition;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    .line 1335
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->setPosition(Lcom/nativex/monetization/mraid/MRAIDWebView;)V

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setDefaultPosition(Lcom/nativex/monetization/mraid/objects/DefaultPosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :goto_0
    return-void

    .line 1338
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setDeviceFeatures()V
    .locals 3

    .prologue
    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setDeviceFeatures(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MRAID loaded: Activity instance lost."

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setMaxSize()V
    .locals 3

    .prologue
    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    if-nez v1, :cond_0

    .line 1160
    new-instance v1, Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-direct {v1}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    .line 1161
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setModal(Ljava/lang/Boolean;)V

    .line 1162
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setHeight(Ljava/lang/Integer;)V

    .line 1165
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setWidth(Ljava/lang/Integer;)V

    .line 1166
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setMaxSize(Lcom/nativex/monetization/mraid/objects/MaxSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1167
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setPlacementType()V
    .locals 3

    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setPlacementType(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1184
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setScreenSize()V
    .locals 7

    .prologue
    .line 1200
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1202
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v1

    .line 1203
    .local v1, "height":I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v4

    .line 1204
    .local v4, "width":I
    new-instance v3, Lcom/nativex/monetization/mraid/objects/ScreenSize;

    invoke-direct {v3}, Lcom/nativex/monetization/mraid/objects/ScreenSize;-><init>()V

    .line 1205
    .local v3, "screenSize":Lcom/nativex/monetization/mraid/objects/ScreenSize;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/mraid/objects/ScreenSize;->setWidth(Ljava/lang/Integer;)V

    .line 1206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/mraid/objects/ScreenSize;->setHeight(Ljava/lang/Integer;)V

    .line 1207
    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v5, v3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setScreenSize(Lcom/nativex/monetization/mraid/objects/ScreenSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    .end local v1    # "height":I
    .end local v2    # "manager":Landroid/view/WindowManager;
    .end local v3    # "screenSize":Lcom/nativex/monetization/mraid/objects/ScreenSize;
    .end local v4    # "width":I
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    sget-object v6, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v0, v6}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method private setSizes()V
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    if-eqz v0, :cond_0

    .line 1152
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setMaxSize()V

    .line 1153
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setScreenSize()V

    .line 1155
    :cond_0
    return-void
.end method

.method private setWebViewLayout(Lcom/nativex/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "webView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p2, "layout"    # Landroid/graphics/Rect;

    .prologue
    .line 650
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 653
    :try_start_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDWebView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to layout the RichMedia webview."

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method adConverted()V
    .locals 1

    .prologue
    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted:Z

    .line 1629
    return-void
.end method

.method addCalendarEntry(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    .locals 3
    .param p1, "entry"    # Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 1450
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->isSupported(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;->createCalendarWorker(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1453
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1454
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method attachToActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_0

    instance-of v1, p1, Lcom/nativex/monetization/activities/InterstitialActivity;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    move-object v0, p1

    .line 384
    .local v0, "parent":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setActivity(Landroid/app/Activity;)V

    .line 389
    :goto_0
    if-eqz v0, :cond_1

    .line 390
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z

    .line 393
    .end local v0    # "parent":Landroid/app/Activity;
    :cond_1
    return-void

    .line 387
    .restart local v0    # "parent":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public bringToFront()V
    .locals 0

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->sendBringToFrontMessage()V

    .line 1395
    invoke-super {p0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 1396
    return-void
.end method

.method changeOrientation()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->changeOrientation(Lcom/nativex/monetization/mraid/objects/OrientationProperties;)V

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    const-string v0, "OrientationProperties are null"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method changeOrientation(Lcom/nativex/monetization/mraid/objects/OrientationProperties;)V
    .locals 8
    .param p1, "orientationProperties"    # Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x1

    .line 897
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 942
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->getForceOrientation()Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    move-result-object v0

    .line 902
    .local v0, "forcedOrientation":Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    if-eq v0, v4, :cond_1

    .line 903
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$Orientation:[I

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 921
    :cond_1
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->getAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 922
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 923
    .local v1, "orientation":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 924
    .local v3, "rotation":I
    iget v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    .line 925
    .local v2, "orientationToSet":I
    packed-switch v1, :pswitch_data_1

    .line 938
    :goto_1
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 905
    .end local v1    # "orientation":I
    .end local v2    # "orientationToSet":I
    .end local v3    # "rotation":I
    :pswitch_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_2

    .line 906
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 912
    :pswitch_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_3

    .line 913
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 915
    :cond_3
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 927
    .restart local v1    # "orientation":I
    .restart local v2    # "orientationToSet":I
    .restart local v3    # "rotation":I
    :pswitch_2
    if-eqz v3, :cond_4

    if-ne v3, v6, :cond_5

    .line 928
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 930
    :cond_5
    const/16 v2, 0x8

    .line 931
    goto :goto_1

    .line 933
    :pswitch_3
    if-eqz v3, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 934
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 936
    :cond_7
    const/16 v2, 0x9

    goto :goto_1

    .line 940
    .end local v1    # "orientation":I
    .end local v2    # "orientationToSet":I
    .end local v3    # "rotation":I
    :cond_8
    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    iget v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 903
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 925
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 954
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 979
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeAd()V

    .line 986
    :goto_0
    return-void

    .line 956
    :pswitch_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v1, v2, :cond_0

    .line 957
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->removeView(Landroid/view/View;)V

    .line 958
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;I)V

    .line 959
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->bringChildToFront(Landroid/view/View;)V

    .line 960
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 964
    :cond_0
    :pswitch_1
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 965
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->COLLAPSED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "The ad was returned to default state from being expanded or resized"

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    .line 967
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setClosePosition(Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;)V

    .line 968
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->removeCloseRegion()V

    .line 969
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultActivityOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 972
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/AdPosition;->setForcedPosition(Landroid/graphics/Rect;)V

    .line 973
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 974
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 975
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught in close()"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 984
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v3, v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWebView;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, "webView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setSchemeHandler(Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;)V

    .line 223
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adToDeviceInterface:Lcom/nativex/monetization/mraid/JSIAdToDevice;

    const-string v2, "nativeXSDK"

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 225
    return-object v0
.end method

.method detachFromParent()V
    .locals 1

    .prologue
    .line 372
    const-string v0, "Detaching container"

    invoke-static {v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dialogDismissed()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 424
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 991
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_1

    .line 992
    const-string v1, "Ad is interstitial"

    const/4 v2, 0x0

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    .line 996
    invoke-static {p1}, Lcom/nativex/common/Utilities;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->removeView(Landroid/view/View;)V

    .line 998
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-nez v1, :cond_2

    .line 999
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->createWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 1001
    :cond_2
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;I)V

    .line 1002
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 1003
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V

    .line 1011
    :goto_1
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 1012
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->EXPANDED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "The ad was expanded"

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->bringToFront()V

    .line 1014
    sget v1, Lcom/nativex/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->changeOrientation()V

    .line 1016
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 1017
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1018
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v4, v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v1, :cond_4

    .line 1006
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->release()V

    .line 1008
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 1009
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v1, v2, v3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "command"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1, p2, p3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 789
    :goto_0
    return-void

    .line 781
    :cond_0
    if-nez p2, :cond_1

    .line 782
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1, p1, p3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 787
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MRAID: MRAIDWebView reference lost."

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 784
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Lcom/nativex/monetization/enums/AdEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1594
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->canFireEvent(Lcom/nativex/monetization/enums/AdEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->registerEvent(Lcom/nativex/monetization/enums/AdEvent;)V

    .line 1596
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDContainer$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer$5;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    :cond_0
    monitor-exit p0

    return-void

    .line 1594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method forceAdPosition(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/mraid/AdPosition;->setForcedPosition(Landroid/graphics/Rect;)V

    .line 720
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 721
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 722
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerPosition()Lcom/nativex/monetization/enums/BannerPosition;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    return-object v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->containerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->containerName:Ljava/lang/String;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->containerName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 1363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    goto :goto_0
.end method

.method getCustomClosePosition()Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getCustomClosePosition()Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v0

    .line 1240
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    goto :goto_0
.end method

.method getPlacementType()Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    return-object v0
.end method

.method getState()Lcom/nativex/monetization/mraid/MRAIDUtils$States;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    return-object v0
.end method

.method hideCloseIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    .line 230
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdCached()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    return v0
.end method

.method isAdExpired()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    return v0
.end method

.method isAdLoaded()Z
    .locals 1

    .prologue
    .line 1539
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    return v0
.end method

.method public isAdPending()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsPending:Z

    return v0
.end method

.method isAttachedTo(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 565
    :goto_0
    return v0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 565
    goto :goto_0
.end method

.method isDetachedFromActivity()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachedFromActivity:Z

    return v0
.end method

.method isSecondPartWebView(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z
    .locals 1
    .param p1, "mraidWebView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v0, p1, :cond_0

    .line 1533
    const/4 v0, 0x1

    .line 1535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAdUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-nez v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 452
    const-string v1, "Container not attached to activity, could not load the ad"

    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 472
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->createWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    .line 456
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setVisibility(I)V

    .line 458
    sget v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    if-nez v1, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x42480000

    invoke-static {v1, v2}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v1

    sput v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;)V

    .line 463
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Ad Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V

    .line 465
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->url:Ljava/lang/String;

    .line 466
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Error while downloading the ad"

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 469
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 470
    const-string v1, "Unable to create WebView"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadData(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1550
    packed-switch p1, :pswitch_data_0

    .line 1562
    :cond_0
    sget-object v0, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "Error while downloading the ad"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1563
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 1566
    :goto_0
    return-void

    .line 1552
    :pswitch_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadDownloadedData()V

    goto :goto_0

    .line 1556
    :pswitch_1
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadDownloadedData()V

    goto :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 340
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 341
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-nez v2, :cond_3

    .line 342
    :cond_0
    const-string v2, "Attached to window"

    invoke-static {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 343
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAdCancel(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 344
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    .line 345
    .local v1, "worker":Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->showDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 347
    .end local v1    # "worker":Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    :cond_1
    iget-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdCached()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 353
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-void

    .line 350
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 357
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 358
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    :cond_0
    :try_start_0
    const-string v3, "Detached from window"

    invoke-static {p0, v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 361
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAdDelayed(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 362
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    .line 363
    .local v2, "worker":Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "worker":Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception caught while detaching from windonw. Probably already detached"

    invoke-static {v3, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 488
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 513
    :goto_0
    return v2

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_4

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 494
    .local v0, "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v0, v2, :cond_2

    .line 496
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 497
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v4

    .line 501
    goto :goto_0

    .line 503
    .end local v0    # "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_4
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    .line 504
    .local v1, "webView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    if-eqz v1, :cond_6

    invoke-direct {p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 507
    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->USER_TOUCH:Lcom/nativex/monetization/enums/AdEvent;

    const-string v3, "The user touched the banner"

    invoke-virtual {p0, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 509
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 513
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 594
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 595
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 596
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/nativex/monetization/mraid/AdPosition;->validateCustomPosition(Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 598
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_4

    .line 599
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/nativex/monetization/enums/BannerPosition;->calculateSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 608
    .local v0, "adPosition":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer$6;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$States:[I

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 628
    iget-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    if-eqz v1, :cond_1

    .line 629
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-direct {p0, v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/nativex/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 632
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 636
    :goto_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_5

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 641
    :goto_2
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->setCurrentPosition(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    invoke-virtual {p0, v7}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setCurrentPosition(Z)V

    .line 645
    .end local v0    # "adPosition":Landroid/graphics/Rect;
    :cond_3
    return-void

    .line 601
    :cond_4
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/AdPosition;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 602
    .restart local v0    # "adPosition":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 604
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 605
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 610
    :pswitch_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-direct {p0, v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/nativex/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 611
    invoke-direct {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setCloseRegionPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 615
    :pswitch_1
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-direct {p0, v1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/nativex/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 616
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 620
    :pswitch_2
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 621
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setWebViewLayout(Lcom/nativex/monetization/mraid/MRAIDWebView;Landroid/graphics/Rect;)V

    .line 622
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 639
    :cond_5
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_2

    .line 608
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000

    .line 728
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_3

    .line 729
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v3

    .line 730
    .local v3, "webView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    if-eqz v3, :cond_2

    .line 731
    const/4 v5, 0x0

    .line 732
    .local v5, "widthSpec":I
    const/4 v2, 0x0

    .line 734
    .local v2, "heightSpec":I
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v7, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v7, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v6, v7, :cond_6

    .line 735
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 736
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 752
    :cond_1
    :goto_0
    invoke-virtual {v3, v5, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->measure(II)V

    .line 754
    .end local v2    # "heightSpec":I
    .end local v5    # "widthSpec":I
    :cond_2
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    sget v7, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    sget v8, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegionSize:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->measure(II)V

    .line 757
    .end local v3    # "webView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 758
    .local v4, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 760
    .local v1, "height":I
    iget v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldWidth:I

    if-ne v6, v4, :cond_4

    iget v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldHeight:I

    if-eq v6, v1, :cond_5

    .line 761
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 762
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    int-to-float v7, v1

    invoke-static {v7}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nativex/monetization/mraid/objects/MaxSize;->setHeight(Ljava/lang/Integer;)V

    .line 763
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    int-to-float v7, v4

    invoke-static {v7}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nativex/monetization/mraid/objects/MaxSize;->setWidth(Ljava/lang/Integer;)V

    .line 764
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setSizes()V

    .line 766
    :cond_5
    iput v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldWidth:I

    .line 767
    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->oldHeight:I

    .line 768
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 769
    .restart local v5    # "widthSpec":I
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 770
    .restart local v2    # "heightSpec":I
    invoke-super {p0, v5, v2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 772
    return-void

    .line 737
    .end local v1    # "height":I
    .end local v4    # "width":I
    .restart local v3    # "webView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_6
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v7, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v6, v7, :cond_7

    .line 738
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Lcom/nativex/monetization/mraid/AdPosition;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 739
    .local v0, "adPosition":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 740
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    .line 742
    .end local v0    # "adPosition":Landroid/graphics/Rect;
    :cond_7
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    if-eqz v6, :cond_8

    .line 743
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {v6, v10, v10, v7, v8}, Lcom/nativex/monetization/enums/BannerPosition;->calculateSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 747
    .restart local v0    # "adPosition":Landroid/graphics/Rect;
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_1

    .line 748
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 749
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto/16 :goto_0

    .line 745
    .end local v0    # "adPosition":Landroid/graphics/Rect;
    :cond_8
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Lcom/nativex/monetization/mraid/AdPosition;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "adPosition":Landroid/graphics/Rect;
    goto :goto_1
.end method

.method public onMraidLoaded()V
    .locals 2

    .prologue
    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->mraidLoaded:Z

    .line 1131
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPageSize()V

    .line 1132
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setMraidLoaded()V

    .line 1133
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setVisibility(I)V

    .line 1134
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setDeviceFeatures()V

    .line 1135
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setSizes()V

    .line 1136
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setPlacementType()V

    .line 1137
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1138
    return-void
.end method

.method onPageFinished()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1261
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 1262
    .local v0, "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    if-nez v0, :cond_1

    .line 1263
    const-string v2, "WebView reference lost"

    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1264
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 1323
    .end local v0    # "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_0
    :goto_0
    return-void

    .line 1267
    .restart local v0    # "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_1
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->isAdLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1268
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v0, v2, :cond_3

    .line 1269
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setDefaultPosition()V

    .line 1270
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setCurrentPosition()V

    .line 1271
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 1272
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->DEFAULT:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    .line 1273
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPageSize()V

    .line 1284
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setVisibility(I)V

    .line 1285
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setAdLoaded()V

    .line 1286
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    .line 1287
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->READY:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->fireEvent(Lcom/nativex/monetization/mraid/MRAIDUtils$Events;)V

    .line 1288
    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v3, "Ad finished downloading"

    invoke-virtual {p0, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 1290
    iget-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    if-nez v2, :cond_8

    .line 1291
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_7

    .line 1292
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1293
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 1294
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->createDialog()Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 1295
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDDialog;->show()V

    .line 1310
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1311
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 1315
    :goto_3
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1316
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1317
    iget-wide v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1318
    const-string v2, "RichMedia"

    iget-wide v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->statsDTimestamp:J

    invoke-static {v2, v3, v4}, Lcom/nativex/common/StatsDManager;->recordTime(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1320
    .end local v0    # "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1321
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v6, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto/16 :goto_0

    .line 1274
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v0, v2, :cond_4

    .line 1275
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 1276
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setCurrentPosition()V

    .line 1277
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3, v4}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    .line 1278
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3, v4}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    goto/16 :goto_1

    .line 1280
    :cond_4
    const-string v2, "Invalid WebView loaded"

    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1281
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto/16 :goto_0

    .line 1296
    :cond_5
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/nativex/monetization/activities/InterstitialActivity;

    if-eqz v2, :cond_6

    .line 1297
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z

    goto :goto_2

    .line 1299
    :cond_6
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/nativex/monetization/manager/ActivityManager;->startMRAIDInterstitial(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1302
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_2

    .line 1305
    :cond_8
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1306
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_2

    .line 1313
    :cond_9
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showCloseIndicator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 529
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v1, v4

    .line 548
    :goto_1
    return v1

    .line 533
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 534
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_2

    .line 539
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v4

    .line 540
    goto :goto_1

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 543
    .local v0, "webView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isClickInChildRegion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v4

    .line 545
    goto :goto_1

    .line 548
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method playVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1374
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/nativex/monetization/manager/ActivityManager;->startMRAIDVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public declared-synchronized registerCallId(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1586
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CALL_RECEIVED:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 1587
    .local v0, "instance":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    monitor-exit p0

    return-void

    .line 1586
    .end local v0    # "instance":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method registerEvent(Lcom/nativex/monetization/enums/AdEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/nativex/monetization/enums/AdEvent;

    .prologue
    .line 1619
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/AdEvent;->getEventLevel()I

    move-result v0

    iget v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->lastEventLevel:I

    .line 1620
    return-void
.end method

.method release()V
    .locals 4

    .prologue
    .line 850
    iget-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->released:Z

    if-eqz v2, :cond_0

    .line 889
    :goto_0
    return-void

    .line 854
    :cond_0
    move-object v0, p0

    .line 855
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :try_start_0
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/nativex/monetization/mraid/MRAIDContainer$2;

    invoke-direct {v3, p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer$2;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 887
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to release ad"

    invoke-static {p0, v2, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reload()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v3

    .line 1516
    :goto_0
    return v1

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v1, v2, :cond_2

    .line 1497
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->removeView(Landroid/view/View;)V

    .line 1498
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addView(Landroid/view/View;I)V

    .line 1500
    :cond_2
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 1501
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 1502
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    .line 1503
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 1504
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-eqz v1, :cond_3

    .line 1505
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->secondPartWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 1507
    :cond_3
    new-instance v1, Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    invoke-direct {v1}, Lcom/nativex/monetization/mraid/objects/CurrentPosition;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    .line 1508
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 1509
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 1510
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->defaultPosition:Lcom/nativex/monetization/mraid/objects/DefaultPosition;

    .line 1511
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1512
    goto :goto_0

    .line 1513
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1514
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while reloading the ad"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v3

    .line 1516
    goto :goto_0
.end method

.method resize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1027
    :try_start_0
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v2, v3, :cond_1

    .line 1028
    const-string v2, "Ad is interstitial"

    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v2, v3, :cond_2

    .line 1032
    const-string v1, "WebView is expanded, cannot resize"

    .line 1033
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 1034
    const/4 v2, 0x0

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1048
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v6, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0

    .line 1037
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isResizePropertiesValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getCustomClosePosition()Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setClosePosition(Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;)V

    .line 1039
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    iget-object v5, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->maxSize:Lcom/nativex/monetization/mraid/objects/MaxSize;

    invoke-virtual {v3, v4, v5}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->getPositionRect(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/objects/MaxSize;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/AdPosition;->setForcedPosition(Landroid/graphics/Rect;)V

    .line 1040
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    iput-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    .line 1041
    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->RESIZED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v3, "The ad was resized"

    invoke-virtual {p0, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1042
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setState(Lcom/nativex/monetization/mraid/MRAIDUtils$States;)V

    .line 1043
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->bringToFront()V

    .line 1044
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addCloseRegion()V

    .line 1045
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1046
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
    .locals 4
    .param p1, "instance"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 1248
    .local v0, "commandWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDContainer$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->post(Ljava/lang/Runnable;)Z

    .line 1257
    .end local v0    # "commandWebView":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :goto_0
    return-void

    .line 1255
    :cond_0
    const-string v1, "WebView reference lost"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->getCommand()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public sendLoadDataMessage(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    .locals 4
    .param p1, "wv"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    const/4 v3, 0x0

    .line 1544
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->webView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    if-ne v1, p1, :cond_0

    move v0, v3

    .line 1545
    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1546
    return-void

    .line 1544
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activity:Landroid/app/Activity;

    .line 554
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->activityClassName:Ljava/lang/String;

    .line 555
    return-void
.end method

.method setAdCached(Z)V
    .locals 2
    .param p1, "isCached"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adIsCached:Z

    .line 169
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adFinishedLoading:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->createDialog()Lcom/nativex/monetization/mraid/MRAIDDialog;

    .line 172
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialog:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->show()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method setAdExpired(Z)V
    .locals 0
    .param p1, "isExpired"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adExpired:Z

    .line 186
    return-void
.end method

.method public setAdName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->adName:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setAdPosition(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    .line 575
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/mraid/AdPosition;->setCustomPosition(Landroid/graphics/Rect;)V

    .line 576
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 577
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 578
    return-void
.end method

.method public setBannerPosition(Lcom/nativex/monetization/enums/BannerPosition;)V
    .locals 2
    .param p1, "bannerPosition"    # Lcom/nativex/monetization/enums/BannerPosition;

    .prologue
    .line 1637
    if-eqz p1, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->position:Lcom/nativex/monetization/mraid/AdPosition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/AdPosition;->setCustomPosition(Landroid/graphics/Rect;)V

    .line 1640
    :cond_0
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->bannerPosition:Lcom/nativex/monetization/enums/BannerPosition;

    .line 1641
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1642
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1643
    return-void
.end method

.method setClosePosition(Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;)V
    .locals 1
    .param p1, "position"    # Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    if-eq v0, p1, :cond_0

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    .line 479
    :cond_0
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePosition:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 480
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closePositionChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->changeCloseIndicatorBackground()V

    .line 483
    :cond_1
    return-void
.end method

.method setCurrentPosition()V
    .locals 1

    .prologue
    .line 1344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setCurrentPosition(Z)V

    .line 1345
    return-void
.end method

.method setCurrentPosition(Z)V
    .locals 3
    .param p1, "resetPosition"    # Z

    .prologue
    .line 1350
    if-eqz p1, :cond_0

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->setCurrentPosition(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->currentPosition:Lcom/nativex/monetization/mraid/objects/CurrentPosition;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setCurrentPosition(Lcom/nativex/monetization/mraid/objects/CurrentPosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1355
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method setExpandProperties(Lcom/nativex/monetization/mraid/objects/ExpandProperties;)V
    .locals 0
    .param p1, "props"    # Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    .line 1191
    return-void
.end method

.method setIsViewable(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->setIsViewable(Z)V

    .line 1369
    return-void

    .line 1368
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnRichMediaEventListener(Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 0
    .param p1, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->onRichMediaEvent:Lcom/nativex/monetization/listeners/OnAdEvent;

    .line 1625
    return-void
.end method

.method setOrientationProperties(Lcom/nativex/monetization/mraid/objects/OrientationProperties;)V
    .locals 2
    .param p1, "props"    # Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->orientationProperties:Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    .line 1223
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v0, v1, :cond_1

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->changeOrientation()V

    .line 1226
    :cond_1
    return-void
.end method

.method setPageSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 1144
    iput p2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->inlinePageHeight:I

    .line 1145
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->postInvalidate()V

    .line 1146
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->requestLayout()V

    .line 1148
    :cond_0
    return-void
.end method

.method public setPlacementType(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 1
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->placementType:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .line 326
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne p1, v0, :cond_0

    .line 327
    sget v0, Lcom/nativex/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    .line 332
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method setResizeProperties(Lcom/nativex/monetization/mraid/objects/ResizeProperties;)V
    .locals 0
    .param p1, "props"    # Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->resizeProperties:Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    .line 1196
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    .line 1571
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1572
    if-nez p1, :cond_0

    .line 1573
    iget-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    if-nez v1, :cond_0

    .line 1574
    iput-boolean v3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->didFireDisplayListener:Z

    .line 1575
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->DISPLAYED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Ad displayed"

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getCurrentWebView()Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-result-object v0

    .line 1579
    .local v0, "currentWebView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1580
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setIsViewable(Z)V

    .line 1582
    :cond_1
    return-void

    .line 1580
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showCloseIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 235
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->changeCloseIndicatorBackground()V

    .line 239
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeRegion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 240
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->closeIndicatorIsVisible:Z

    goto :goto_0
.end method

.method showJSDialog(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/webkit/JsResult;
    .param p4, "action"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .prologue
    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;->createJSDialogWorker(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :goto_0
    return-void

    .line 1465
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1466
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create JS dialog"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method storePicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1473
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->isSupported(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;->createStorePictureWorker(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1476
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1477
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v1, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method trackClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1528
    return-void
.end method

.method trackVideo(Ljava/lang/String;F)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->deviceToAdHandler:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-virtual {v0, p1, p2}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->trackVideo(Ljava/lang/String;F)V

    .line 1523
    return-void
.end method

.method useCustomClose(Z)V
    .locals 2
    .param p1, "useCustomClose"    # Z

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->expandProperties:Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 1383
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v0, v1, :cond_0

    .line 1384
    if-eqz p1, :cond_1

    .line 1385
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->hideCloseIndicator()V

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->RESIZED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->state:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->LOADING:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-eq v0, v1, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->showCloseIndicator()V

    goto :goto_0
.end method

.method public workerDone(Lcom/nativex/monetization/mraid/MRAIDDialogWorker;)V
    .locals 2
    .param p1, "worker"    # Lcom/nativex/monetization/mraid/MRAIDDialogWorker;

    .prologue
    .line 1484
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer;->workers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1485
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    :goto_0
    return-void

    .line 1486
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1487
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to release a worker"

    invoke-static {p0, v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
