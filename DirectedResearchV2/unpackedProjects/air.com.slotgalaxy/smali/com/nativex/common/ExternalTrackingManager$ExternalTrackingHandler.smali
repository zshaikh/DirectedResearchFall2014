.class Lcom/nativex/common/ExternalTrackingManager$ExternalTrackingHandler;
.super Landroid/os/Handler;
.source "ExternalTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/common/ExternalTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalTrackingHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/common/ExternalTrackingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/common/ExternalTrackingManager$1;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/nativex/common/ExternalTrackingManager$ExternalTrackingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 192
    :pswitch_0
    # invokes: Lcom/nativex/common/ExternalTrackingManager;->track()V
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->access$400()V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x51acf
        :pswitch_0
    .end packed-switch
.end method
