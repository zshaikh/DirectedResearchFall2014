.class public Lcom/appoxee/AddTagToDevice$AddTagsAsync;
.super Landroid/os/AsyncTask;
.source "AddTagToDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/AddTagToDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddTagsAsync"
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
.field final synthetic this$0:Lcom/appoxee/AddTagToDevice;


# direct methods
.method public constructor <init>(Lcom/appoxee/AddTagToDevice;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    invoke-static {}, Lcom/appoxee/Appoxee;->getTagList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/appoxee/AddTagToDevice;->allTags:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got tags from device = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    iget-object v1, v1, Lcom/appoxee/AddTagToDevice;->allTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    invoke-static {}, Lcom/appoxee/Appoxee;->getDeviceTags()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/appoxee/AddTagToDevice;->mDeviceTagsList:Ljava/util/ArrayList;

    .line 54
    iget-object v0, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    iget-object v0, v0, Lcom/appoxee/AddTagToDevice;->allTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    iget-object v0, v0, Lcom/appoxee/AddTagToDevice;->mDeviceTagsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    iget-object v1, v1, Lcom/appoxee/AddTagToDevice;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->this$0:Lcom/appoxee/AddTagToDevice;

    iget-object v0, v0, Lcom/appoxee/AddTagToDevice;->mDeviceTagsList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/appoxee/Appoxee;->addTagsToDevice(Ljava/util/ArrayList;)Z

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 62
    return-void
.end method
