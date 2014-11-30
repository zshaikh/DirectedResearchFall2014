.class Lcom/redbox/android/activity/LandingActivity$1$1;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity$1;->kisokSelectionStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/LandingActivity$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$1$1;->this$1:Lcom/redbox/android/activity/LandingActivity$1;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$1$1;->this$1:Lcom/redbox/android/activity/LandingActivity$1;

    # getter for: Lcom/redbox/android/activity/LandingActivity$1;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$1;->access$0(Lcom/redbox/android/activity/LandingActivity$1;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    # invokes: Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity;->access$0(Lcom/redbox/android/activity/LandingActivity;)V

    .line 441
    return-void
.end method
