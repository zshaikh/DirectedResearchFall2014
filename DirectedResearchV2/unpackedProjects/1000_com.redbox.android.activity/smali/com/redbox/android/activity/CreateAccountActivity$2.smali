.class Lcom/redbox/android/activity/CreateAccountActivity$2;
.super Lcom/redbox/android/http/MobileInitCallHandler;
.source "CreateAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$2;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    .line 84
    invoke-direct {p0}, Lcom/redbox/android/http/MobileInitCallHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public callFinished()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/redbox/android/http/MobileInitCallHandler;->callFinished()V

    .line 88
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$2;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/CreateAccountActivity;->getCaptcha()V

    .line 89
    return-void
.end method
