.class Lcom/fusepowered/m2/m2l/MraidDisplayController$1;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->checkViewable()Z

    move-result v0

    .line 138
    .local v0, "currentViewable":Z
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    # getter for: Lcom/fusepowered/m2/m2l/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$0(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-static {v1, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$1(Lcom/fusepowered/m2/m2l/MraidDisplayController;Z)V

    .line 140
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    # getter for: Lcom/fusepowered/m2/m2l/MraidDisplayController;->mIsViewable:Z
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$0(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Z

    move-result v2

    invoke-static {v2}, Lcom/fusepowered/m2/m2l/MraidViewableProperty;->createWithViewable(Z)Lcom/fusepowered/m2/m2l/MraidViewableProperty;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    # getter for: Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$2(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method
