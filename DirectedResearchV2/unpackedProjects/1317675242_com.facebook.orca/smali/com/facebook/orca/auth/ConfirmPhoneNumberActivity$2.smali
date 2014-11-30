.class Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ConfirmPhoneNumberActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$2;->a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$2;->a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->a(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 76
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$2;->a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->b(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    .line 71
    return-void
.end method
