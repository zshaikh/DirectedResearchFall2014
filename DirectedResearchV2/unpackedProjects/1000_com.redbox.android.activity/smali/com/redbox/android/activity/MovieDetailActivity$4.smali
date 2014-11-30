.class Lcom/redbox/android/activity/MovieDetailActivity$4;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/MovieDetailActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$4;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MovieDetailActivity$4;)Lcom/redbox/android/activity/MovieDetailActivity;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$4;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$4;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/MovieDetailActivity$4$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/MovieDetailActivity$4$1;-><init>(Lcom/redbox/android/activity/MovieDetailActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    if-eqz p2, :cond_0

    .line 228
    const-string v0, "Kiosk Selected**"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager;->selectKiosk()V

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "Kiosk deselected**"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager;->deSelectKiosk()V

    goto :goto_0
.end method
