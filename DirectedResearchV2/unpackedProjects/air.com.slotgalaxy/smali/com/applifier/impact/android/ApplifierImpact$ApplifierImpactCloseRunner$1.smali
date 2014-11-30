.class Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    .line 779
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;->this$1:Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 782
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 783
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;

    invoke-direct {v1, p0}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1$1;-><init>(Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactCloseRunner$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 809
    :cond_0
    return-void
.end method
