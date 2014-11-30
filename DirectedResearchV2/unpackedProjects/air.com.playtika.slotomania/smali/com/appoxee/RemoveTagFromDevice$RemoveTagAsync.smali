.class public Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;
.super Landroid/os/AsyncTask;
.source "RemoveTagFromDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/RemoveTagFromDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveTagAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/RemoveTagFromDevice;


# direct methods
.method public constructor <init>(Lcom/appoxee/RemoveTagFromDevice;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->this$0:Lcom/appoxee/RemoveTagFromDevice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->this$0:Lcom/appoxee/RemoveTagFromDevice;

    iget-object v0, v0, Lcom/appoxee/RemoveTagFromDevice;->mRemovedTags:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->this$0:Lcom/appoxee/RemoveTagFromDevice;

    iget-object v1, v1, Lcom/appoxee/RemoveTagFromDevice;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->this$0:Lcom/appoxee/RemoveTagFromDevice;

    iget-object v0, v0, Lcom/appoxee/RemoveTagFromDevice;->mRemovedTags:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/appoxee/Appoxee;->removeTagsFromDevice(Ljava/util/ArrayList;)Z

    .line 54
    iget-object v0, p0, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->this$0:Lcom/appoxee/RemoveTagFromDevice;

    invoke-static {}, Lcom/appoxee/Appoxee;->getDeviceTags()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/appoxee/RemoveTagFromDevice;->mDeviceTagsList:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
