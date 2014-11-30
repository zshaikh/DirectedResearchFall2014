.class final Lcom/mobileapptracker/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/MobileAppTracker;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mobileapptracker/MobileAppTracker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mobileapptracker/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobileapptracker/d;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobileapptracker/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MobileAppTracker"

    const-string v1, "Could not get user agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
