.class Lcom/appoxee/activities/Inbox$3;
.super Ljava/lang/Object;
.source "Inbox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/Inbox;->inboxInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/Inbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$3;->this$0:Lcom/appoxee/activities/Inbox;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$3;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v0, v0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$3;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v0, v0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$3;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v0, v0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
