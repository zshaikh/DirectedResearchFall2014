.class Lcom/example/calender1/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/MainActivity;->setListenerToShowFutureAgenda()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/MainActivity$1;->this$0:Lcom/example/calender1/MainActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 76
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/example/calender1/AgendaFutureActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v4, i:Landroid/content/Intent;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-d-yyyy"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 82
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, currnetDate:Ljava/lang/String;
    const-string v5, "selectedDate"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v5, p0, Lcom/example/calender1/MainActivity$1;->this$0:Lcom/example/calender1/MainActivity;

    invoke-virtual {v5, v4}, Lcom/example/calender1/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0           #currnetDate:Ljava/lang/String;
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v4           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, ex:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/example/calender1/MainActivity$1;->this$0:Lcom/example/calender1/MainActivity;

    invoke-virtual {v5}, Lcom/example/calender1/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    const/4 v7, 0x1

    .line 90
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
