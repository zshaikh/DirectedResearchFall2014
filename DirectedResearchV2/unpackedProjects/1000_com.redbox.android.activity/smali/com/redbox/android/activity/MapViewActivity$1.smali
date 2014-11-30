.class Lcom/redbox/android/activity/MapViewActivity$1;
.super Ljava/lang/Object;
.source "MapViewActivity.java"

# interfaces
.implements Lcom/redbox/android/utils/RBOverlayUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/MapViewActivity;
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
    iput-object p1, p0, Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MapViewActivity$1;)Lcom/redbox/android/activity/MapViewActivity;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    return-object v0
.end method


# virtual methods
.method public locationTimeout()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/MapViewActivity$1$2;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/MapViewActivity$1$2;-><init>(Lcom/redbox/android/activity/MapViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public locationsDisabled()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/MapViewActivity$1$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/MapViewActivity$1$1;-><init>(Lcom/redbox/android/activity/MapViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
