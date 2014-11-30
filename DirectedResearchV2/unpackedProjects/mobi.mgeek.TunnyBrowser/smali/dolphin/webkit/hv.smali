.class Ldolphin/webkit/hv;
.super Ldolphin/util/j;
.source "WebStorageClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/WebStorageClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebStorageClassic;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebStorage$Origin;

    .line 109
    invoke-virtual {v0}, Ldolphin/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ldolphin/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ldolphin/webkit/WebStorageClassic;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebStorage$Origin;

    .line 115
    invoke-virtual {v0}, Ldolphin/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/WebStorageClassic;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->f()V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v0}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;)V

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v2}, Ldolphin/webkit/WebStorageClassic;->b(Ldolphin/webkit/WebStorageClassic;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v3, "callback"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "origins"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    const/4 v1, 0x0

    invoke-static {v5, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;Landroid/os/Message;)V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v0}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;)V

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 135
    const-string v1, "origin"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    const-string v2, "callback"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 137
    iget-object v2, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v2}, Ldolphin/webkit/WebStorageClassic;->b(Ldolphin/webkit/WebStorageClassic;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/WebStorage$Origin;

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v3, "callback"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Ldolphin/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v0

    .line 142
    const-string v3, "usage"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    const/4 v1, 0x1

    invoke-static {v5, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 148
    :pswitch_5
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v0}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;)V

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 150
    const-string v1, "origin"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    const-string v2, "callback"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ValueCallback;

    .line 152
    iget-object v2, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v2}, Ldolphin/webkit/WebStorageClassic;->b(Ldolphin/webkit/WebStorageClassic;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/WebStorage$Origin;

    .line 153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v3, "callback"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v1}, Ldolphin/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v0

    .line 157
    const-string v3, "quota"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    const/4 v1, 0x2

    invoke-static {v5, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 163
    :pswitch_6
    iget-object v0, p0, Ldolphin/webkit/hv;->a:Ldolphin/webkit/WebStorageClassic;

    invoke-static {v0}, Ldolphin/webkit/WebStorageClassic;->a(Ldolphin/webkit/WebStorageClassic;)V

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
