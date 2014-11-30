.class Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    .line 777
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 780
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1$1;-><init>(Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method
