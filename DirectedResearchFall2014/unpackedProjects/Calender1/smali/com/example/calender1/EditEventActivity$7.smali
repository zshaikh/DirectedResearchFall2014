.class Lcom/example/calender1/EditEventActivity$7;
.super Ljava/lang/Object;
.source "EditEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/EditEventActivity;->addListenerOnButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/EditEventActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/EditEventActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EditEventActivity$7;->this$0:Lcom/example/calender1/EditEventActivity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$7;->this$0:Lcom/example/calender1/EditEventActivity;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/example/calender1/EditEventActivity;->showDialog(I)V

    .line 312
    return-void
.end method
