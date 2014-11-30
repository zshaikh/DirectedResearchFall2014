.class Lcom/redbox/android/activity/FindRedboxActivity$1$1;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity$1;->kisokSelectionStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/FindRedboxActivity$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$1$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$1;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$1$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$1;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$1;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$1;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$1;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/activity/FindRedboxActivity;->finish()V

    .line 496
    const-string v0, "Selected Kiosk Changed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    return-void
.end method
