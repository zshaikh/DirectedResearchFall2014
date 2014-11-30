.class public Lcom/twitter/android/client/AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.poll.data"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.widget.button.next"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.widget.button.prev"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/e;->a(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/e;->c(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/e;->d(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
