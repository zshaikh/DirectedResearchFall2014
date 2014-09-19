.class Lcom/example/calender1/EditEventActivity$8;
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
    iput-object p1, p0, Lcom/example/calender1/EditEventActivity$8;->this$0:Lcom/example/calender1/EditEventActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 334
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/example/calender1/CategoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$8;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v2, v1}, Lcom/example/calender1/EditEventActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$8;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v2}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    const/4 v4, 0x1

    .line 342
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
