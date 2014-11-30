.class Ldolphin/webkit/hm;
.super Ldolphin/util/j;
.source "WebIconDatabaseClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/hl;


# direct methods
.method constructor <init>(Ldolphin/webkit/hl;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Ldolphin/webkit/hm;->a:Ldolphin/webkit/hl;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/WebIconDatabaseClassic;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {}, Ldolphin/webkit/WebIconDatabaseClassic;->c()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-static {}, Ldolphin/webkit/WebIconDatabaseClassic;->d()V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebIconDatabase$IconListener;

    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v2, p0, Ldolphin/webkit/hm;->a:Ldolphin/webkit/hl;

    invoke-static {v2, v1, v0}, Ldolphin/webkit/hl;->a(Ldolphin/webkit/hl;Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V

    goto :goto_0

    .line 112
    :pswitch_4
    iget-object v0, p0, Ldolphin/webkit/hm;->a:Ldolphin/webkit/hl;

    invoke-static {v0, p1}, Ldolphin/webkit/hl;->a(Ldolphin/webkit/hl;Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/WebIconDatabaseClassic;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/WebIconDatabaseClassic;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
