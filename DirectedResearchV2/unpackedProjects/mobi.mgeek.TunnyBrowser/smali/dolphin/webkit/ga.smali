.class Ldolphin/webkit/ga;
.super Ldolphin/util/j;
.source "Predictor.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/Predictor;


# direct methods
.method constructor <init>(Ldolphin/webkit/Predictor;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Ldolphin/webkit/ga;->a:Ldolphin/webkit/Predictor;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    # getter for: Ldolphin/webkit/Predictor;->sPrefetchFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$400()Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ldolphin/webkit/BrowserFrame;

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/BrowserFrame;-><init>(Landroid/content/Context;)V

    # setter for: Ldolphin/webkit/Predictor;->sPrefetchFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/Predictor;->access$402(Ldolphin/webkit/BrowserFrame;)Ldolphin/webkit/BrowserFrame;

    .line 159
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    # invokes: Ldolphin/webkit/Predictor;->nativePrefetchUrl(Ljava/lang/String;)V
    invoke-static {v0}, Ldolphin/webkit/Predictor;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_1
    # getter for: Ldolphin/webkit/Predictor;->sPrefetchFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$400()Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Ldolphin/webkit/Predictor;->nativeCancelPrefetchUrl(Ljava/lang/String;)V
    invoke-static {v0}, Ldolphin/webkit/Predictor;->access$200(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
