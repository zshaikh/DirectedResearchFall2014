.class Lcom/applifier/impact/android/ApplifierImpact$3;
.super Ljava/util/TimerTask;
.source "ApplifierImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/ApplifierImpact;->playVideo(J)V
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
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact$3;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    .line 678
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 681
    const-string v1, "Delayed video start"

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;

    iget-object v1, p0, Lcom/applifier/impact/android/ApplifierImpact$3;->this$0:Lcom/applifier/impact/android/ApplifierImpact;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;-><init>(Lcom/applifier/impact/android/ApplifierImpact;Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;)V

    .line 683
    .local v0, "playVideoRunner":Lcom/applifier/impact/android/ApplifierImpact$ApplifierImpactPlayVideoRunner;
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 684
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    :cond_0
    return-void
.end method