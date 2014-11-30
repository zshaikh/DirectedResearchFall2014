.class final Ldolphin/util/r;
.super Landroid/os/Handler;
.source "Tracker.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/util/s;

    invoke-static {v0}, Ldolphin/util/Tracker;->summarizeEvent(Ldolphin/util/s;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
    .end packed-switch
.end method
