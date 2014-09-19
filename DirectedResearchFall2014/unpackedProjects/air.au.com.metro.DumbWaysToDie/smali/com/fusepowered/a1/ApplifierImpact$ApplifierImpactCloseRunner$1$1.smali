.class Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "openAnimated"

    .line 783
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v1}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->closeImpact(Lorg/json/JSONObject;)V

    .line 784
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 786
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v1, "openAnimated"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v1, "openAnimated"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 791
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    .line 792
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v0

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/fusepowered/a1/ApplifierImpact;

    move-result-object v0

    #setter for: Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z
    invoke-static {v0, v2}, Lcom/fusepowered/a1/ApplifierImpact;->access$0(Lcom/fusepowered/a1/ApplifierImpact;Z)V

    .line 794
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v0

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/fusepowered/a1/ApplifierImpact;

    move-result-object v0

    #getter for: Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact;->access$1(Lcom/fusepowered/a1/ApplifierImpact;)Lcom/fusepowered/a1/IApplifierImpactListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;->this$2:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->access$0(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    move-result-object v0

    #getter for: Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->this$0:Lcom/fusepowered/a1/ApplifierImpact;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->access$1(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)Lcom/fusepowered/a1/ApplifierImpact;

    move-result-object v0

    #getter for: Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact;->access$1(Lcom/fusepowered/a1/ApplifierImpact;)Lcom/fusepowered/a1/IApplifierImpactListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/a1/IApplifierImpactListener;->onImpactClose()V

    .line 796
    :cond_2
    return-void
.end method
