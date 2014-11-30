.class Lcom/redbox/android/view/MovieTitleView$1;
.super Ljava/lang/Object;
.source "MovieTitleView.java"

# interfaces
.implements Lcom/redbox/android/http/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/view/MovieTitleView;->setMovieObject(Lcom/redbox/android/model/Movie;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/view/MovieTitleView;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$img:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/MovieTitleView;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/MovieTitleView$1;->this$0:Lcom/redbox/android/view/MovieTitleView;

    iput-object p2, p0, Lcom/redbox/android/view/MovieTitleView$1;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/redbox/android/view/MovieTitleView$1;->val$f:Ljava/io/File;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/view/MovieTitleView$1;)Lcom/redbox/android/view/MovieTitleView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/redbox/android/view/MovieTitleView$1;->this$0:Lcom/redbox/android/view/MovieTitleView;

    return-object v0
.end method


# virtual methods
.method public done(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/redbox/android/view/MovieTitleView$1;->this$0:Lcom/redbox/android/view/MovieTitleView;

    iget-object v0, v0, Lcom/redbox/android/view/MovieTitleView;->movie:Lcom/redbox/android/model/Movie;

    invoke-virtual {v0}, Lcom/redbox/android/model/Movie;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 67
    invoke-static {}, Lcom/redbox/android/utils/RBHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/redbox/android/view/MovieTitleView$1$1;

    iget-object v2, p0, Lcom/redbox/android/view/MovieTitleView$1;->val$img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/redbox/android/view/MovieTitleView$1;->val$f:Ljava/io/File;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/redbox/android/view/MovieTitleView$1$1;-><init>(Lcom/redbox/android/view/MovieTitleView$1;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_0
    return-void
.end method
