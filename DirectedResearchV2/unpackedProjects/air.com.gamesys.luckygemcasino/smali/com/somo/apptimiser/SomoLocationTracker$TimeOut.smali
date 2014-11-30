.class Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;
.super Ljava/lang/Object;
.source "SomoLocationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoLocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/somo/apptimiser/SomoLocationTracker;


# direct methods
.method constructor <init>(Lcom/somo/apptimiser/SomoLocationTracker;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    # getter for: Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoLocationTracker;->access$100()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    const-string v1, "Location tracker: Time out"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoLocationTracker;->stop()V

    .line 143
    return-void
.end method
