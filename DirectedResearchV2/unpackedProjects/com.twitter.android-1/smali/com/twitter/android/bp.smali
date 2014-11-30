.class final Lcom/twitter/android/bp;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/twitter/android/gm;

    iget-object v0, p0, Lcom/twitter/android/bp;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {v1, v0}, Lcom/twitter/android/gm;-><init>(Lcom/twitter/android/PostActivity;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/gm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
