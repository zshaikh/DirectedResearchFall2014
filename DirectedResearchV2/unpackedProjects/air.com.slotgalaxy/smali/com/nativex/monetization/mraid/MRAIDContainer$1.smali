.class Lcom/nativex/monetization/mraid/MRAIDContainer$1;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->close()V

    .line 138
    return-void
.end method