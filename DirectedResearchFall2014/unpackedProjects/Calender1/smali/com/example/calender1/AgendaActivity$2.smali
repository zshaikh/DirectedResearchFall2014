.class Lcom/example/calender1/AgendaActivity$2;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/AgendaActivity;->setListenerOnChangeDateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/AgendaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/AgendaActivity$2;->this$0:Lcom/example/calender1/AgendaActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/example/calender1/AgendaActivity$2;->this$0:Lcom/example/calender1/AgendaActivity;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/example/calender1/AgendaActivity;->showDialog(I)V

    .line 86
    return-void
.end method
