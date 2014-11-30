.class Lcom/sgn/googleservices/GPServicesActivity$1;
.super Ljava/lang/Object;
.source "GPServicesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sgn/googleservices/GPServicesActivity;->showErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sgn/googleservices/GPServicesActivity;


# direct methods
.method constructor <init>(Lcom/sgn/googleservices/GPServicesActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sgn/googleservices/GPServicesActivity$1;->this$0:Lcom/sgn/googleservices/GPServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity$1;->this$0:Lcom/sgn/googleservices/GPServicesActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z
    invoke-static {v0, v1}, Lcom/sgn/googleservices/GPServicesActivity;->access$002(Lcom/sgn/googleservices/GPServicesActivity;Z)Z

    .line 166
    return-void
.end method
