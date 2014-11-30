.class Lcom/appoxee/activities/Inbox$7;
.super Ljava/lang/Object;
.source "Inbox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/Inbox;->setFeedbackButton(Landroid/widget/RelativeLayout;)V
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
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$7;->this$0:Lcom/appoxee/activities/Inbox;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$7;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v0}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pressed"

    invoke-static {v1}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$7;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v0}, Lcom/appoxee/activities/Inbox;->openFeedback()V

    .line 296
    return-void
.end method
