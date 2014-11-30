.class Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
.super Ljava/lang/Object;
.source "JSIAdToDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/JSIAdToDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerData"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

.field final synthetic this$0:Lcom/nativex/monetization/mraid/JSIAdToDevice;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/mraid/JSIAdToDevice;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->this$0:Lcom/nativex/monetization/mraid/JSIAdToDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/mraid/JSIAdToDevice;Lcom/nativex/monetization/mraid/JSIAdToDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/mraid/JSIAdToDevice;
    .param p2, "x1"    # Lcom/nativex/monetization/mraid/JSIAdToDevice$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;-><init>(Lcom/nativex/monetization/mraid/JSIAdToDevice;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    .param p1, "x1"    # Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    return-object p1
.end method
