.class Lcom/nativex/monetization/mraid/JSIAdToDevice;
.super Ljava/lang/Object;
.source "JSIAdToDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    }
.end annotation


# static fields
.field private static final MSG_AD_CONVERTED:I = 0x3f7

.field private static final MSG_CLOSE:I = 0x3e9

.field private static final MSG_CREATE_CALENDAR_EVENT:I = 0x3f3

.field private static final MSG_EXPAND:I = 0x3ea

.field private static final MSG_LOADED:I = 0x3f0

.field private static final MSG_LOG:I = 0x3ef

.field private static final MSG_OPEN:I = 0x3e8

.field private static final MSG_PLAY_VIDEO:I = 0x3f1

.field private static final MSG_RESIZE:I = 0x3ee

.field private static final MSG_SET_EXPAND_PROPERTIES:I = 0x3eb

.field private static final MSG_SET_ORIENTATION_PROPERTIES:I = 0x3ec

.field private static final MSG_SET_PAGE_SIZE:I = 0x3f6

.field private static final MSG_SET_RESIZE_PROPERTIES:I = 0x3ed

.field private static final MSG_STORE_PICTURE:I = 0x3f2

.field private static final MSG_USE_CUSTOM_CLOSE:I = 0x3f4

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private jsiHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/nativex/monetization/mraid/JSIAdToDevice$1;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$1;-><init>()V

    sput-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->jsiHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    .line 108
    return-void
.end method

.method private createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->jsiHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    if-eqz v1, :cond_0

    .line 200
    new-instance v0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    invoke-direct {v0, p0, v2}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;-><init>(Lcom/nativex/monetization/mraid/JSIAdToDevice;Lcom/nativex/monetization/mraid/JSIAdToDevice$1;)V

    .line 201
    .local v0, "handlerData":Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    # setter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$002(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->jsiHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    # setter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$102(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-object v1, v0

    .line 205
    .end local v0    # "handlerData":Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public adConverted()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public close()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 182
    return-void
.end method

.method public expand()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public loaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public resize()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lcom/nativex/monetization/mraid/JSIAdToDevice;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method
