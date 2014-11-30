.class Lcom/redbox/android/activity/MovieDetailActivity$8;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity;->updateView(Lcom/redbox/android/model/MovieDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/MovieDetailActivity;

.field private final synthetic val$imageFile:Ljava/io/File;

.field private final synthetic val$img:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iput-object p2, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->val$imageFile:Ljava/io/File;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MovieDetailActivity$8;)Lcom/redbox/android/activity/MovieDetailActivity;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    return-object v0
.end method


# virtual methods
.method public done(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    if-ne v0, p2, :cond_0

    .line 475
    invoke-static {}, Lcom/redbox/android/utils/RBHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/redbox/android/activity/MovieDetailActivity$8$1;

    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->val$img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$8;->val$imageFile:Ljava/io/File;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/redbox/android/activity/MovieDetailActivity$8$1;-><init>(Lcom/redbox/android/activity/MovieDetailActivity$8;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_0
    return-void
.end method
