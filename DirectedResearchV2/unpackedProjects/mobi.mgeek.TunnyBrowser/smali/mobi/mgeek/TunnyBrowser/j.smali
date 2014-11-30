.class Lmobi/mgeek/TunnyBrowser/j;
.super Landroid/os/Handler;
.source "BackupRestoreDialogHelper.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/i;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/i;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/j;->a:Lmobi/mgeek/TunnyBrowser/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
