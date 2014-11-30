.class final Ldolphin/webkit/eh;
.super Landroid/os/Handler;
.source "JWebCoreJavaBridge.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 113
    :pswitch_1
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ldolphin/webkit/JWebCoreJavaBridge;->a(Ldolphin/webkit/JWebCoreJavaBridge;I)V

    goto :goto_0

    .line 116
    :pswitch_2
    invoke-static {}, Ldolphin/webkit/JWebCoreJavaBridge;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    .line 117
    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Ldolphin/webkit/R$string;->flash_not_response:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->flash_stops_working:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->flash_wait:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ej;

    invoke-direct {v2, p0}, Ldolphin/webkit/ej;-><init>(Ldolphin/webkit/eh;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->flash_close:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ei;

    invoke-direct {v2, p0}, Ldolphin/webkit/ei;-><init>(Ldolphin/webkit/eh;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
