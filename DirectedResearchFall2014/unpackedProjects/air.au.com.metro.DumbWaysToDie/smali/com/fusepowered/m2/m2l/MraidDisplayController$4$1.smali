.class Lcom/fusepowered/m2/m2l/MraidDisplayController$4$1;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/m2/m2l/MraidDisplayController$4;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4$1;->this$1:Lcom/fusepowered/m2/m2l/MraidDisplayController$4;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "Error downloading and saving image file."

    .line 413
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4$1;->this$1:Lcom/fusepowered/m2/m2l/MraidDisplayController$4;

    #getter for: Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->access$0(Lcom/fusepowered/m2/m2l/MraidDisplayController$4;)Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    const-string v1, "Image failed to download."

    #calls: Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$7(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4$1;->this$1:Lcom/fusepowered/m2/m2l/MraidDisplayController$4;

    #getter for: Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->access$0(Lcom/fusepowered/m2/m2l/MraidDisplayController$4;)Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Error downloading and saving image file."

    invoke-virtual {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 415
    const-string v0, "MoPub"

    const-string v1, "Error downloading and saving image file."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method
