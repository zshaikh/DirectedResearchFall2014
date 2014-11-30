.class Lcom/redbox/android/activity/MovieDetailActivity$1$2;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity$1;->selectedKioskConnectionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

.field private final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$2;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

    iput p2, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$2;->val$errorCode:I

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$2;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$1;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$1;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    iget v1, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$2;->val$errorCode:I

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->showConnectionError(I)V

    .line 324
    return-void
.end method
