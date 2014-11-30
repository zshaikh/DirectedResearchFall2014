.class Lcom/redbox/android/activity/MapViewActivity$2;
.super Ljava/lang/Object;
.source "MapViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MapViewActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/MapViewActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MapViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MapViewActivity$2;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity$2;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->itemizedOverlay:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity$2;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/MapViewActivity;->mangr:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity$2;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    # getter for: Lcom/redbox/android/activity/MapViewActivity;->Latitude:Ljava/lang/String;
    invoke-static {v2}, Lcom/redbox/android/activity/MapViewActivity;->access$0(Lcom/redbox/android/activity/MapViewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/redbox/android/activity/MapViewActivity$2;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    # getter for: Lcom/redbox/android/activity/MapViewActivity;->Longitude:Ljava/lang/String;
    invoke-static {v3}, Lcom/redbox/android/activity/MapViewActivity;->access$1(Lcom/redbox/android/activity/MapViewActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/redbox/android/utils/RedBoxOverlay;->getLocation(Landroid/location/LocationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    return-void
.end method
