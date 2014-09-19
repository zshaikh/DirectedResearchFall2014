.class Lcom/fusepowered/a1/ApplifierImpact$2;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/ApplifierImpact;->sendImpactReadyEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/a1/ApplifierImpact;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact$2;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    const-string v0, "Impact ready!"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$2;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    const/4 v1, 0x1

    #setter for: Lcom/fusepowered/a1/ApplifierImpact;->_impactReadySent:Z
    invoke-static {v0, v1}, Lcom/fusepowered/a1/ApplifierImpact;->access$5(Lcom/fusepowered/a1/ApplifierImpact;Z)V

    .line 659
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$2;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    #getter for: Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact;->access$1(Lcom/fusepowered/a1/ApplifierImpact;)Lcom/fusepowered/a1/IApplifierImpactListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/a1/IApplifierImpactListener;->onCampaignsAvailable()V

    .line 660
    return-void
.end method
