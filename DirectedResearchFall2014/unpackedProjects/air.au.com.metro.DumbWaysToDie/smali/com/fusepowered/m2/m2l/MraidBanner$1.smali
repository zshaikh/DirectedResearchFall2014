.class Lcom/fusepowered/m2/m2l/MraidBanner$1;
.super Ljava/lang/Object;
.source "MraidBanner.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MraidView$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidBanner;->initMraidListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidBanner$1;->this$0:Lcom/fusepowered/m2/m2l/MraidBanner;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;
    .param p2, "newViewState"    # Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner$1;->this$0:Lcom/fusepowered/m2/m2l/MraidBanner;

    # invokes: Lcom/fusepowered/m2/m2l/MraidBanner;->onClose()V
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidBanner;->access$3(Lcom/fusepowered/m2/m2l/MraidBanner;)V

    .line 113
    return-void
.end method

.method public onExpand(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner$1;->this$0:Lcom/fusepowered/m2/m2l/MraidBanner;

    # invokes: Lcom/fusepowered/m2/m2l/MraidBanner;->onExpand()V
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidBanner;->access$2(Lcom/fusepowered/m2/m2l/MraidBanner;)V

    .line 110
    return-void
.end method

.method public onFailure(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner$1;->this$0:Lcom/fusepowered/m2/m2l/MraidBanner;

    # invokes: Lcom/fusepowered/m2/m2l/MraidBanner;->onFail()V
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidBanner;->access$1(Lcom/fusepowered/m2/m2l/MraidBanner;)V

    .line 107
    return-void
.end method

.method public onReady(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner$1;->this$0:Lcom/fusepowered/m2/m2l/MraidBanner;

    # invokes: Lcom/fusepowered/m2/m2l/MraidBanner;->onReady()V
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidBanner;->access$0(Lcom/fusepowered/m2/m2l/MraidBanner;)V

    .line 104
    return-void
.end method
