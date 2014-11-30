.class Ldolphin/webkit/ds;
.super Ldolphin/util/j;
.source "HTML5VideoViewProxy.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 820
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 860
    :goto_0
    return-void

    .line 822
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 823
    const-string v1, "dur"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 824
    const-string v2, "width"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 825
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 826
    iget-object v3, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v4, v4, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v3, v1, v2, v0, v4}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Ldolphin/webkit/HTML5VideoViewProxy;IIII)V

    goto :goto_0

    .line 831
    :sswitch_1
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Ldolphin/webkit/HTML5VideoViewProxy;I)I

    .line 832
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->b(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 835
    :sswitch_2
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->c(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 838
    :sswitch_3
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->d(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 841
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 842
    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v2, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v2, v2, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v1, v0, v2}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Ldolphin/webkit/HTML5VideoViewProxy;[BI)V

    goto :goto_0

    .line 845
    :sswitch_5
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v2, v2, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1, v2}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Ldolphin/webkit/HTML5VideoViewProxy;II)V

    goto :goto_0

    .line 848
    :sswitch_6
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->e(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 851
    :sswitch_7
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->f(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto/16 :goto_0

    .line 854
    :sswitch_8
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->g(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto/16 :goto_0

    .line 857
    :sswitch_9
    iget-object v0, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/ds;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    iget v1, v1, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->h(Ldolphin/webkit/HTML5VideoViewProxy;I)V

    goto/16 :goto_0

    .line 820
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_4
        0xcb -> :sswitch_2
        0xcc -> :sswitch_6
        0xcd -> :sswitch_7
        0xce -> :sswitch_8
        0xcf -> :sswitch_9
        0xd0 -> :sswitch_3
        0x12c -> :sswitch_5
    .end sparse-switch
.end method
