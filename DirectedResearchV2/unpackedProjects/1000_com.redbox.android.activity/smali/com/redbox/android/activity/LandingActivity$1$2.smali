.class Lcom/redbox/android/activity/LandingActivity$1$2;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity$1;->selectedKioskConnectionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/LandingActivity$1;

.field private final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$1$2;->this$1:Lcom/redbox/android/activity/LandingActivity$1;

    iput p2, p0, Lcom/redbox/android/activity/LandingActivity$1$2;->val$errorCode:I

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$1$2;->this$1:Lcom/redbox/android/activity/LandingActivity$1;

    # getter for: Lcom/redbox/android/activity/LandingActivity$1;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$1;->access$0(Lcom/redbox/android/activity/LandingActivity$1;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget v1, p0, Lcom/redbox/android/activity/LandingActivity$1$2;->val$errorCode:I

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->showConnectionError(I)V

    .line 460
    return-void
.end method
