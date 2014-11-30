.class Ldolphin/util/m;
.super Landroid/os/Handler;
.source "PriorityLooper.java"


# instance fields
.field final synthetic a:Ldolphin/util/l;


# direct methods
.method public constructor <init>(Ldolphin/util/l;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Ldolphin/util/m;->a:Ldolphin/util/l;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " We can\'t handler message sent out of priority handler, please review your code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Ldolphin/util/m;->a:Ldolphin/util/l;

    invoke-static {v0}, Ldolphin/util/l;->a(Ldolphin/util/l;)V

    .line 56
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
