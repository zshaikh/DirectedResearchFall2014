.class Lcom/nativex/monetization/mraid/MRAIDDialog$2;
.super Ljava/lang/Object;
.source "MRAIDDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDDialog;->setDialogContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDDialog;->setDialogContent()V
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->access$000(Lcom/nativex/monetization/mraid/MRAIDDialog;)V

    .line 104
    return-void
.end method
