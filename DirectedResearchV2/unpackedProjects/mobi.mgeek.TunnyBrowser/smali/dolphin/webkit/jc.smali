.class Ldolphin/webkit/jc;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1928
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 1928
    invoke-direct {p0}, Ldolphin/webkit/jc;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1931
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    invoke-static {p1, p2}, Ldolphin/webkit/WebViewClassic;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1934
    :cond_0
    return-void
.end method
