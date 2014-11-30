.class Lcom/redbox/android/model/SelectedKioskManager$1;
.super Lcom/redbox/android/http/KioskInventoryCallHandler;
.source "SelectedKioskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/model/SelectedKioskManager;->selectKiosk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/model/SelectedKioskManager;


# direct methods
.method constructor <init>(Lcom/redbox/android/model/SelectedKioskManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/model/SelectedKioskManager$1;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    .line 128
    invoke-direct {p0}, Lcom/redbox/android/http/KioskInventoryCallHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public callFailed(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager$1;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    # getter for: Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;
    invoke-static {v0}, Lcom/redbox/android/model/SelectedKioskManager;->access$1(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/adapter/KioskSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager$1;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    # getter for: Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;
    invoke-static {v0}, Lcom/redbox/android/model/SelectedKioskManager;->access$1(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/adapter/KioskSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/redbox/android/adapter/KioskSelectedListener;->selectedKioskConnectionError(I)V

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/redbox/android/http/KioskInventoryCallHandler;->callFailed(I)V

    .line 139
    return-void

    .line 134
    :cond_0
    const-string v0, "selectedKioskListener Null"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callFinished()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/redbox/android/http/KioskInventoryCallHandler;->callFinished()V

    .line 144
    const-string v0, "Calling selectedKioskListener after getting inventory from server"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager$1;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    # getter for: Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;
    invoke-static {v0}, Lcom/redbox/android/model/SelectedKioskManager;->access$1(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/adapter/KioskSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager$1;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    # getter for: Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;
    invoke-static {v0}, Lcom/redbox/android/model/SelectedKioskManager;->access$1(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/adapter/KioskSelectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/redbox/android/adapter/KioskSelectedListener;->kisokSelectionStateChanged()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "selectedKioskListener Null"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
