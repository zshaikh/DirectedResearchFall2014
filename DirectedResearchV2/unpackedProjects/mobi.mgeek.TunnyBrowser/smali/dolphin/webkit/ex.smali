.class Ldolphin/webkit/ex;
.super Landroid/content/BroadcastReceiver;
.source "Network.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/ev;


# direct methods
.method private constructor <init>(Ldolphin/webkit/ev;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Ldolphin/webkit/ex;->a:Ldolphin/webkit/ev;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ev;Ldolphin/webkit/ew;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Ldolphin/webkit/ex;-><init>(Ldolphin/webkit/ev;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 183
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Ldolphin/webkit/ex;->a:Ldolphin/webkit/ev;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    invoke-static {v1, v0}, Ldolphin/webkit/ev;->a(Ldolphin/webkit/ev;Z)Z

    goto :goto_0
.end method
