.class Lcom/redbox/android/activity/FindRedboxActivity$1;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Lcom/redbox/android/adapter/KioskSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/FindRedboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$1;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/FindRedboxActivity$1;)Lcom/redbox/android/activity/FindRedboxActivity;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$1;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    return-object v0
.end method


# virtual methods
.method public kisokSelectionStateChanged()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$1;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$1$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$1$1;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public selectedKioskChanged()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public selectedKioskConnectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$1;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/redbox/android/activity/FindRedboxActivity$1$2;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 512
    return-void
.end method
