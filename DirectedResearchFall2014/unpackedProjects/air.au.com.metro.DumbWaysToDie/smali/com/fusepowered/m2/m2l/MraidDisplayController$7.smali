.class Lcom/fusepowered/m2/m2l/MraidDisplayController$7;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V
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
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$7;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$7;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->close()V

    .line 745
    return-void
.end method
