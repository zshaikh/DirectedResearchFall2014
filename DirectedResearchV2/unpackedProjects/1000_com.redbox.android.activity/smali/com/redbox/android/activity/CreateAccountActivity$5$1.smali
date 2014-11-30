.class Lcom/redbox/android/activity/CreateAccountActivity$5$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity$5;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/CreateAccountActivity$5;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity$5;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$5$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$5;

    iput-object p2, p0, Lcom/redbox/android/activity/CreateAccountActivity$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$5;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$5;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$5;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->captchaImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$5;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$5;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$5;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$5;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$5;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$5;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->dismissDialog(I)V

    .line 436
    :cond_0
    return-void
.end method
