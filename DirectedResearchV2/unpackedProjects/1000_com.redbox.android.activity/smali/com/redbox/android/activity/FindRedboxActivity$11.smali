.class Lcom/redbox/android/activity/FindRedboxActivity$11;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->getLocation()V
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
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$11;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$11;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 732
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$11;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$11;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const v2, 0x7f050036

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 733
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$11;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 734
    return-void
.end method
