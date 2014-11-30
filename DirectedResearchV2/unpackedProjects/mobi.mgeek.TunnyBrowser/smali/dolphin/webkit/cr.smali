.class Ldolphin/webkit/cr;
.super Landroid/os/Handler;
.source "GeolocationPermissionsClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/GeolocationPermissionsClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/GeolocationPermissionsClassic;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ldolphin/webkit/cr;->a:Ldolphin/webkit/GeolocationPermissionsClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 80
    const-string v1, "origins"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 81
    const-string v2, "callback"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 82
    invoke-interface {v0, v1}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 86
    const-string v1, "allowed"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 87
    const-string v2, "callback"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 88
    invoke-interface {v0, v1}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
