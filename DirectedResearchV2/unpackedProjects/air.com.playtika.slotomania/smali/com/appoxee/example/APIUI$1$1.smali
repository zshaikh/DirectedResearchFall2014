.class Lcom/appoxee/example/APIUI$1$1;
.super Landroid/os/AsyncTask;
.source "APIUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/example/APIUI$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/appoxee/example/APIUI$1;


# direct methods
.method constructor <init>(Lcom/appoxee/example/APIUI$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/example/APIUI$1$1;->this$1:Lcom/appoxee/example/APIUI$1;

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/example/APIUI$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v8, "Got alias from device = "

    .line 33
    const-string v0, "12345"

    .line 35
    .local v0, "alias":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting alias to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Lcom/appoxee/Appoxee;->setDeviceAlias(Ljava/lang/String;)Z

    move-result v4

    .line 37
    .local v4, "result":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Result is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/appoxee/Appoxee;->getDeviceAlias()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "got":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got alias from device = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 43
    .local v5, "same":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Are they the same ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/appoxee/Appoxee;->removeDeviceAlias()Z

    move-result v3

    .line 46
    .local v3, "remove":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remove properly ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/appoxee/Appoxee;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "got2":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got alias from device = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 51
    const/4 v6, 0x0

    return-object v6
.end method
