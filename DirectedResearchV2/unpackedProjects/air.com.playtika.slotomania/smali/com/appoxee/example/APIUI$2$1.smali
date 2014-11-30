.class Lcom/appoxee/example/APIUI$2$1;
.super Landroid/os/AsyncTask;
.source "APIUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/example/APIUI$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lcom/appoxee/example/APIUI$2;


# direct methods
.method constructor <init>(Lcom/appoxee/example/APIUI$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/example/APIUI$2$1;->this$1:Lcom/appoxee/example/APIUI$2;

    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/example/APIUI$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v10, "Adding "

    .line 66
    invoke-static {}, Lcom/appoxee/Appoxee;->getTagList()Ljava/util/ArrayList;

    move-result-object v7

    .line 67
    .local v7, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got tags from device = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 69
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 70
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 72
    .local v6, "tag":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "devTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 77
    invoke-static {v2}, Lcom/appoxee/Appoxee;->addTagsToDevice(Ljava/util/ArrayList;)Z

    move-result v0

    .line 79
    .local v0, "a2d":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to device was a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/appoxee/Appoxee;->getDeviceTags()Ljava/util/ArrayList;

    move-result-object v3

    .line 89
    .local v3, "devTags2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/appoxee/Appoxee;->getDeviceTags()Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    .local v4, "devTags3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tags of device after removing them:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 94
    .end local v0    # "a2d":Z
    .end local v2    # "devTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "devTags2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "devTags3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "rand":Ljava/lang/String;
    const-string v8, "Try to add random string"

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 97
    if-nez v7, :cond_1

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v7    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v7}, Lcom/appoxee/Appoxee;->addTagsToDevice(Ljava/util/ArrayList;)Z

    move-result v1

    .line 103
    .local v1, "add":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Add suppose to return false -"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 105
    const/4 v8, 0x0

    return-object v8
.end method
