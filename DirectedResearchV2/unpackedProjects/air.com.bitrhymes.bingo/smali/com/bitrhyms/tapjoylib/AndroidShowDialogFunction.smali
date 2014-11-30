.class public Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;
.super Ljava/lang/Object;
.source "AndroidShowDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v8, 0x0

    .line 18
    const-string v5, "1.FREObject.call"

    invoke-virtual {p0, v5}, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;->debugLog(Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;

    move-object v1, v0

    .line 20
    .local v1, "adec":Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;
    const-string v5, "2.FREObject.call"

    invoke-virtual {p0, v5}, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;->debugLog(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 22
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, v1, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "3.FREObject.call"

    invoke-virtual {p0, v5}, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;->debugLog(Ljava/lang/String;)V

    .line 25
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "message":Ljava/lang/String;
    const-string v5, "4.FREObject.call"

    invoke-virtual {p0, v5}, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;->debugLog(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "OK"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 28
    const-string v5, "5.FREObject.call"

    invoke-virtual {p0, v5}, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v4    # "message":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 29
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 30
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "AIR_AndroidDialog"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v0, "AndroidShowDialogFunction"

    .line 13
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method
