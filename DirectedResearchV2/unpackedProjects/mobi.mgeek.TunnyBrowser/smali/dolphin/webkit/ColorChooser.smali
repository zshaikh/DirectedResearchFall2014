.class public Ldolphin/webkit/ColorChooser;
.super Landroid/os/Handler;
.source "ColorChooser.java"

# interfaces
.implements Ldolphin/webkit/be;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field private a:Ldolphin/webkit/bb;

.field private b:Ldolphin/util/j;

.field private mNativeClass:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewCore;I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    const/16 v0, 0x64

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Ldolphin/webkit/WebViewCore;->getWebViewClassic()Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 56
    invoke-virtual {p0, v0}, Ldolphin/webkit/ColorChooser;->sendMessage(Landroid/os/Message;)Z

    .line 58
    invoke-direct {p0}, Ldolphin/webkit/ColorChooser;->a()V

    .line 59
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ldolphin/webkit/ba;

    invoke-direct {v0, p0}, Ldolphin/webkit/ba;-><init>(Ldolphin/webkit/ColorChooser;)V

    iput-object v0, p0, Ldolphin/webkit/ColorChooser;->b:Ldolphin/util/j;

    .line 80
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ColorChooser;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ldolphin/webkit/ColorChooser;->nativeDidEndChooser()V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ColorChooser;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ldolphin/webkit/ColorChooser;->nativeDidChooseColor(I)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ldolphin/webkit/ColorChooser;->a:Ldolphin/webkit/bb;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ldolphin/webkit/ColorChooser;->a:Ldolphin/webkit/bb;

    invoke-virtual {v0}, Ldolphin/webkit/bb;->dismiss()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/ColorChooser;->a:Ldolphin/webkit/bb;

    .line 128
    :cond_0
    return-void
.end method

.method private native nativeDidChooseColor(I)V
.end method

.method private native nativeDidEndChooser()V
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Ldolphin/webkit/ColorChooser;->b:Ldolphin/util/j;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 134
    iget-object v1, p0, Ldolphin/webkit/ColorChooser;->b:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void
.end method

.method public deleteChooser()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 94
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Ldolphin/webkit/ColorChooser;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method

.method public endChooser()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 89
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Ldolphin/webkit/ColorChooser;->sendEmptyMessage(I)Z

    .line 90
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 104
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 105
    new-instance v2, Ldolphin/webkit/bb;

    invoke-direct {v2, v0, p0, v1}, Ldolphin/webkit/bb;-><init>(Landroid/content/Context;Ldolphin/webkit/be;I)V

    iput-object v2, p0, Ldolphin/webkit/ColorChooser;->a:Ldolphin/webkit/bb;

    .line 106
    iget-object v0, p0, Ldolphin/webkit/ColorChooser;->a:Ldolphin/webkit/bb;

    invoke-virtual {v0}, Ldolphin/webkit/bb;->show()V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-direct {p0}, Ldolphin/webkit/ColorChooser;->b()V

    .line 113
    iget-object v0, p0, Ldolphin/webkit/ColorChooser;->b:Ldolphin/util/j;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-direct {p0}, Ldolphin/webkit/ColorChooser;->b()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSelectedColor(I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ldolphin/webkit/ColorChooser;->sendEmptyMessage(I)Z

    .line 85
    return-void
.end method
