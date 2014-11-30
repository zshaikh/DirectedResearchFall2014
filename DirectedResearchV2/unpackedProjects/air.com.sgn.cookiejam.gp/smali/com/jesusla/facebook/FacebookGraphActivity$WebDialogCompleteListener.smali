.class public Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;
.super Ljava/lang/Object;
.source "FacebookGraphActivity.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/facebook/FacebookGraphActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebDialogCompleteListener"
.end annotation


# instance fields
.field private callbackHash:Ljava/lang/String;

.field final synthetic this$0:Lcom/jesusla/facebook/FacebookGraphActivity;


# direct methods
.method constructor <init>(Lcom/jesusla/facebook/FacebookGraphActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "pCallbackHash"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;->this$0:Lcom/jesusla/facebook/FacebookGraphActivity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;->callbackHash:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 29
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->getCurrentInstance()Lcom/jesusla/facebook/FacebookLib;

    move-result-object v0

    iget-object v1, p0, Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;->callbackHash:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jesusla/facebook/FacebookLib;->webDialogComplete(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 31
    # getter for: Lcom/jesusla/facebook/FacebookGraphActivity;->activity:Lcom/jesusla/facebook/FacebookGraphActivity;
    invoke-static {}, Lcom/jesusla/facebook/FacebookGraphActivity;->access$000()Lcom/jesusla/facebook/FacebookGraphActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    # getter for: Lcom/jesusla/facebook/FacebookGraphActivity;->activity:Lcom/jesusla/facebook/FacebookGraphActivity;
    invoke-static {}, Lcom/jesusla/facebook/FacebookGraphActivity;->access$000()Lcom/jesusla/facebook/FacebookGraphActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jesusla/facebook/FacebookGraphActivity;->finish()V

    .line 34
    :cond_0
    return-void
.end method
