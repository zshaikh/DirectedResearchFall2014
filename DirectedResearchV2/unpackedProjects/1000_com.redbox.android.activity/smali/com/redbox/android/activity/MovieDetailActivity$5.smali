.class Lcom/redbox/android/activity/MovieDetailActivity$5;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$5;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 251
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/ConnectionManager;->shutDown()V

    .line 252
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$5;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/MovieDetailActivity;->finish()V

    .line 253
    return-void
.end method
