.class Ldolphin/webkit/ke;
.super Ldolphin/util/j;
.source "WebViewCore.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/kd;


# direct methods
.method constructor <init>(Ldolphin/webkit/kd;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Ldolphin/webkit/ke;->a:Ldolphin/webkit/kd;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 892
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 954
    :goto_0
    return-void

    .line 894
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebViewCore;

    .line 895
    # invokes: Ldolphin/webkit/WebViewCore;->initialize()V
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$500(Ldolphin/webkit/WebViewCore;)V

    goto :goto_0

    .line 900
    :sswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 906
    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 911
    :sswitch_3
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_0
    sget-object v1, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :sswitch_4
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_1
    sget-object v1, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :sswitch_5
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_2

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_2
    sget-object v1, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/net/ProxyProperties;

    invoke-virtual {v1, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->a(Ldolphin/net/ProxyProperties;)V

    goto :goto_0

    .line 935
    :sswitch_6
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_3

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_3
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/JWebCoreJavaBridge;->nativePerformWebCoreThreadTask(I)V

    goto :goto_0

    .line 945
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 946
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 950
    :sswitch_8
    # invokes: Ldolphin/webkit/WebViewCore;->nativeCertTrustChanged()V
    invoke-static {}, Ldolphin/webkit/WebViewCore;->access$600()V

    .line 951
    invoke-static {}, Ldolphin/net/http/CertificateChainValidator;->b()V

    goto :goto_0

    .line 892
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb -> :sswitch_6
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
        0xc5 -> :sswitch_7
        0xdc -> :sswitch_8
    .end sparse-switch
.end method
