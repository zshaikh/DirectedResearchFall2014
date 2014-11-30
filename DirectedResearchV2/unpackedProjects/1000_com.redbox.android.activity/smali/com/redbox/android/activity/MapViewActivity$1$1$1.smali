.class Lcom/redbox/android/activity/MapViewActivity$1$1$1;
.super Ljava/lang/Object;
.source "MapViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MapViewActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbox/android/activity/MapViewActivity$1$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MapViewActivity$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MapViewActivity$1$1$1;->this$2:Lcom/redbox/android/activity/MapViewActivity$1$1;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity$1$1$1;->this$2:Lcom/redbox/android/activity/MapViewActivity$1$1;

    # getter for: Lcom/redbox/android/activity/MapViewActivity$1$1;->this$1:Lcom/redbox/android/activity/MapViewActivity$1;
    invoke-static {v0}, Lcom/redbox/android/activity/MapViewActivity$1$1;->access$0(Lcom/redbox/android/activity/MapViewActivity$1$1;)Lcom/redbox/android/activity/MapViewActivity$1;

    move-result-object v0

    # getter for: Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MapViewActivity$1;->access$0(Lcom/redbox/android/activity/MapViewActivity$1;)Lcom/redbox/android/activity/MapViewActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/activity/MapViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    return-void
.end method
