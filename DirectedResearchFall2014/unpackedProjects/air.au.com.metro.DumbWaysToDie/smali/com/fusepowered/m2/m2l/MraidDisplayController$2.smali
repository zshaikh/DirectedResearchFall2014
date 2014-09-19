.class Lcom/fusepowered/m2/m2l/MraidDisplayController$2;
.super Lcom/fusepowered/m2/m2l/MraidView$BaseMraidListener;
.source "MraidDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V
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
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$2;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    .line 326
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidView$BaseMraidListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V
    .locals 1
    .parameter "view"
    .parameter "newViewState"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$2;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->close()V

    .line 329
    return-void
.end method
