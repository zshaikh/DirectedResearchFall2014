.class Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/ApplifierImpact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactCloseRunner"
.end annotation


# instance fields
.field _data:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/fusepowered/a1/ApplifierImpact;


# direct methods
.method private constructor <init>(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 1
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->_data:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/a1/ApplifierImpact;Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;-><init>(Lcom/fusepowered/a1/ApplifierImpact;)V

    return-void
.end method

.method static synthetic access$1(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/fusepowered/a1/ApplifierImpact;
    .locals 1
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 760
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.fusepowered.a1.A1InterstitialActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 762
    .local v1, dataOk:Ljava/lang/Boolean;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 765
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "action"

    const-string v5, "close"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dataOk: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    iput-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->_data:Lorg/json/JSONObject;

    .line 775
    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v4, v4, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "none"

    invoke-virtual {v4, v5, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 776
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 777
    .local v3, testTimer:Ljava/util/Timer;
    new-instance v4, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;-><init>(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)V

    .line 799
    const-wide/16 v5, 0xfa

    .line 777
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 802
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #dataOk:Ljava/lang/Boolean;
    .end local v3           #testTimer:Ljava/util/Timer;
    :cond_0
    return-void

    .line 767
    .restart local v0       #data:Lorg/json/JSONObject;
    .restart local v1       #dataOk:Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 768
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method
