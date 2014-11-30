.class Lcom/dolphin/browser/message/model/k;
.super Lcom/dolphin/browser/message/model/a;
.source "Command.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/message/model/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 276
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/k;->a:Ljava/lang/String;

    .line 277
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/message/DialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const-string v1, "command_action"

    const-string v2, "Dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "command_value"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/message/model/k;->d()V

    .line 291
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
