.class Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "openAnimated"

    .line 786
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->mainview:Lcom/applifier/impact/android/view/ApplifierImpactMainView;

    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v1

    iget-object v1, v1, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->closeImpact(Lorg/json/JSONObject;)V

    .line 789
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 790
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 793
    :cond_1
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 794
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v1, "openAnimated"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v1, "openAnimated"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    :cond_2
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 797
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 801
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    .line 802
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v0

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/applifier/impact/android/ApplifierImpact;->access$0(Lcom/applifier/impact/android/ApplifierImpact;Z)V

    .line 804
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v0

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v0

    # getter for: Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact;->access$1(Lcom/applifier/impact/android/ApplifierImpact;)Lcom/applifier/impact/android/IApplifierImpactListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 805
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v0

    # getter for: Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/applifier/impact/android/ApplifierImpact;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/applifier/impact/android/ApplifierImpact;

    move-result-object v0

    # getter for: Lcom/applifier/impact/android/ApplifierImpact;->_impactListener:Lcom/applifier/impact/android/IApplifierImpactListener;
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpact;->access$1(Lcom/applifier/impact/android/ApplifierImpact;)Lcom/applifier/impact/android/IApplifierImpactListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onImpactClose()V

    .line 806
    :cond_4
    return-void
.end method
