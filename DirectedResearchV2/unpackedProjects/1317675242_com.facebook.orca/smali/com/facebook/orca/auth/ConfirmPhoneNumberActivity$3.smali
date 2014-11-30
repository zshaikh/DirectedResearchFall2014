.class Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$3;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ConfirmPhoneNumberActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$3;->a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$3;->a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->b(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 91
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$3;->a:Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->c(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    .line 86
    return-void
.end method
