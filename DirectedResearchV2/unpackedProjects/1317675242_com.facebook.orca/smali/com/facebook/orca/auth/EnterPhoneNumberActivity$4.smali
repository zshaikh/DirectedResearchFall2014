.class Lcom/facebook/orca/auth/EnterPhoneNumberActivity$4;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "EnterPhoneNumberActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$4;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$4;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 143
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$4;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->c(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V

    .line 138
    return-void
.end method
