.class public Lcom/playtika/extensions/tools/ToolsSendMailFunction;
.super Ljava/lang/Object;
.source "ToolsSendMailFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v10, "TOOLS"

    .line 17
    if-eqz p2, :cond_0

    array-length v6, p2

    if-ge v6, v7, :cond_1

    .line 19
    :cond_0
    const-string v6, "TOOLS"

    const-string v6, "Email text is requested!"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 53
    :goto_0
    return-object v6

    .line 25
    :cond_1
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "text":Ljava/lang/String;
    const/4 v3, 0x0

    .line 27
    .local v3, "recipient":Ljava/lang/String;
    const/4 v4, 0x0

    .line 29
    .local v4, "subject":Ljava/lang/String;
    array-length v6, p2

    if-lt v6, v8, :cond_2

    const/4 v6, 0x1

    aget-object v6, p2, v6

    if-eqz v6, :cond_2

    .line 30
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 31
    :cond_2
    array-length v6, p2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    const/4 v6, 0x2

    aget-object v6, p2, v6

    if-eqz v6, :cond_3

    .line 32
    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 34
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    if-eqz v3, :cond_4

    .line 37
    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_4
    if-eqz v4, :cond_5

    .line 39
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_5
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :try_start_1
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "Send mail..."

    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "recipient":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    move-object v6, v9

    .line 53
    goto :goto_0

    .line 44
    .restart local v2    # "i":Landroid/content/Intent;
    .restart local v3    # "recipient":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 45
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "There are no email clients installed."

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 48
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "recipient":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "TOOLS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
