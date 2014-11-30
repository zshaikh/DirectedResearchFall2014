.class public Lcom/nativex/monetization/mraid/MRAIDHandler;
.super Landroid/os/Handler;
.source "MRAIDHandler.java"


# static fields
.field public static final MSG_CLOSE:I = 0xc9

.field public static final MSG_EXPAND:I = 0xca

.field public static final MSG_LOG:I = 0xd0

.field public static final MSG_OPEN:I = 0xc8

.field public static final MSG_PLAY_VIDEO:I = 0xce

.field public static final MSG_RESIZE:I = 0xcf

.field public static final MSG_SET_EXPANDED_PROPERTIES:I = 0xcb

.field public static final MSG_SET_ORIENTATION_PROPERTIES:I = 0xcc

.field public static final MSG_SET_RESIZE_PROPERTIES:I = 0xcd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :pswitch_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
