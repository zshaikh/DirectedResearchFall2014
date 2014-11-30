.class Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$2;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$2;->this$0:Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->finish()V

    .line 93
    return-void
.end method
