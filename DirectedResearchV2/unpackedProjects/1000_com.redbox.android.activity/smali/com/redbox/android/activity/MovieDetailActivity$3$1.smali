.class Lcom/redbox/android/activity/MovieDetailActivity$3$1;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity$3;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/MovieDetailActivity$3;

.field private final synthetic val$md:Lcom/redbox/android/model/MovieDetail;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity$3;Lcom/redbox/android/model/MovieDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$3$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$3;

    iput-object p2, p0, Lcom/redbox/android/activity/MovieDetailActivity$3$1;->val$md:Lcom/redbox/android/model/MovieDetail;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$3;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$3;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$3;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity$3$1;->val$md:Lcom/redbox/android/model/MovieDetail;

    iput-object v1, v0, Lcom/redbox/android/activity/MovieDetailActivity;->currentMovie:Lcom/redbox/android/model/MovieDetail;

    .line 171
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$3;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$3;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$3;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity$3$1;->val$md:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->updateView(Lcom/redbox/android/model/MovieDetail;)V

    .line 172
    return-void
.end method
