.class Lcom/applifier/impact/android/ApplifierImpact$4;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->createPauseScreenTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/ApplifierImpact;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/ApplifierImpact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$4;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 732
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 735
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 736
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 737
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v1, v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v2, "hideSpinner"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 739
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$4;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    # invokes: Lcom/applifier/impact/android/ApplifierImpact;->close()V
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$6(Lcom/applifier/impact/android/ApplifierImpact;)V

    .line 740
    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$4;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    # invokes: Lcom/applifier/impact/android/ApplifierImpact;->cancelPauseScreenTimer()V
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact;->access$7(Lcom/applifier/impact/android/ApplifierImpact;)V

    .line 743
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
