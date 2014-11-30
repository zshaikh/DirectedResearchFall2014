.class Lcom/redbox/android/activity/MovieDetailActivity$6;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity;->modifyReserveFindButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/MovieDetailActivity;

.field private final synthetic val$btnRentFind:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$6;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iput-object p2, p0, Lcom/redbox/android/activity/MovieDetailActivity$6;->val$btnRentFind:Landroid/widget/ImageButton;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$6;->val$btnRentFind:Landroid/widget/ImageButton;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 269
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity$6;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget v1, v1, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v0, v1}, Lcom/redbox/android/model/SelectedKioskManager;->movieExistsInSelectedKiosk(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$6;->val$btnRentFind:Landroid/widget/ImageButton;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 283
    :cond_0
    return-void
.end method
