.class Ldolphin/webkit/cs;
.super Ldolphin/util/j;
.source "GeolocationPermissionsClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/GeolocationPermissionsClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/GeolocationPermissionsClassic;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Ldolphin/webkit/cs;->a:Ldolphin/webkit/GeolocationPermissionsClassic;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->d()Ljava/util/Set;

    move-result-object v1

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string v3, "callback"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "origins"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Ldolphin/webkit/cs;->a:Ldolphin/webkit/GeolocationPermissionsClassic;

    const/4 v1, 0x0

    invoke-static {v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Ldolphin/webkit/GeolocationPermissionsClassic;Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 117
    const-string v1, "origin"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    const-string v2, "callback"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 119
    invoke-static {v1}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Ljava/lang/String;)Z

    move-result v1

    .line 120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v3, "callback"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "allowed"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Ldolphin/webkit/cs;->a:Ldolphin/webkit/GeolocationPermissionsClassic;

    const/4 v1, 0x1

    invoke-static {v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Ldolphin/webkit/GeolocationPermissionsClassic;Landroid/os/Message;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->e()V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
